using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Xml.Linq;
using VisorDatos.BL;
using VisorDatos.UT;

namespace VisorDatos.WSDatosAgro
{
    /// <summary>
    /// Summary description for DatosAgro
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class DatosAgro : System.Web.Services.WebService
    {
        [WebMethod]
        public string SeleccionarAllRestitucionTierras()
        {
            DataSet ds = BL_DatosAgro.SeleccionarAllRestitucionTierras();
            string xmlRespuesta = UT_Cast.DataTableToXmlString(ds.Tables[0]);
            //System.IO.StringWriter writer = new System.IO.StringWriter();
            //ds.Tables[0].WriteXml(writer);
            return xmlRespuesta;
        }

        [WebMethod]
        public string SeleccionarAllCredito()
        {
            DataSet ds = BL_DatosAgro.SeleccionarAllCredito();
            string xmlRespuesta = UT_Cast.DataTableToXmlString(ds.Tables[0]);
            //System.IO.StringWriter writer = new System.IO.StringWriter();
            //ds.Tables[0].WriteXml(writer);
            return xmlRespuesta;
        }

        [WebMethod]
        public string SeleccionarCantidadCreditosPorDepartamento()
        {
            DataSet ds = BL_DatosAgro.SeleccionarCantidadCreditosPorDepartamento();
            string xmlRespuesta = UT_Cast.DataTableToXmlString(ds.Tables[0]);
            //System.IO.StringWriter writer = new System.IO.StringWriter();
            //ds.Tables[0].WriteXml(writer);
            return xmlRespuesta;
        }
    }
}