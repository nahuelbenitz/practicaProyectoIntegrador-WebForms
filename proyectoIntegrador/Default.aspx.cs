using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoIntegrador
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Pokemon> ListadoPokemons { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            ListadoPokemons = negocio.listarConSP();
        }
    }
}