using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using System.ComponentModel.DataAnnotations;

namespace VisorDatos.BE
{
    public class BE_TipoFuenteDatos
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Nombre es requerido.")]
        [DisplayName("Tipo Fuente")]
        public string Nombre { get; set; }

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
    }
}
