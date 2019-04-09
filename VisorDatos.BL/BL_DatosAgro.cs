using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VisorDatos.DA;

namespace VisorDatos.BL
{
    public class BL_DatosAgro
    {
        public static DataSet SeleccionarAllRestitucionTierras()
        {
            return DA_DatosAgro.SeleccionarAllRestitucionTierras();
        }

        public static DataSet SeleccionarAllCredito()
        {
            return DA_DatosAgro.SeleccionarAllCredito();
        }

        public static DataSet SeleccionarCantidadCreditosPorDepartamento()
        {
            return DA_DatosAgro.SeleccionarCantidadCreditosPorDepartamento();
        }
    }
}
