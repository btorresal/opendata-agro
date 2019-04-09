using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VisorDatos.BE;
using VisorDatos.DA;

namespace VisorDatos.BL
{
    public class BL_Param_TiposFuentesDatos
    {
        public static List<BE_TipoFuenteDatos> SeleccionarAllTiposFuentesDatos()
        {
            DataSet dsTiposFuentesDatos = new DataSet();
            dsTiposFuentesDatos = DA_Param_TiposFuentesDatos.SeleccionarAllTiposFuentesDatos();
            List<BE_TipoFuenteDatos> lstTiposFuentesDatos = new List<BE_TipoFuenteDatos>();
            if (dsTiposFuentesDatos.Tables != null && dsTiposFuentesDatos.Tables[0] != null)
            {
                foreach (DataRow row in dsTiposFuentesDatos.Tables[0].Rows)
                {
                    BE_TipoFuenteDatos tipoFuenteDatos = new BE_TipoFuenteDatos();
                    tipoFuenteDatos.Id = int.Parse(row["Id"].ToString());
                    tipoFuenteDatos.Nombre = row["Nombre"].ToString();
                    tipoFuenteDatos.Descripcion = row["Descripcion"].ToString();
                    tipoFuenteDatos.Usuario = row["Usuario"].ToString();
                    tipoFuenteDatos.FechaCreacion = DateTime.Parse(row["FechaCreacion"].ToString());
                    tipoFuenteDatos.FechaModificacion = DateTime.Parse(row["FechaModificacion"].ToString());
                    lstTiposFuentesDatos.Add(tipoFuenteDatos);
                }
            }
            return lstTiposFuentesDatos;
        }

        public static void CrearTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos)
        {
            tipoFuenteDatos.FechaCreacion = tipoFuenteDatos.FechaModificacion = DateTime.Now;
            int id_tipo_fuente_datos = 0;
            id_tipo_fuente_datos = DA_Param_TiposFuentesDatos.CrearTipoFuenteDatos(tipoFuenteDatos);
        }

        public static void EditarTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos)
        {
            tipoFuenteDatos.FechaModificacion = DateTime.Now;
            int cantidad_registros_modificados = 0;
            cantidad_registros_modificados = DA_Param_TiposFuentesDatos.EditarTipoFuenteDatos(tipoFuenteDatos);
        }

        public static void BorrarTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos)
        {
            int cantidad_registros_modificados = 0;
            cantidad_registros_modificados = DA_Param_TiposFuentesDatos.BorrarTipoFuenteDatos(tipoFuenteDatos);
        }
    }
}
