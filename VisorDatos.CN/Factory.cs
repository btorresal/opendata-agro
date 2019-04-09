using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace VisorDatos.CN
{
    public class Factory
    {
        public static String Connection()
        {
            String strConnection = String.Empty;
            try
            {
                strConnection = ConfigurationManager.ConnectionStrings["VisorDatosDB"].ConnectionString;
            }
            catch
            {
                //strConnection = @"Data Source=DESKTOP-0JN0T8R\SQLEXPRESS;Initial Catalog=VisorDatos;uid=sa;pwd='';Integrated Security=false";
                strConnection = @"Persist Security Info=False;Integrated Security=true; Initial Catalog = VisorDatos; Server = DESKTOP-0JN0T8R\SQLEXPRESS";
            }
            return strConnection;
        }
    }
}
