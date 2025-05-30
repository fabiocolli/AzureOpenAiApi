using Azure.AI.OpenAI;
using Dominio.Interfaces;
using OpenAI.Chat;
using System.ClientModel;

namespace InfraEstrutura.Servicos
{
    public class ServicoAzureOpenAI : IServicoChatOpenAI
    {
        public async Task<string> EnviarMensagemAsync(string mensagem, CancellationToken cancellationToken = default)
        {
            var token = "Aqui coloca o Token do Azure Open AI";

            AzureOpenAIClient azureClient = new(
                new Uri("Aqui coloca a URI que é gerada"),
                new ApiKeyCredential(token));

            var mensagens = new List<ChatMessage>
                {
                    new SystemChatMessage(@"Você é um assistente de IA que ajuda as pessoas a encontrar informações."),
                    new SystemChatMessage(mensagem)
                };


            var opcoes = new ChatCompletionOptions
            {
                Temperature = (float)0,
                MaxOutputTokenCount = 800,

                TopP = (float)1,
                FrequencyPenalty = (float)0,
                PresencePenalty = (float)0
            };

            ChatClient chatClient = azureClient.GetChatClient("Aqui coloca o nome da implantação do Chat");

            ChatCompletion conclusao = await chatClient.CompleteChatAsync(mensagens, opcoes);

            var resposta = $"{conclusao.Role}: {conclusao.Content[0].Text}";

            return resposta;
        }
    }
}
