using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;
using VisorDatos.BE;
using VisorDatos.CN;
using VisorDatos.UT;

namespace VisorDatos.DA
{
    public class DA_Datos
    {
        public static DataSet ObtenerDatos(BE_FuenteDatos fuenteDatos)
        {
            DataSet dsDatos = new DataSet();

            switch (fuenteDatos.NombreTipoFuenteDatos.ToUpper())
            {
                case "STORED PROCEDURE":
                    dsDatos = ObtenerDatosDesdeStoredProcedure(fuenteDatos);
                    break;
                case "WEB SERVICE":
                    dsDatos = ObtenerDatosDesdeWebService(fuenteDatos);
                    break;
                default:
                    break;
            }

            return dsDatos;
        }

        private static DataSet ObtenerDatosDesdeWebService(BE_FuenteDatos fuenteDatos)
        {
            DataSet respuesta = new DataSet();
            UT_WebService webService = new UT_WebService(fuenteDatos.Ruta.Trim(), fuenteDatos.Metodo.Trim());
            webService.Invocar(false);

            DataTable dt = new DataTable();

            dt = UT_Cast.XmlResultStringToDataTable(webService.ResultString);

            respuesta.Tables.Add(dt);

            return respuesta;
        }

        private static DataSet ObtenerDatosDesdeStoredProcedure(BE_FuenteDatos fuenteDatos)
        {
            DataSet respuesta = new DataSet();
            try
            {
                string cadena = Factory.Connection();
                using (SqlConnection connection = new SqlConnection(cadena))
                {
                    connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter();
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.CommandText = fuenteDatos.Ruta;
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Connection = connection;
                        da.SelectCommand = command;
                        da.Fill(respuesta);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return respuesta;
        }
    }
}
