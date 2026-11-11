using System;
using System.Collections.Generic;
using System.Text;

using MySqlConnector;

namespace DAO
{
    public abstract class SQLKit
    {
        // Conexión a MySQL. Ajustar usuario/clave a la instalación local,
        // o definir la variable de entorno SEELE_DB con la cadena completa.
        private const string CADENA_CONEXION =
            "Server=localhost;Port=3306;Database=seele;User ID=root;Password=root;SslMode=None;AllowPublicKeyRetrieval=True;CharSet=utf8mb4";

        protected MySqlConnection con;
        protected MySqlCommand com;

        public SQLKit()
        {
            con = new MySqlConnection(Environment.GetEnvironmentVariable("SEELE_DB") ?? CADENA_CONEXION);
            com = new MySqlCommand("", con);
        }

        public void conectar()
        {
            con.Open();
        }
        public void desconectar()
        {
            con.Close();
        }

        

    }
}
