using Dominio.Interfaces;
using Dominio.Servicos;
using Microsoft.AspNetCore.Mvc;

namespace Web.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OpenAiController : ControllerBase
    {
        private readonly ServicoChatOpenAI _servicoChatOpenAI;

        public OpenAiController(ServicoChatOpenAI servicoChatOpenAI)
        {
            _servicoChatOpenAI = servicoChatOpenAI;
        }

        [HttpGet("FacaSuaPergunta")]
        public async Task<IActionResult> FacaSuaPergunta(string prompt)
        {
            var response = await _servicoChatOpenAI.ObterRespostaAsync(prompt);

            return Ok(response);
        }
    }
}
