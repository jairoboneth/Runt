<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="XX-Small">
            <Columns >
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                <asp:BoundField DataField="fechaTramite" HeaderText="fechaTramite" SortExpression="fechaTramite" />
                <asp:BoundField DataField="placa" HeaderText="placa" SortExpression="placa" />
                <asp:BoundField DataField="tramite" HeaderText="tramite" SortExpression="tramite" />
                <asp:BoundField DataField="maquinaria" HeaderText="maquinaria" SortExpression="maquinaria" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="linea" HeaderText="linea" SortExpression="linea" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                <asp:BoundField DataField="traccion" HeaderText="traccion" SortExpression="traccion" />
                <asp:BoundField DataField="colores" HeaderText="colores" SortExpression="colores" />
                <asp:BoundField DataField="modelo" HeaderText="modelo" SortExpression="modelo" />
                <asp:BoundField DataField="peso" HeaderText="peso" SortExpression="peso" />
                <asp:BoundField DataField="largo" HeaderText="largo" SortExpression="largo" />
                <asp:BoundField DataField="ancho" HeaderText="ancho" SortExpression="ancho" />
                <asp:BoundField DataField="alto" HeaderText="alto" SortExpression="alto" />
                <asp:BoundField DataField="capacidadCarga" HeaderText="capacidadCarga" SortExpression="capacidadCarga" />
                <asp:BoundField DataField="cabina" HeaderText="cabina" SortExpression="cabina" />
                <asp:BoundField DataField="noMotor" HeaderText="noMotor" SortExpression="noMotor" />
                <asp:BoundField DataField="regrabado" HeaderText="regrabado" SortExpression="regrabado" />
                <asp:BoundField DataField="noIdentificacion" HeaderText="noIdentificacion" SortExpression="noIdentificacion" />
                <asp:BoundField DataField="noEjes" HeaderText="noEjes" SortExpression="noEjes" />
                <asp:BoundField DataField="importRemate" HeaderText="importRemate" SortExpression="importRemate" />
                <asp:BoundField DataField="noDocumento" HeaderText="noDocumento" SortExpression="noDocumento" />
                <asp:BoundField DataField="fechaImportRemate" HeaderText="fechaImportRemate" SortExpression="fechaImportRemate" />
                <asp:BoundField DataField="tipoCombustible" HeaderText="tipoCombustible" SortExpression="tipoCombustible" />
                <asp:BoundField DataField="datosAlerta" HeaderText="datosAlerta" SortExpression="datosAlerta" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Solicitud]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" Font-Size="XX-Small">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="primerApellido" HeaderText="primerApellido" SortExpression="primerApellido" />
                <asp:BoundField DataField="segundoApellido" HeaderText="segundoApellido" SortExpression="segundoApellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="tipoDocumento" HeaderText="tipoDocumento" SortExpression="tipoDocumento" />
                <asp:BoundField DataField="noDocumento" HeaderText="noDocumento" SortExpression="noDocumento" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="idSolicitud" HeaderText="idSolicitud" SortExpression="idSolicitud" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="True" Font-Size="XX-Small" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="primerApellido" HeaderText="primerApellido" SortExpression="primerApellido" />
                <asp:BoundField DataField="segundoApellido" HeaderText="segundoApellido" SortExpression="segundoApellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="tipoDocumento" HeaderText="tipoDocumento" SortExpression="tipoDocumento" />
                <asp:BoundField DataField="noDocumento" HeaderText="noDocumento" SortExpression="noDocumento" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="idSolicitud" HeaderText="idSolicitud" SortExpression="idSolicitud" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Propietario]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comprador]"></asp:SqlDataSource>
    </form>
    </body>
</html>
