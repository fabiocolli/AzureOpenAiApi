using Dominio.Interfaces;

namespace Dominio.Servicos
{
    public class ServicoChatOpenAI
    {
        private readonly IServicoChatOpenAI _chatIAServico;

        public ServicoChatOpenAI(IServicoChatOpenAI chatIaService)
        {
            _chatIAServico = chatIaService;
        }

        public async Task<string> ObterRespostaAsync(string mensagem, CancellationToken cancellationToken = default)
        {
            return await _chatIAServico.EnviarMensagemAsync(mensagem, cancellationToken);
        }
    }
}
