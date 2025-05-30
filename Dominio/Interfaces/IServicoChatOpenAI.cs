namespace Dominio.Interfaces
{
    public interface IServicoChatOpenAI
    {
        Task<string> EnviarMensagemAsync(string mensagem, CancellationToken cancellationToken = default);
    }
}
    