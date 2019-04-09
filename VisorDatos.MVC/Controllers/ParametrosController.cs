using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VisorDatos.BE;
using VisorDatos.BL;
namespace VisorDatos.MVC.Controllers
{
    public class ParametrosController : Controller
    {
        // GET: Parametros
        public ActionResult Index()
        {
            try
            {
                return View();
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "Index");
                return View("Error", errorInfo);
            }
        }

        #region Fuentes de Datos

        public ActionResult FuentesDatos()
        {
            try
            {
                List<BE_FuenteDatos> lstFuentesDatos = BL_Param_FuentesDatos.SeleccionarAllFuentesDatos();
                if (lstFuentesDatos == null)
                {
                    lstFuentesDatos = new List<BE_FuenteDatos>();
                }
                return View("FuentesDatos", lstFuentesDatos);
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "FuentesDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult CrearFuenteDatos(BE_FuenteDatos fuenteDatos, string action)
        {
            try
            {
                if (action.Equals("Crear"))
                {
                    return FuenteDatos_Crear(fuenteDatos);
                }
                else
                {
                    CargarTiposFuentesDatos();
                    return View();
                }
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "CrearFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        private void CargarTiposFuentesDatos()
        {
            List<SelectListItem> items = new List<SelectListItem>();

            List<BE_TipoFuenteDatos> lstTiposFuentesDatos = BL_Param_TiposFuentesDatos.SeleccionarAllTiposFuentesDatos();

            foreach (BE_TipoFuenteDatos tipoFuenteDatos in lstTiposFuentesDatos)
            {
                items.Add(new SelectListItem { Text = tipoFuenteDatos.Nombre, Value = tipoFuenteDatos.Id.ToString() });
            }

            ViewBag.TiposFuentesDatos = items;
        }

        public ActionResult FuenteDatos_Crear(BE_FuenteDatos fuenteDatos)
        {
            try
            {
                fuenteDatos.Usuario = User.Identity.Name;
                BL_Param_FuentesDatos.CrearFuenteDatos(fuenteDatos);
                return FuentesDatos();
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "FuenteDatos_Crear");
                return View("Error", errorInfo);
            }
        }

        public ActionResult EditarFuenteDatos(BE_FuenteDatos fuenteDatos, string action)
        {
            try
            {
                if (action.Equals("Editar"))
                {
                    return FuenteDatos_Editar(fuenteDatos);
                }
                else
                {
                    CargarTiposFuentesDatos();
                    return View();
                }
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "EditarFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult FuenteDatos_Editar(BE_FuenteDatos fuenteDatos)
        {
            try
            {
                fuenteDatos.Usuario = User.Identity.Name;
                BL_Param_FuentesDatos.EditarFuenteDatos(fuenteDatos);
                return FuentesDatos();
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "FuenteDatos_Editar");
                return View("Error", errorInfo);
            }
        }

        public ActionResult DetalleFuenteDatos(BE_FuenteDatos fuenteDatos)
        {
            try
            {
                fuenteDatos.TipoFuenteDatos = new BE_TipoFuenteDatos();
                fuenteDatos.TipoFuenteDatos.Id = fuenteDatos.Id_TipoFuenteDatos;
                fuenteDatos.TipoFuenteDatos.Nombre = fuenteDatos.NombreTipoFuenteDatos;
                return View(fuenteDatos);
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "DetalleFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult BorrarFuenteDatos(BE_FuenteDatos fuenteDatos, string action)
        {
            try
            {
                if (action.Equals("Borrar"))
                {
                    return FuenteDatos_Borrar(fuenteDatos);
                }
                else
                {
                    fuenteDatos.TipoFuenteDatos = new BE_TipoFuenteDatos();
                    fuenteDatos.TipoFuenteDatos.Id = fuenteDatos.Id_TipoFuenteDatos;
                    fuenteDatos.TipoFuenteDatos.Nombre = fuenteDatos.NombreTipoFuenteDatos;
                    return View(fuenteDatos);
                }
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "BorrarFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult FuenteDatos_Borrar(BE_FuenteDatos fuenteDatos)
        {
            try
            {
                BL_Param_FuentesDatos.BorrarFuenteDatos(fuenteDatos);
                return FuentesDatos();
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "FuenteDatos_Borrar");
                return View("Error", errorInfo);
            }
        }

        #endregion Fuentes de Datos

        #region Tipos de Fuentes de Datos

        public ActionResult TiposFuentesDatos()
        {
            try
            {
                List<BE_TipoFuenteDatos> lstTiposFuentesDatos = BL_Param_TiposFuentesDatos.SeleccionarAllTiposFuentesDatos();
                if (lstTiposFuentesDatos == null)
                {
                    lstTiposFuentesDatos = new List<BE_TipoFuenteDatos>();
                }
                return View("TiposFuentesDatos", lstTiposFuentesDatos);
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "TiposFuentesDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult CrearTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos, string action)
        {
            try
            {
                if (action.Equals("Crear"))
                {
                    return TipoFuenteDatos_Crear(tipoFuenteDatos);
                }
                else
                {
                    return View();
                }
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "CrearTipoFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult TipoFuenteDatos_Crear(BE_TipoFuenteDatos tipoFuenteDatos)
        {
            try
            {
                tipoFuenteDatos.Usuario = User.Identity.Name;
                BL_Param_TiposFuentesDatos.CrearTipoFuenteDatos(tipoFuenteDatos);
                return TiposFuentesDatos();
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "TipoFuenteDatos_Crear");
                return View("Error", errorInfo);
            }
        }

        public ActionResult EditarTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos, string action)
        {
            try
            {
                if (action.Equals("Editar"))
                {
                    return TipoFuenteDatos_Editar(tipoFuenteDatos);
                }
                else
                {
                    return View();
                }
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "EditarTipoFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult TipoFuenteDatos_Editar(BE_TipoFuenteDatos tipoFuenteDatos)
        {
            try
            {
                tipoFuenteDatos.Usuario = User.Identity.Name;
                BL_Param_TiposFuentesDatos.EditarTipoFuenteDatos(tipoFuenteDatos);
                return TiposFuentesDatos();
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "TipoFuenteDatos_Editar");
                return View("Error", errorInfo);
            }
        }

        public ActionResult DetalleTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos)
        {
            try
            {
                return View(tipoFuenteDatos);
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "DetalleTipoFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult BorrarTipoFuenteDatos(BE_TipoFuenteDatos tipoFuenteDatos, string action)
        {
            try
            {
                if (action.Equals("Borrar"))
                {
                    return TipoFuenteDatos_Borrar(tipoFuenteDatos);
                }
                else
                {
                    return View(tipoFuenteDatos);
                }
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "BorrarTipoFuenteDatos");
                return View("Error", errorInfo);
            }
        }

        public ActionResult TipoFuenteDatos_Borrar(BE_TipoFuenteDatos tipoFuenteDatos)
        {
            try
            {
                BL_Param_TiposFuentesDatos.BorrarTipoFuenteDatos(tipoFuenteDatos);
                return TiposFuentesDatos();
            }
            catch (Exception ex)
            {
                HandleErrorInfo errorInfo = new HandleErrorInfo(ex, "ParametrosController", "TipoFuenteDatos_Borrar");
                return View("Error", errorInfo);
            }
        }

        #endregion Tipos de Fuentes de Datos
    }
}