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
    public class BL_Datos
    {
        public static DataSet ObtenerDatos(BE_FuenteDatos fuenteDatos)
        {
            return DA_Datos.ObtenerDatos(fuenteDatos);
        }
    }
}
