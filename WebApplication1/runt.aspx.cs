using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace WebApplication1
{
    public partial class runt : System.Web.UI.Page
    {
               private SqlConnection con;
        private SqlDataAdapter da;
        static DataTable dt;
        private SqlCommand cmd;
        private object id;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Conectar()
        {
          
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            con.Open();
        }

        public void Desconectar()
        {
            con.Close();
            con = null;
            cmd = null;
        }

        public void CrearComando(string consulta)
        {
            cmd = new SqlCommand(consulta, con);
        }

        public void AsignarParametro(string param, SqlDbType tipo, object val)
        {
            cmd.Parameters.Add(param, tipo).Value = val;
        }

        public int EjecutarComando()
        {
            int id = Convert.ToInt32(cmd.ExecuteScalar());
           // int id = (int)cmd.ExecuteScalar();
            if (con.State == System.Data.ConnectionState.Open)
                Desconectar();

            return id;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre, ciudad, codigo, fechaTramite, placa, tramite, maquinaria, marca, linea, tipo, traccion, colores,
                modelo, peso, largo, ancho, alto, capacidadCarga, cabina, noMotor, regrabado, noIdentificacion, noEjes, importRemate,
                noDocumento, fechaImportRemate, tipoCombustible, datosAlerta;


            nombre = TextBox1.Text;
            ciudad = DropDownList1.SelectedValue;
            codigo = TextBox3.Text;
            fechaTramite = TextBox4.Text;
            placa = TextBox2.Text + TextBox5.Text;
            tramite = DropDownList2.SelectedValue;
            maquinaria = DropDownList3.SelectedValue;
            marca = TextBox6.Text;
            linea = TextBox7.Text;
            tipo = TextBox8.Text;
            traccion = DropDownList4.SelectedValue;
            colores = TextBox9.Text;
            modelo = TextBox10.Text;
            peso = TextBox11.Text;
            largo = TextBox12.Text;
            ancho = TextBox13.Text;
            alto = TextBox14.Text;
            capacidadCarga = TextBox15.Text;
            cabina = DropDownList5.SelectedValue;
            noMotor = TextBox16.Text;
            regrabado = CheckBox1.Checked ? "Si" : CheckBox2.Checked ? "No" : null;
            noIdentificacion = TextBox17.Text;
            noEjes = TextBox18.Text;
            importRemate = DropDownList9.SelectedValue;
            noDocumento = TextBox31.Text;
            fechaImportRemate = TextBox32.Text;
            tipoCombustible = DropDownList7.SelectedValue;
            datosAlerta = CheckBoxList1.SelectedValue;


            Conectar();
            CrearComando("INSERT INTO Solicitud" +
                "(nombre, ciudad, codigo, fechaTramite, placa, tramite, maquinaria, marca, linea, tipo, " +
                "traccion, colores, modelo, peso, largo, ancho, alto, capacidadCarga, cabina, noMotor, " +
                "regrabado, noIdentificacion, noEjes, importRemate, noDocumento, fechaImportRemate, " +
                "tipoCombustible, datosAlerta) " +
                "VALUES" +
                "(@nombre, @ciudad, @codigo, @fechaTramite, @placa, @tramite, @maquinaria, @marca, @linea, @tipo, " +
                "@traccion, @colores, @modelo, @peso, @largo, @ancho, @alto, @capacidadCarga, @cabina, @noMotor, " +
                "@regrabado, @noIdentificacion, @noEjes, @importRemate, @noDocumento, @fechaImportRemate, " +
                "@tipoCombustible, @datosAlerta);" +
                "SELECT SCOPE_IDENTITY()");
            AsignarParametro("@nombre", System.Data.SqlDbType.VarChar, nombre);
            AsignarParametro("@ciudad", SqlDbType.VarChar, ciudad);
            AsignarParametro("@codigo", SqlDbType.VarChar, codigo);
            AsignarParametro("@fechaTramite", SqlDbType.VarChar, fechaTramite);
            AsignarParametro("@placa", SqlDbType.VarChar, placa);
            AsignarParametro("@tramite", SqlDbType.VarChar, tramite);
            AsignarParametro("@maquinaria", SqlDbType.VarChar, maquinaria);
            AsignarParametro("@marca", SqlDbType.VarChar, marca);
            AsignarParametro("@linea", SqlDbType.VarChar, linea);
            AsignarParametro("@tipo", SqlDbType.VarChar, tipo);
            AsignarParametro("@traccion", SqlDbType.VarChar, traccion);
            AsignarParametro("@colores", SqlDbType.VarChar, colores);
            AsignarParametro("@modelo", SqlDbType.VarChar, modelo);
            AsignarParametro("@peso", SqlDbType.VarChar, peso);
            AsignarParametro("@largo", SqlDbType.VarChar, largo);
            AsignarParametro("@ancho", SqlDbType.VarChar, ancho);
            AsignarParametro("@alto", SqlDbType.VarChar, alto);
            AsignarParametro("@capacidadCarga", SqlDbType.VarChar, capacidadCarga);
            AsignarParametro("@cabina", SqlDbType.VarChar, cabina);
            AsignarParametro("@noMotor", SqlDbType.VarChar, noMotor);
            AsignarParametro("@regrabado", SqlDbType.VarChar, regrabado);
            AsignarParametro("@noIdentificacion", SqlDbType.VarChar, noIdentificacion);
            AsignarParametro("@noEjes", SqlDbType.VarChar, noEjes);
            AsignarParametro("@importRemate", SqlDbType.VarChar, importRemate);
            AsignarParametro("@noDocumento", SqlDbType.VarChar, noDocumento);
            AsignarParametro("@fechaImportRemate", SqlDbType.VarChar, fechaImportRemate);
            AsignarParametro("@tipoCombustible", SqlDbType.VarChar, tipoCombustible);
            AsignarParametro("@datosAlerta", SqlDbType.VarChar, datosAlerta);

            int idSolicitud = EjecutarComando();

            String primerApellido, segundoApellido,
                tipoDocumento, direccion, telefono;

            primerApellido = TextBox19.Text;
            segundoApellido = TextBox20.Text;
            nombre = TextBox21.Text;
            tipoDocumento = DropDownList6.SelectedValue;
            noDocumento = TextBox31.Text;
            direccion = TextBox22.Text;
            ciudad = TextBox23.Text;
            telefono = TextBox24.Text;

            Conectar();
            CrearComando("INSERT INTO Propietario" +
                "(idSolicitud, primerApellido, segundoApellido, nombre, " +
                "tipoDocumento, noDocumento, direccion, ciudad, telefono)" +
                "VALUES" +
                "(@idSolicitud, @primerApellido, @segundoApellido, @nombre, " +
                "@tipoDocumento, @noDocumento, @direccion, @ciudad, @telefono);" +
                "SELECT SCOPE_IDENTITY();");
            AsignarParametro("@idSolicitud", SqlDbType.Int, idSolicitud);
            AsignarParametro("@primerApellido", SqlDbType.VarChar, primerApellido);
            AsignarParametro("@segundoApellido", SqlDbType.VarChar, segundoApellido);
            AsignarParametro("@nombre", SqlDbType.VarChar, nombre);
            AsignarParametro("@tipoDocumento", SqlDbType.VarChar, tipoDocumento);
            AsignarParametro("@noDocumento", SqlDbType.VarChar, noDocumento);
            AsignarParametro("@direccion", SqlDbType.VarChar, direccion);
            AsignarParametro("@ciudad", SqlDbType.VarChar, ciudad);
            AsignarParametro("@telefono", SqlDbType.VarChar, telefono);
            EjecutarComando();



            primerApellido = TextBox25.Text;
            segundoApellido = TextBox26.Text;
            nombre = TextBox27.Text;
            tipoDocumento = DropDownList8.SelectedValue;
            noDocumento = TextBox28.Text;
            direccion = TextBox29.Text;
            ciudad = TextBox32.Text;
            telefono = TextBox33.Text;

            Conectar();
            CrearComando("INSERT INTO Comprador" +
                "(idSolicitud, primerApellido, segundoApellido, nombre, " +
                "tipoDocumento, noDocumento, direccion, ciudad, telefono)" +
                "VALUES" +
                "(@idSolicitud, @primerApellido, @segundoApellido, @nombre, " +
                "@tipoDocumento, @noDocumento, @direccion, @ciudad, @telefono);" +
                "SELECT SCOPE_IDENTITY();");
            AsignarParametro("@idSolicitud", SqlDbType.Int, idSolicitud);
            AsignarParametro("@primerApellido", SqlDbType.VarChar, primerApellido);
            AsignarParametro("@segundoApellido", SqlDbType.VarChar, segundoApellido);
            AsignarParametro("@nombre", SqlDbType.VarChar, nombre);
            AsignarParametro("@tipoDocumento", SqlDbType.VarChar, tipoDocumento);
            AsignarParametro("@noDocumento", SqlDbType.VarChar, noDocumento);
            AsignarParametro("@direccion", SqlDbType.VarChar, direccion);
            AsignarParametro("@ciudad", SqlDbType.VarChar, ciudad);
            AsignarParametro("@telefono", SqlDbType.VarChar, telefono);
            EjecutarComando();

            Response.Redirect("WebForm2");

        }
    
}
}