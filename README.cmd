@echo off
REM ============================================================
REM Projeto: Consumo de API Azure OpenAI (.NET 8, C# 12)
REM Descrição: Projeto ASP.NET Core Web API para consumir a API Azure OpenAI.
REM ============================================================

REM 1. Pré-requisitos:
REM    - .NET 8 SDK instalado: https://dotnet.microsoft.com/download
REM    - Conta Azure com recurso Azure OpenAI configurado
REM    - Visual Studio 2022 ou superior (recomendado)
REM    - Git instalado (opcional, para versionamento)

REM 2. Clonar o repositório (se aplicável)
REM git clone <url-do-repositorio>
REM cd <nome-do-repositorio>

REM 3. Restaurar dependências do projeto
dotnet restore

REM 4. Estrutura de Pastas Sugerida:
REM    - Web.Api\         (Projeto principal ASP.NET Core)
REM    - Dominio\         (Interfaces e entidades de domínio)
REM    - InfraEstrutura\  (Serviços de infraestrutura, integrações)

REM 5. Dependências principais (NuGet):
REM    - Microsoft.AspNetCore.OpenApi
REM    - Swashbuckle.AspNetCore (Swagger)
REM    - Microsoft.Extensions.Http
REM    - (Opcional) Azure.AI.OpenAI ou OpenAI.Client (caso use SDK oficial)

REM 6. Comandos para instalar dependências principais:
dotnet add Web.Api package Swashbuckle.AspNetCore
dotnet add Web.Api package Microsoft.AspNetCore.OpenApi
dotnet add Web.Api package Microsoft.Extensions.Http
REM dotnet add InfraEstrutura package Azure.AI.OpenAI

REM 7. Configuração do Azure OpenAI:
REM    - Adicione as chaves de API e endpoint no appsettings.json:
REM      {
REM        "AzureOpenAI": {
REM          "Endpoint": "<seu-endpoint>",
REM          "ApiKey": "<sua-chave-api>"
REM        }
REM      }

REM 8. Build do projeto:
dotnet build

REM 9. Executar o projeto:
dotnet run --project Web.Api

REM 10. Acessar a documentação Swagger:
REM      http://localhost:<porta>/swagger

REM ============================================================
REM Observações:
REM - Certifique-se de que as interfaces e serviços estejam corretamente implementados.
REM - O projeto utiliza Injeção de Dependência para abstração dos serviços.
REM - Para produção, configure variáveis de ambiente para as chaves sensíveis.
REM ============================================================
