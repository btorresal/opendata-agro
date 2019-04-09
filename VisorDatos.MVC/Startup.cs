using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VisorDatos.MVC.Startup))]
namespace VisorDatos.MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
