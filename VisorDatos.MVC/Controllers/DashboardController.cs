using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using VisorDatos.BE;
using VisorDatos.BL;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;


using System.Web.Script.Serialization;

namespace VisorDatos.MVC.Controllers
{
    public class DashboardController : Controller
    {
        HttpClient client;


        //
        // GET: /Dashboard/
        public ActionResult Index()
        {
            List<BE_FuenteDatos> lstFuentesDatos = BL_Param_FuentesDatos.SeleccionarAllFuentesDatosActivas();
            if (lstFuentesDatos == null)
            {
                lstFuentesDatos = new List<BE_FuenteDatos>();
            }
            return View("Index", lstFuentesDatos);
        }

        //public ActionResult View_ML()
        //{
           

        //    return View();
        //}

        //[HttpPost]
        public async Task<ActionResult> View_ML()
        {
            var scoreRequest = new
            {
                Inputs = new Dictionary<string, List<Dictionary<string, string>>>() {
                        {
                            "input1",
                            new List<Dictionary<string, string>>(){new Dictionary<string, string>(){
                                            {
                                                "ID", "22711"
                                            },
                                            {
                                                "MaritalStatus", "Single"
                                            },
                                            {
                                                "Gender", "Male"
                                            },
                                            {
                                                "YearlyIncome", "30000"
                                            },
                                            {
                                                "Children", "0"
                                            },
                                            {
                                                "Education", "Partial College"
                                            },
                                            {
                                                "Occupation", "Clerical"
                                            },
                                            {
                                                "Home Owner", "No"
                                            },
                                            {
                                                "Cars", "1"
                                            },
                                            {
                                                "Commute Distance", "0-1 Miles"
                                            },
                                            {
                                                "Region", "Europe"
                                            },
                                            {
                                                "Age", "33"
                                            },
                                            {
                                                "BikeBuyer", "Yes"
                                            },
                                }
                            }
                        },
                    },
                GlobalParameters = new Dictionary<string, string>()
                {
                }
            };

            const string apiKey = "GDSehY/QUUdQV3RC/cSNYn25uGD4HzCEMtE7xVuFs4WCcoC8+lwJLnI7A5VLaxIbU6qLlDZRzp8LbROrx3ytSA==";
            client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", apiKey);
            client.BaseAddress =
            new Uri("https://ussouthcentral.services.azureml.net/workspaces/f410013f9f7c498cabe58bccb15c9bc4/services/01d799382837422baef45c64928e71bb/execute?api-version=2.0&format=swagger");

            HttpResponseMessage responseMessage = await client.PostAsJsonAsync("", scoreRequest);
            
            if (responseMessage.IsSuccessStatusCode)
            {
                //var result = responseMessage.Content.ReadAsStringAsync().Result;
                //result = result.Replace(@"Scored Probabilities", "ScoredProbabilities");
                //var json_serializer = new JavaScriptSerializer();
                //MLServiceDTO obj = json_serializer.Deserialize<MLServiceDTO>(result);
                //MLServiceDTO dataML = JsonConvert.DeserializeObject<MLServiceDTO>(result);

                var result = responseMessage.Content.ReadAsAsync<MLServiceDTO>().Result;
                return View(result);
            }

            return View();
        }

        #region Json
        public JsonResult GetPieChartData(BE_FuenteDatos fuenteDatos)
        {
            DataSet dsDatos = BL_Datos.ObtenerDatos(fuenteDatos);
            fuenteDatos.Datos = dsDatos.Tables.Count > 0 ? dsDatos.Tables[0] : new DataTable();

            var dt = (from h in fuenteDatos.Datos.AsEnumerable()
                      group h by new { Departamento = h[0].ToString() } into hh
                      select new
                      {
                          Departamento = hh.Key.Departamento,
                          //Total_Solicitudes = hh.Sum(s => s.Field<int>("NumeroSolicitudes"))
                          Total_Solicitudes = hh.Sum(s => Convert.ToInt32(s.Field<object>("NumeroSolicitudes")))

                      }).OrderByDescending(i => i.Total_Solicitudes);

            JsonResult jr = Json(dt);
            return jr;
        }

        public JsonResult GetNameColumn()
        {
            JsonResult jr = Json("Json");
            return jr;
        }

        public JsonResult GetBarChartData(BE_FuenteDatos fuenteDatos)
        {
            DataSet dsDatos = BL_Datos.ObtenerDatos(fuenteDatos);
            fuenteDatos.Datos = dsDatos.Tables.Count > 0 ? dsDatos.Tables[0] : new DataTable();

            var dt = (from h in fuenteDatos.Datos.AsEnumerable()
                       group h by new { Departamento = h[0].ToString() } into hh
                       select new
                       {
                           Departamento = hh.Key.Departamento,
                           //Total_Solicitudes = hh.Sum(s => s.Field<int>("NumeroSolicitudes"))
                           Total_Solicitudes = hh.Sum(s => Convert.ToInt32(s.Field<object>("NumeroSolicitudes")))
                       }).OrderByDescending(i => i.Total_Solicitudes);

            JsonResult jr = Json(dt);
            return jr;
        }
        #endregion

        #region Child-Only

        [ChildActionOnly]
        [OutputCache(Duration = 1, VaryByParam = "None")]
        public ActionResult Dashboard_Tabla(BE_FuenteDatos fuenteDatos)
        {
            ViewData["Message"] = fuenteDatos.Nombre;

            return View("Dashboard_Tabla", fuenteDatos);
        }

        [ChildActionOnly]
        [OutputCache(Duration = 1, VaryByParam = "None")]
        public ActionResult Dashboard_Pie(BE_FuenteDatos fuenteDatos)
        {
            if (fuenteDatos != null && fuenteDatos.Id > 0)
            {
                ViewData["Message"] = fuenteDatos.Nombre;

                return View("Dashboard_Pie", fuenteDatos);
            }
            else
            {
                return View();
            }
        }

        [ChildActionOnly]
        [OutputCache(Duration = 1, VaryByParam = "None")]
        public ActionResult Dashboard_Bar(BE_FuenteDatos fuenteDatos)
        {
            ViewData["Message"] = fuenteDatos.Nombre;

            return View("Dashboard_Bar", fuenteDatos);
        }

        #endregion

        public ActionResult Dashboard(BE_FuenteDatos fuenteDatos)
        {
            if (fuenteDatos != null && fuenteDatos.Id > 0)
            {
                DataSet dsDatos = BL_Datos.ObtenerDatos(fuenteDatos);
                fuenteDatos.Datos = dsDatos.Tables.Count > 0 ? dsDatos.Tables[0] : new DataTable();
                return View("Dashboard", fuenteDatos);
            }
            else
            {
                return View();
            }
        }
    }
}
