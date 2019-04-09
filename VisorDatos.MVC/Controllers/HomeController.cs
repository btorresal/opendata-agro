using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VisorDatos.MVC.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Visor Datos es una herramienta que permite la visualización correcta de los datos.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Información de contacto.";

            return View();
        }

        public ActionResult Dashboard()
        {
            ViewBag.Message = "Dashboard.";
            DashboardController dashboarController = new DashboardController();
            return dashboarController.Index();
        }
    }
}