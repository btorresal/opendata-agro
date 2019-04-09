using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VisorDatos.BE;
using VisorDatos.CN;

namespace VisorDatos.DA
{
    public class DA_Param_FuentesDatos
    {
        public static DataSet SeleccionarAllFuentesDatos()
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
                        command.CommandText = "Param_SeleccionarAllFuentesDatos";
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

        public static int CrearFuenteDatos(BE_FuenteDatos fuenteDatos)
        {
            int respuesta = 0;
            try
            {
                string cadena = Factory.Connection();
                using (SqlConnection connection = new SqlConnection(cadena))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.CommandText = "Param_CrearFuenteDatos";
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id_TipoFuenteDatos", fuenteDatos.Id_TipoFuenteDatos);
                        command.Parameters.AddWithValue("@Nombre", fuenteDatos.Nombre);
                        command.Parameters.AddWithValue("@Ruta", fuenteDatos.Ruta);
                        command.Parameters.AddWithValue("@Metodo", fuenteDatos.Metodo);
                        command.Parameters.AddWithValue("@Descripcion", fuenteDatos.Descripcion);
                        command.Parameters.AddWithValue("@Usuario", fuenteDatos.Usuario);
                        command.Parameters.AddWithValue("@FechaCreacion", fuenteDatos.FechaCreacion);
                        command.Parameters.AddWithValue("@FechaModificacion", fuenteDatos.FechaModificacion);
                        command.Parameters.AddWithValue("@Estado", fuenteDatos.Estado);
                        command.Connection = connection;
                        respuesta = int.Parse(command.ExecuteScalar().ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return respuesta;
        }

        public static int BorrarFuenteDatos(BE_FuenteDatos fuenteDatos)
        {
            int respuesta = 0;
            try
            {
                string cadena = Factory.Connection();
                using (SqlConnection connection = new SqlConnection(cadena))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.CommandText = "Param_BorrarFuenteDatos";
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id", fuenteDatos.Id);
                        command.Connection = connection;
                        respuesta = command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return respuesta;
        }

        public static int EditarFuenteDatos(BE_FuenteDatos fuenteDatos)
        {
            int respuesta = 0;
            try
            {
                string cadena = Factory.Connection();
                using (SqlConnection connection = new SqlConnection(cadena))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.CommandText = "Param_EditarFuenteDatos";
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id", fuenteDatos.Id);
                        command.Parameters.AddWithValue("@Id_TipoFuenteDatos", fuenteDatos.Id_TipoFuenteDatos);
                        command.Parameters.AddWithValue("@Nombre", fuenteDatos.Nombre);
                        command.Parameters.AddWithValue("@Ruta", fuenteDatos.Ruta);
                        command.Parameters.AddWithValue("@Metodo", fuenteDatos.Metodo);
                        command.Parameters.AddWithValue("@Descripcion", fuenteDatos.Descripcion);
                        command.Parameters.AddWithValue("@Usuario", fuenteDatos.Usuario);
                        command.Parameters.AddWithValue("@FechaModificacion", fuenteDatos.FechaModificacion);
                        command.Parameters.AddWithValue("@Estado", fuenteDatos.Estado);
                        command.Connection = connection;
                        respuesta = command.ExecuteNonQuery();
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
