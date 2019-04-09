using System;
using System.Data;
using System.Linq;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;
using System.Web.Mvc;

namespace VisorDatos.BE
{
    public class BE_FuenteDatos
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Tipo Fuente es requerido.")]
        public BE_TipoFuenteDatos TipoFuenteDatos { get; set; }

        [Required(ErrorMessage = "Tipo Fuente es requerido.")]
        [DisplayName("Tipo de Fuente de Datos")]
        [System.ComponentModel.DataAnnotations.Range(1,int.MaxValue,ErrorMessage = "Tipo de Fuente incorrecto")]
        public int Id_TipoFuenteDatos { get; set; }

        [Required(ErrorMessage = "Nombre es requerido.")]
        public string Nombre { get; set; }

        [Required(ErrorMessage = "Descripción es requerida.")]
        public string Ruta { get; set; }

        [DisplayName("Método")]
        public string Metodo { get; set; }

        [DisplayName("Descripción")]
        public string Descripcion { get; set; }

        [Display(AutoGenerateField = false)]
        public string Usuario { get; set; }

        [Display(AutoGenerateField = false)]
        [DisplayName("Fecha de Creación")]
        public DateTime FechaCreacion { get; set; }

        [Display(AutoGenerateField = false)]
        [DisplayName("Fecha de Modificación")]
        public DateTime FechaModificacion { get; set; }

        public bool Estado { get; set; }

        [Display(AutoGenerateField = false)]
        public string NombreTipoFuenteDatos { get; set; }
        public DataTable Datos { get; set; }

        public String GetDatos()
        {
            var dt = (from b in Datos.AsEnumerable()
                     group b by b.Field<string>("Departamento") into g
                     orderby g.Sum(x => x.Field<int>("NumeroSolicitudes")) descending
                     select new
                     {
                         Departamento = g.Key,
                         TotalSolicitudes = g.Sum(x => x.Field<int>("NumeroSolicitudes"))
                     }).ToList();

            JsonResult result = new JsonResult() { Data = dt };
            string ss = result.ToString();
            return ss;
        }
    }
}
