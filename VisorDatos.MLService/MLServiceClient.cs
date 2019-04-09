using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace VisorDatos.MLService
{
    public class MLServiceClient
    {
        static void Main(string[] args)
        {
            InvokeRequestResponseService().Wait();
        }

        static async Task InvokeRequestResponseService()
        {
            using (var client = new HttpClient())
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
                                                "Marital Status", "Single"
                                            },
                                            {
                                                "Gender", "Male"
                                            },
                                            {
                                                "Yearly Income", "30000"
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

                const string apiKey = "GDSehY/QUUdQV3RC/cSNYn25uGD4HzCEMtE7xVuFs4WCcoC8+lwJLnI7A5VLaxIbU6qLlDZRzp8LbROrx3ytSA=="; // Replace this with the API key for the web service
                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", apiKey);
                client.BaseAddress =
                    new Uri("https://ussouthcentral.services.azureml.net/workspaces/f410013f9f7c498cabe58bccb15c9bc4/services/01d799382837422baef45c64928e71bb/execute?api-version=2.0&format=swagger");


                //client.BaseAddress =
                //    new Uri("https://ussouthcentral.services.azureml.net/workspaces/f410013f9f7c498cabe58bccb15c9bc4/services/01d799382837422baef45c64928e71bb/execute?api-version=2.0&details=true");

                // WARNING: The 'await' statement below can result in a deadlock
                // if you are calling this code from the UI thread of an ASP.Net application.
                // One way to address this would be to call ConfigureAwait(false)
                // so that the execution does not attempt to resume on the original context.
                // For instance, replace code such as:
                //      result = await DoSomeTask()
                // with the following:
                //      result = await DoSomeTask().ConfigureAwait(false)

                HttpResponseMessage response = await client.PostAsJsonAsync("", scoreRequest);

                if (response.IsSuccessStatusCode)
                {
                    string result = await response.Content.ReadAsStringAsync();
                    Console.WriteLine("Result: {0}", result);
                }
                else
                {
                    //Console.WriteLine(string.Format("The request failed with status code: {0}", response.StatusCode));

                    // Print the headers - they include the requert ID and the timestamp,
                    // which are useful for debugging the failure
                    //Console.WriteLine(response.Headers.ToString());

                    string responseContent = await response.Content.ReadAsStringAsync();
                    Console.WriteLine(responseContent);
                }
            }
        }
    }
}




