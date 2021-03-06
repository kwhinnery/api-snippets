// In Package Manager, run:
// Install-Package Twilio.Client -DependencyVersion HighestMinor

using System.Web.Mvc;
using Twilio;

public class TokenController : Controller
{
  // GET: Token
  public ActionResult Index()
  {
    // put your Twilio API credentials here
    string accountSid = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    string authToken = "your_auth_token";

    var capability = new TwilioCapability(accountSid, authToken);
    capability.AllowClientIncoming("jenny");
    string token = capability.GenerateToken();

    return Content(token, "application/jwt");
  }
}
