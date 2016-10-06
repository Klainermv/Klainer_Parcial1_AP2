using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;


namespace BLL
{
    public class Materiales : ClaseMaestra
    {
        public int MaterialId { get; set; }
        public string Razon { get; set; }
        public string Cantidad { get; set; }

        public List<MaterialesTelas> Telas { get; set; }

        public Materiales()
        {
            this.MaterialId = 0;
            this.Razon = "";
            this.Cantidad = "";
            Telas = new List<MaterialesTelas>();
        }

        public override bool Insertar()
        {
            int retorno = 0;
            ConexionDb conexion = new ConexionDb();
            MaterialesTelas pt = new MaterialesTelas();

            object identity;
            try
            {
                identity = conexion.ObtenerValor("Insert Into Material(MaterialId,Razon,Sexo,Cantidad) Values('" + this.MaterialId + "','" + this.Razon + "','" + this.Cantidad + "') Select @@Identity");
                int.TryParse(identity.ToString(), out retorno);
                this.MaterialId = retorno;

                foreach (MaterialesTelas item in this.Telas)
                {
                    conexion.Ejecutar(string.Format("Insert into MaterialesTelas(MaterialId,TipoTela,Tela) Values({0},{1},'{2}')", retorno, (string)item.TipoTela, item.Tela));
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno > 0;
        }

        public override bool Editar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();

            try
            {
                retorno = conexion.Ejecutar(string.Format("Update Material set Razon = '{0}' where MaterialId=" + this.Razon, this.MaterialId));
                if (retorno)
                {
                    foreach (MaterialesTelas numero in this.Telas)
                    {
                        retorno = conexion.Ejecutar("Delete from MaterialesTelas Where MaterialId=" + this.MaterialId.ToString());
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno;
        }


        public override bool Eliminar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            try
            {
                retorno = conexion.Ejecutar(string.Format("delete from Material where MaterialId =" + this.MaterialId));

                if (retorno)
                    conexion.Ejecutar("Delete from MaterialesTelas where MaterialId=" + this.MaterialId.ToString());
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            try
            {

                dt = conexion.ObtenerDatos(String.Format("Select *from Materiales Where MaterialId =" + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.MaterialId = (int)dt.Rows[0]["MaterialId"];
                    this.Razon = dt.Rows[0]["Razon"].ToString();
                    this.Cantidad = dt.Rows[0]["Cantidad"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenFinal = "";
            ConexionDb conexion = new ConexionDb();

            if (!Orden.Equals(""))
                ordenFinal = " Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Materiales Where " + Condicion + " " + ordenFinal);
        }
    }
}

