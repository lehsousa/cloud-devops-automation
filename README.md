# Windows Endpoint Configuration Lab | PowerShell & Intune

**PowerShell · Windows Registry Policies · Microsoft Edge · Microsoft Intune learning**

[English](#english) | [Português](#português)

## English

### Overview

An initial Windows endpoint configuration lab exploring Microsoft Edge browser policies through PowerShell and documenting a possible deployment workflow with Microsoft Intune.

Project by **Leandro Sousa de Jesus** — [LinkedIn](https://www.linkedin.com/in/leandrosousajesus/) · [GitHub](https://github.com/lehsousa).

### What is currently in this repository

| File | Current scope |
|---|---|
| `scripts/set-homepage.ps1` | Initial script that writes Edge policy values under HKLM |
| `docs/homepage-intune.md` | Short outline for assigning the script to Windows devices through Intune |
| `README.md` | Scope, known issue and validation plan |

The implemented script targets **Microsoft Edge only**. Terraform, GitHub Actions, Azure resource provisioning, Docker and Chrome support are not implemented here. They should not be inferred from the repository's original name.

### Current status: prototype requiring correction

The script is an initial example, not a validated deployment package.

A known issue exists in the startup URL configuration: it writes `RestoreOnStartupURLs` as a property under the Edge policy key. Microsoft documents a separate `RestoreOnStartupURLs` subkey with numbered string values such as `1`, `2`, and so on. Correct that implementation before testing startup behavior.

The target URL is a placeholder. The script does not currently include a detection script, rollback, structured error handling or deployment evidence.

See Microsoft's [RestoreOnStartupURLs policy reference](https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies/RestoreOnStartupURLs). Homepage and browser startup are distinct settings and should be validated separately.

### Suggested lab validation sequence

1. Correct the startup policy structure and replace the placeholder with a controlled test URL.
2. Review registry value types and the intended device/user execution context.
3. Test on an isolated Windows device with appropriate permissions.
4. Verify the effective policies in `edge://policy`, then check browser behavior.
5. Document the result and add error handling, detection and rollback before considering a managed rollout.

The historical Intune deployment outline is a starting point; this repository does not provide evidence of a completed rollout or integration with a live tenant.

### Professional relevance

The lab relates to Windows endpoint administration, browser configuration, PowerShell and policy deployment concepts used in Modern Workplace environments. Its value is the configuration problem and learning process, with its current limitations made explicit.

### License

MIT, as stated in the original README. A standalone LICENSE file has not yet been included.

## Português

### Visão geral

Laboratório inicial de configuração de endpoints Windows, com foco em políticas do Microsoft Edge por PowerShell e documentação de um possível fluxo de implantação pelo Microsoft Intune.

Projeto de **Leandro Sousa de Jesus**.

### Escopo atual

- Um script inicial em `scripts/set-homepage.ps1`.
- Um roteiro curto de implantação em `docs/homepage-intune.md`.
- Configuração direcionada somente ao Microsoft Edge.

Não há implementação de Chrome, Terraform, GitHub Actions, provisionamento de recursos Azure ou Docker neste repositório.

### Estado do projeto

O projeto é um **protótipo que requer correção antes de validação**. O script grava `RestoreOnStartupURLs` como uma propriedade, mas a documentação da Microsoft define uma subchave com valores de texto numerados. A URL também precisa ser substituída por um endereço de teste controlado.

Ainda não existem detecção, reversão, tratamento estruturado de erros ou evidências de implantação. Página inicial e páginas abertas na inicialização são configurações diferentes.

### Próximas etapas técnicas

Corrigir a estrutura da política, revisar os tipos de valores e o contexto de execução, testar em um dispositivo isolado e verificar o resultado em `edge://policy`. A documentação do Intune permanece como roteiro inicial, sem comprovação de rollout.

### Competências relacionadas

Administração de endpoints Windows, políticas de navegador, PowerShell e conceitos de gerenciamento com Microsoft Intune. O projeto deve ser apresentado como laboratório em evolução.
