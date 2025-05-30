@echo off
REM ============================================================
REM Projeto: Consumo de API Azure OpenAI (.NET 8, C# 12)
REM Descri��o: Projeto ASP.NET Core Web API para consumir a API Azure OpenAI.
REM ============================================================

REM 1. Pr�-requisitos:
REM    - .NET 8 SDK instalado: https://dotnet.microsoft.com/download
REM    - Conta Azure com recurso Azure OpenAI configurado
REM    - Visual Studio 2022 ou superior (recomendado)
REM    - Git instalado (opcional, para versionamento)

REM 2. Clonar o reposit�rio (se aplic�vel)
REM git clone <url-do-repositorio>
REM cd <nome-do-repositorio>

REM 3. Restaurar depend�ncias do projeto
dotnet restore

REM 4. Estrutura de Pastas Sugerida:
REM    - Web.Api\         (Projeto principal ASP.NET Core)
REM    - Dominio\         (Interfaces e entidades de dom�nio)
REM    - InfraEstrutura\  (Servi�os de infraestrutura, integra��es)

REM 5. Depend�ncias principais (NuGet):
REM    - Microsoft.AspNetCore.OpenApi
REM    - Swashbuckle.AspNetCore (Swagger)
REM    - Microsoft.Extensions.Http
REM    - (Opcional) Azure.AI.OpenAI ou OpenAI.Client (caso use SDK oficial)

REM 6. Comandos para instalar depend�ncias principais:
dotnet add Web.Api package Swashbuckle.AspNetCore
dotnet add Web.Api package Microsoft.AspNetCore.OpenApi
dotnet add Web.Api package Microsoft.Extensions.Http
REM dotnet add InfraEstrutura package Azure.AI.OpenAI

REM 7. Configura��o do Azure OpenAI:
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

REM 10. Acessar a documenta��o Swagger:
REM      http://localhost:<porta>/swagger

REM ============================================================
REM Observa��es:
REM - Certifique-se de que as interfaces e servi�os estejam corretamente implementados.
REM - O projeto utiliza Inje��o de Depend�ncia para abstra��o dos servi�os.
REM - Para produ��o, configure vari�veis de ambiente para as chaves sens�veis.
REM ============================================================
