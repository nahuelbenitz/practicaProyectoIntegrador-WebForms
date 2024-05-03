<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="ListadoPokemons.aspx.cs" Inherits="proyectoIntegrador.ListadoPokemons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col">
            <h1>Listado de Pokemons</h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <%-- filtro rapido --%>
            <div class="row">
                <div class="col-6">
                    <div class="mb-3">
                        <label for="txtFiltro" class="form-label">Filtrar</label>
                        <asp:TextBox runat="server" ID="txtFiltro" AutoPostBack="true" CssClass="form-control" OnTextChanged="txtFiltro_TextChanged" />
                    </div>
                </div>

                <%-- filtro avanzado --%>
                <div class="col-6" style="display: flex; flex-direction: column; justify-content: flex-end;">
                    <div class="mb-3">
                        <asp:CheckBox Text="Filtro Avanzado" CssClass=""
                            ID="chkAvanzado" AutoPostBack="true"
                            OnCheckedChanged="chkAvanzado_CheckedChanged" runat="server" />
                    </div>
                </div>

                <%if (chkAvanzado.Checked)
                    {  %>
                <div class="row">
                    <div class="col-3">
                        <div class="mb-3">
                            <asp:Label Text="Campo" runat="server" />
                            <asp:DropDownList runat="server" ID="ddlCampo" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged">
                                <asp:ListItem Text="Nombre" />
                                <asp:ListItem Text="Tipo" />
                                <asp:ListItem Text="Número" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="mb-3">
                            <asp:Label Text="Criterio" runat="server" />
                            <asp:DropDownList runat="server" ID="ddlCriterio" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="mb-3">
                            <asp:Label Text="Filtro" runat="server" />
                            <asp:TextBox runat="server" ID="txtFiltroAvanzado" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="mb-3">
                            <asp:Label Text="Estado" runat="server" />
                            <asp:DropDownList runat="server" ID="ddlEstado" CssClass="form-select">
                                <asp:ListItem Text="Todos" />
                                <asp:ListItem Text="Activo" />
                                <asp:ListItem Text="Inactivo" />
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3">
                        <div class="mb-3">
                            <%-- boton buscar --%>
                            <asp:Button Text="Buscar" runat="server" CssClass="btn btn-primary" ID="btnBuscar" OnClick="btnBuscar_Click" />
                        </div>
                    </div>
                </div>
                <%} %>
                <div class="mb-3">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="dgvPokemons" DataKeyNames="Id" runat="server" AutoGenerateColumns="false" CssClass="table"
                                OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged" OnPageIndexChanging="dgvPokemons_PageIndexChanging"
                                AllowPaging="true" PageSize="5">
                                <Columns>
                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                    <asp:BoundField HeaderText="Número" DataField="numero" />
                                    <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
                                    <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
                                    <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="✍" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
