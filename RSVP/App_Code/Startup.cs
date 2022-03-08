using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RSVP.Startup))]
namespace RSVP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
