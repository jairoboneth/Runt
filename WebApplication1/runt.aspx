<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="runt.aspx.cs" Inherits="WebApplication1.runt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
            <h3>FORMULARIO DE SOLICITUD DE TRÁMITES DEL REGISTRO NACIONAL DE MAQUINARIA
AGRÍCOLA, Y DE CONSTRUCCIÓN AUTOPROPULSADA</h3>
        <h4>1. Organismo de transito</h4>
        <table class="w-100">
            <tr>
                <td class="auto-style1">Nombre:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="450px">Servicios Integrales para la Movilidad - SIM</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ciudad:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" >
                        <asp:ListItem>Barranquilla</asp:ListItem>
                        <asp:ListItem>Bogotá</asp:ListItem>
                        <asp:ListItem>Medellin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Codigo:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="450px">10101</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Fecha de Tramite:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <h4>2. Placa</h4>
        <table>
            <tr>
                <td class="auto-style1">Letras:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Numeros</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="450px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red" ControlToValidate="DropDownList5"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <h4>3. Tramite Solicitado<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Seleccione el tramite:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Registro</asp:ListItem>
                        <asp:ListItem>Traspaso</asp:ListItem>
                        <asp:ListItem>Traslado registro</asp:ListItem>
                        <asp:ListItem>Duplicado tarjeta registro</asp:ListItem>
                        <asp:ListItem>Cancelacion registro</asp:ListItem>
                        <asp:ListItem>Radicado Registro</asp:ListItem>
                        <asp:ListItem>Regrabar numero de identifiación</asp:ListItem>
                        <asp:ListItem>Cambio de placas</asp:ListItem>
                        <asp:ListItem>Cambio de registro por recuperación del vehiculo</asp:ListItem>
                        <asp:ListItem>Inscrip. Prenda</asp:ListItem>
                        <asp:ListItem>Levanta Prenda</asp:ListItem>
                        <asp:ListItem>Duplicado placa</asp:ListItem>
                        <asp:ListItem>Otros</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <h4>4. Clase de maquinaria<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style4">Seleccione la maquinaria:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Agricola</asp:ListItem>
                        <asp:ListItem>Industrial</asp:ListItem>
                        <asp:ListItem>Construcción</asp:ListItem>
                        <asp:ListItem>Otro</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <h4>5. Marca<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Marca:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="445px"></asp:TextBox></td>
            </tr>
        </table>
        <h4>6. Linea<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Linea del vehiculo:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="444px"></asp:TextBox></td>
            </tr>
        </table>
        <h4>7. Tipo<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Tipo de vehiculo:</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="441px"></asp:TextBox></td>
            </tr>
        </table>
        <h4>8. Tipo de tracción</h4>
        <table>
            <tr>
                <td class="auto-style1">Seleccione la tracción:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Llantas</asp:ListItem>
                        <asp:ListItem>Orugas</asp:ListItem>
                        <asp:ListItem>Cilindros</asp:ListItem>
                        <asp:ListItem>Mixto</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <h4>9. Colores</h4>
        <table>
            <tr>
                <td class="auto-style1">Color del vehiculo:</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="440px"></asp:TextBox></td>
            </tr>
        </table>
        <h4>10. Modelo<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Modelo del vehiculo:</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="444px"></asp:TextBox></td>
            </tr>
        </table>
        <h4>11. Peso bruto vehicular<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Peso del vehiculo:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>
        <h4>12. Largo<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Largo del vehiculo(m):</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>
        <h4>13. Ancho<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox13" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Ancho del vehiculo(m):</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>
        <h4>14. Alto<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox14" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Alto del vehiculo(m):</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>
        <h4>15. Capacidad de carga<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox15" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </h4>
        <table>
            <tr>
                <td class="auto-style1">Capacidad de carga del vehiculo:</td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>
        <h4>16. Cabina</h4>
        <table>
            <tr>
                <td class="auto-style1">Seleccione el tipo de cabina:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>Cerrada</asp:ListItem>
                        <asp:ListItem>Parasol</asp:ListItem>
                        <asp:ListItem>Sin Cabina</asp:ListItem>
                        <asp:ListItem>Otros</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <h4>17. Identificación interna de la maquinaria</h4>
        <table>
            <tr>
                <td class="auto-style1"># de motor:<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox16" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox16" runat="server" Width="282px" TextMode="Number"></asp:TextBox></td>
                <td class="auto-style6">Regrabado</td>
                <td class="auto-style8">
                    <asp:CheckBox ID="CheckBox1" Text="Sí" runat="server" /><asp:CheckBox ID="CheckBox2" Text="No" runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style1"># de identificación:<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox17" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox17" runat="server" Width="282px" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"># de Ejes:<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox18" ErrorMessage="RequiredFieldValidator" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox18" runat="server" Width="282px" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>
        <div>
        <h4>18. Datos del propietario</h4>
            <asp:Label ID="Label1" runat="server" Text="Primer Apellido"></asp:Label>
            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Nombres"></asp:Label>
            <asp:TextBox ID="TextBox21" runat="server" Height="22px"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Tipo de documento"></asp:Label>
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>C.C</asp:ListItem>
                <asp:ListItem>NIT</asp:ListItem>
                <asp:ListItem>N.N</asp:ListItem>
                <asp:ListItem>PASAPORTE</asp:ListItem>
                <asp:ListItem>C. EXTRANJERIA </asp:ListItem>
                <asp:ListItem>T. IDENTIDAD</asp:ListItem>
                <asp:ListItem>NUIP</asp:ListItem>
                <asp:ListItem>C.DIPLOMATICO</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label5" runat="server" Text="No documento"></asp:Label>
            <asp:TextBox ID="TextBox31" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Text="Ciudad"></asp:Label>
            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Text="Teléfono"></asp:Label>
            <asp:TextBox ID="TextBox24" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div>
           <div class="col-md-12">
                    <label class="form-label"><strong>19. Importación o remate</strong></label>
                </div>
                <div class="col-md-12">
                    <label class="form-label"></label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Importación</asp:ListItem>
                        <asp:ListItem>Remate</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:DropDownList ID="DropDownList9" class="form-select" runat="server">
                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Nro. Documento</label>
                    <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Fecha</label>
                    <asp:TextBox ID="TextBox35" runat="server" TextMode="Date"></asp:TextBox>
                </div>
        </div>
        <div>
        <h4>20. Tipo de combustible&nbsp;&nbsp;&nbsp; </h4>
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem>GASOLINA</asp:ListItem>
                <asp:ListItem>DIESEL </asp:ListItem>
                <asp:ListItem>ELÉCTRICO</asp:ListItem>
                <asp:ListItem>GAS </asp:ListItem>
                <asp:ListItem>MIXTO</asp:ListItem>
                <asp:ListItem>OTROS</asp:ListItem>
            </asp:DropDownList>
         </div>
        <div>
        <h4>21. Datos del comprador (Traspaso)</h4>
          <asp:Label ID="Label9" runat="server" Text="Primer Apellido"></asp:Label>
            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" Text="Nombres"></asp:Label>
            <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Tipo de documento"></asp:Label>
            <asp:DropDownList ID="DropDownList8" runat="server">
                <asp:ListItem>C.C</asp:ListItem>
                <asp:ListItem>NIT</asp:ListItem>
                <asp:ListItem>N.N</asp:ListItem>
                <asp:ListItem>PASAPORTE</asp:ListItem>
                <asp:ListItem>C. EXTRANJERIA </asp:ListItem>
                <asp:ListItem>T. IDENTIDAD</asp:ListItem>
                <asp:ListItem>NUIP</asp:ListItem>
                <asp:ListItem>C.DIPLOMATICO</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label13" runat="server" Text="No documento"></asp:Label>
            <asp:TextBox ID="TextBox28" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" Text="Ciudad"></asp:Label>
            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
            <asp:Label ID="Label16" runat="server" Text="Teléfono"></asp:Label>
            <asp:TextBox ID="TextBox33" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <h4>22. Datos de alerta</h4>
        <table>
            <tr>
                <td class="auto-style1">Seleccionar si el vehiculo aplica:</td>
                <td class="auto-style5">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="346px">
                        <asp:ListItem>Hurto</asp:ListItem>
                        <asp:ListItem>Lim. Propiedad</asp:ListItem>
                        <asp:ListItem>Embargo</asp:ListItem>
                        <asp:ListItem>Otro</asp:ListItem>
                        <asp:ListItem>A favor de</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </table>
        <h4>23. Observaciones</h4>
        <table class="auto-style7">
            <tr>
                <td class="auto-style1">Observaciones y comentarios:</td>
                <td>
                    <asp:TextBox ID="TextBox30" runat="server" Width="671px" Height="106px"></asp:TextBox></td>
            </tr>
        </table>
            <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />
    </form>
</body>
</html>
