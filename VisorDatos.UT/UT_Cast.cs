using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace VisorDatos.UT
{
    public class UT_Cast
    {
        public static string DataTableToXmlString(DataTable tabla)
        {
            StringBuilder stringBuilder = new StringBuilder();

            List<string> lstColumnas = new List<string>();

            stringBuilder.Append("<RESULTADOS>");

            foreach (DataColumn columna in tabla.Columns)
            {
                lstColumnas.Add(columna.ColumnName);
            }

            foreach (DataRow registro in tabla.Rows)
            {
                stringBuilder.Append("<Registro>");
                foreach (string columna in lstColumnas)
                {
                    stringBuilder.Append("<" + columna + ">");
                    stringBuilder.Append(registro[columna]);
                    stringBuilder.Append("</" + columna + ">");
                }
                stringBuilder.Append("</Registro>");
            }

            stringBuilder.Append("</RESULTADOS>");

            return stringBuilder.ToString();
        }

        public static DataTable XmlResultStringToDataTable(string resultString)
        {
            DataTable resultados = new DataTable();
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.LoadXml(resultString);
            XmlNodeList parentNode = xmlDoc.GetElementsByTagName("RESULTADOS");
            XmlNode nodoResultados = parentNode[0];

            if (nodoResultados.ChildNodes.Count > 0)
            {
                List<string> lstColumnas = new List<string>();
                XmlNode nodoPrimerRegistro = nodoResultados.ChildNodes[0];
                foreach (XmlNode nodoCampo in nodoPrimerRegistro.ChildNodes)
                {
                    lstColumnas.Add(nodoCampo.Name);
                    resultados.Columns.Add(nodoCampo.Name);
                }

                foreach (XmlNode childrenNode in nodoResultados.ChildNodes)
                {
                    DataRow row = resultados.NewRow();
                    foreach (XmlNode nodoCampo in childrenNode.ChildNodes)
                    {
                        row[nodoCampo.Name] = nodoCampo.InnerXml;
                    }
                    resultados.Rows.Add(row);
                }
            }
            return resultados;
        }
    }
}