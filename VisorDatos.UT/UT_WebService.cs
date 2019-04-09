﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Xml.Linq;

namespace VisorDatos.UT
{
    public class UT_WebService
    {
        public string Url { get; set; }
        public string Metodo { get; set; }
        public Dictionary<string, string> Parametros = new Dictionary<string, string>();
        public XDocument ResultXML;
        public string ResultString;

        public UT_WebService()
        {

        }

        public UT_WebService(string url, string metodo)
        {
            Url = url;
            Metodo = metodo;
        }

        public void Invocar()
        {
            Invocar(true);
        }

        /// <summary>
        /// Invokes service
        /// </summary>
        /// <param name="encode">Added parameters will encode? (default: true)</param>
        public void Invocar(bool encode)
        {
            try
            {
                string urlServicio = Url;

                string soapStr =
                    @"<?xml version=""1.0"" encoding=""UTF-8""?>
                <soap:Envelope xmlns:soap=""http://schemas.xmlsoap.org/soap/envelope/"">
                    <soap:Body>
                    <{0} xmlns=""http://tempuri.org/"">
                        {1}
                    </{0}>
                    </soap:Body>
                </soap:Envelope>";

                HttpWebRequest req = (HttpWebRequest)WebRequest.Create(urlServicio);
                req.Headers.Add("SOAPAction", "\"http://tempuri.org/" + Metodo + "\"");
                req.ContentType = "text/xml;charset=\"utf-8\"";
                req.Accept = "text/xml";
                req.Method = "POST";

                using (Stream stm = req.GetRequestStream())
                {
                    string postValues = "";
                    foreach (var param in Parametros)
                    {
                        if (encode)
                            postValues += string.Format("<{0}>{1}</{0}>", HttpUtility.UrlEncode(param.Key), HttpUtility.UrlEncode(param.Value));
                        else
                            postValues += string.Format("<{0}>{1}</{0}>", param.Key, param.Value);
                    }

                    soapStr = string.Format(soapStr, Metodo, postValues);
                    using (StreamWriter stmw = new StreamWriter(stm))
                    {
                        stmw.Write(soapStr);
                    }
                }

                using (WebResponse webResponse = req.GetResponse())
                {
                    using (Stream stream = webResponse.GetResponseStream())
                    {
                        using (StreamReader responseReader = new StreamReader(stream))
                        {
                            string result = responseReader.ReadToEnd();
                            XDocument ResultXML = XDocument.Parse(result);
                            ResultString = HttpUtility.HtmlDecode(result);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}