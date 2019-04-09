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
    public class BL_Param_FuentesDatos
    {
        public static List<BE_FuenteDatos> SeleccionarAllFuentesDatos()
        {
            DataSet dsFuentesDatos = new DataSet();
            dsFuentesDatos = DA_Param_FuentesDatos.SeleccionarAllFuentesDatos();
            List<BE_FuenteDatos> lstFuentesDatos = new List<BE_FuenteDatos>();
            if (dsFuentesDatos.Tables != null && dsFuentesDatos.Tables[0] != null)
            {                
                foreach (DataRow row in dsFuentesDatos.Tables[0].Rows)
                {
                    BE_FuenteDatos fuenteDatos = new BE_FuenteDatos();
                    fuenteDatos.Id = int.Parse(row["Id"].ToString());
                    fuenteDatos.Id_TipoFuenteDatos = int.Parse(row["Id_TipoFuenteDatos"].ToString());
                    fuenteDatos.TipoFuenteDatos = new BE_TipoFuenteDatos();
                    fuenteDatos.TipoFuenteDatos.Id = fuenteDatos.Id_TipoFuenteDatos;
                    fuenteDatos.NombreTipoFuenteDatos = fuenteDatos.TipoFuenteDatos.Nombre = row["TipoFuenteDatos"].ToString();
                    fuenteDatos.Nombre = row["Nombre"].ToString();
                    fuenteDatos.Ruta = row["Ruta"].ToString();
                    fuenteDatos.Metodo = row["Metodo"].ToString();
                    fuenteDatos.Descripcion = row["Descripcion"].ToString();
                    fuenteDatos.Usuario = row["Usuario"].ToString(); ;
                    fuenteDatos.FechaCreacion = DateTime.Parse(row["FechaCreacion"].ToString());
                    fuenteDatos.FechaModificacion = DateTime.Parse(row["FechaModificacion"].ToString());
                    fuenteDatos.Estado = Boolean.Parse(row["Estado"].ToString());
                    lstFuentesDatos.Add(fuenteDatos);
                }
            }
            return lstFuentesDatos;
        }

        public static List<BE_FuenteDatos> SeleccionarAllFuentesDatosActivas()
        {
            List<BE_FuenteDatos> lstTodasLasFuentes = SeleccionarAllFuentesDatos();

            List<BE_FuenteDatos> lstFuentesActivas = new List<BE_FuenteDatos>();

            foreach (BE_FuenteDatos fuenteDatos in lstTodasLasFuentes)
            {
                if (fuenteDatos.Estado)
                {
                    lstFuentesActivas.Add(fuenteDatos);
                }
            }

            return lstFuentesActivas;
        }

        public static void CrearFuenteDatos(BE_FuenteDatos fuenteDatos)
        {
            fuenteDatos.FechaCreacion = fuenteDatos.FechaModificacion = DateTime.Now;
            int id_fuente_datos = 0;
            id_fuente_datos = DA_Param_FuentesDatos.CrearFuenteDatos(fuenteDatos);
        }

        public static void EditarFuenteDatos(BE_FuenteDatos fuenteDatos)
        {
            fuenteDatos.FechaModificacion = DateTime.Now;
            int cantidad_registros_modificados = 0;
            cantidad_registros_modificados = DA_Param_FuentesDatos.EditarFuenteDatos(fuenteDatos);
        }

        public static void BorrarFuenteDatos(BE_FuenteDatos fuenteDatos)
        {
            int cantidad_registros_modificados = 0;
            cantidad_registros_modificados = DA_Param_FuentesDatos.BorrarFuenteDatos(fuenteDatos);
        }
    }
}
