# Exemplo de Integra��o com Azure OpenAI (.NET 8 + C# 12)

## Proposta

Este projeto tem como objetivo demonstrar uma conex�o simples e b�sica com os recursos do **Azure OpenAI** da Microsoft, utilizando uma API ASP.NET Core para expor um endpoint que interage com o servi�o de IA.

---

## Estrutura do Projeto

- **Dominio**: Contratos e interfaces.
- **InfraEstrutura**: Implementa��o da integra��o com Azure OpenAI.
- **Web.Api**: API ASP.NET Core para expor os endpoints REST.

---

## Principais Bibliotecas e SDKs Utilizados

- [Azure.AI.OpenAI](https://www.nuget.org/packages/Azure.AI.OpenAI) (`2.1.0`): SDK oficial para integra��o com o Azure OpenAI.
- [Azure.Identity](https://www.nuget.org/packages/Azure.Identity) (`1.14.0`): Gerenciamento de credenciais para autentica��o segura.
- [Swashbuckle.AspNetCore](https://www.nuget.org/packages/Swashbuckle.AspNetCore) (`6.6.2`): Gera��o autom�tica de documenta��o Swagger para APIs ASP.NET Core.

---

## Como Executar

1. **Pr�-requisitos**:
   - .NET 8 SDK instalado
   - Conta e recurso configurado no Azure OpenAI

2. **Configura��o**:
   - Altere o token e endpoint do Azure OpenAI no arquivo `ServicoAzureOpenAI.cs` para os valores do seu recurso.

3. **Build e execu��o**: