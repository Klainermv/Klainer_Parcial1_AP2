using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    public class MaterialesTelas
    {
        public string Tela { get; set; }
        public string TipoTela { get; set; }
   
        public string Tipo
        {
            get { return this.TipoTela.ToString(); }
        }

        public MaterialesTelas()
        {
            this.TipoTela = TipoTela;
            this.TipoTela = TipoTela;
            this.Tela = "";
        }

        public MaterialesTelas(TiposTelas tipo, string tela)
        {
            this.TipoTela = tela; 
            this.Tela = tela;
        }
    }
}