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
    public class DA_Param_TiposFuentesDatos
    {
        public static DataSet SeleccionarAllTiposFuentesDatos()
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
                        command.CommandText = "Param_SeleccionarAllTiposFuentesDatos";
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

        public static int CrearTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos)
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
                        command.CommandText = "Param_CrearTipoFuenteDatos";
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Nombre", tipoFuenteDatos.Nombre);
                        command.Parameters.AddWithValue("@Descripcion", tipoFuenteDatos.Descripcion);
                        command.Parameters.AddWithValue("@Usuario", tipoFuenteDatos.Usuario);
                        command.Parameters.AddWithValue("@FechaCreacion", tipoFuenteDatos.FechaCreacion);
                        command.Parameters.AddWithValue("@FechaModificacion", tipoFuenteDatos.FechaModificacion);
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

        public static int BorrarTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos)
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
                        command.CommandText = "Param_BorrarTipoFuenteDatos";
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id", tipoFuenteDatos.Id);
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

        public static int EditarTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos)
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
                        command.CommandText = "Param_EditarTipoFuenteDatos";
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id", tipoFuenteDatos.Id);
                        command.Parameters.AddWithValue("@Nombre", tipoFuenteDatos.Nombre);
                        command.Parameters.AddWithValue("@Descripcion", tipoFuenteDatos.Descripcion);
                        command.Parameters.AddWithValue("@Usuario", tipoFuenteDatos.Usuario);
                        command.Parameters.AddWithValue("@FechaModificacion", tipoFuenteDatos.FechaModificacion);
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
