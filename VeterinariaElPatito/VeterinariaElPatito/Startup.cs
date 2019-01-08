using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VeterinariaElPatito.Startup))]
namespace VeterinariaElPatito
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
