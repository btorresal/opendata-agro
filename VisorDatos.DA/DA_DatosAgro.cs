using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VisorDatos.CN;

namespace VisorDatos.DA
{
    public class DA_DatosAgro
    {
        public static DataSet SeleccionarAllRestitucionTierras()
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
                        command.CommandText = "Agro_SeleccionarAllRestitucionTierras";
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

        public static DataSet SeleccionarCantidadCreditosPorDepartamento()
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
                        command.CommandText = "Agro_CantidadCreditosPorDepartamento";
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

        public static DataSet SeleccionarAllCredito()
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
                        command.CommandText = "Agro_SeleccionarAllCredito";
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
