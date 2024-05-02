<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="proyectoIntegrador.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola, anda al listado</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% foreach (var pokemon in ListadoPokemons)
            {
        %>
            <div class="col">
                <div class="card">
                    <img src="<%: pokemon.UrlImagen %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%: pokemon.Nombre %></h5>
                        <p class="card-text"><%: pokemon.Descripcion %></p>
                    </div>
                    <a href="DetallePokemon.aspx?id=<%: pokemon.Id %>">Ver detalle</a>
                </div>
            </div>
        <%  } %>
    </div>

</asp:Content>
