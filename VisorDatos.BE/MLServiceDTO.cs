using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace VisorDatos.BE
{
    public class MLServiceDTO
    {
        public Results Results { get; set; }
    }

    public class Output1
    {
        public string Gender { get; set; }
        public string YearlyIncome { get; set; }
        public string Region { get; set; }
        public string Age { get; set; }
        public string BikeBuyer { get; set; }

        [JsonProperty(PropertyName ="Scored Probabilities")]
        public string ScoredProbabilities { get; set; }
    }

    public class Results
    {
        public List<Output1> output1 { get; set; }
    }
}
