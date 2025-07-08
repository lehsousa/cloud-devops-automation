# Política de Homepage no Intune

## Objetivo
Aplicar uma política via Intune para definir a homepage padrão nos navegadores dos usuários.

## Navegadores suportados
- Microsoft Edge (Chrome será adicionado em breve)

## Como usar

1. Carregue o script `scripts/set-homepage.ps1` em uma política do Intune
2. Aplique a política em um grupo de dispositivos Windows
3. Verifique em uma máquina de teste se a homepage foi alterada
4. Documente com prints e salve em `/images`

## Requisitos
- Dispositivo Windows 10/11 registrado no Intune
- Permissões de administrador
- Política de execução de script permitida
