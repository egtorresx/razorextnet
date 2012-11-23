using System.Web.Mvc;

namespace RazorExtNet.Controllers
{
    public class UsuarioController : Controller
    {      
        public ActionResult InicioSesionRazor()
        {
            return View();
        }

        public ActionResult InicioSesion()
        {
            return View();
        }
    }
}
