# 🛠️ Automação de Geração de Migração SQL

Este documento detalha o funcionamento e a configuração do script PowerShell (`.ps1`) responsável por consolidar múltiplos arquivos SQL em um único arquivo de migração (`migration.sql`).

---

## 📋 Objetivo

O script varre o diretório atual em busca de arquivos `.sql`, ordena-os por nome (garantindo a ordem de execução correta baseada em prefixos numéricos, ex: `001_`, `002_`) e concatena todo o conteúdo em um único arquivo de saída, adicionando o comando `GO` entre os scripts (necessário para o SQL Server).

---

## ⚙️ Estrutura do Script

O script executa as seguintes etapas lógicas:

### 1. Definição do Diretório

Identifica o diretório onde o script está sendo executado para garantir que apenas os arquivos daquela pasta específica (seja `seeds` ou `tables`) sejam processados.

```powershell
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
```

### 2. Definição do Arquivo de Saída

Define que o resultado final será salvo no mesmo diretório com o nome `migration.sql`.

```powershell
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"
```

### 3. Limpeza (Idempotência)

Verifica se já existe um arquivo `migration.sql` antigo e o remove para evitar duplicação de conteúdo.

```powershell
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}
```

### Coleta e Ordenação

Busca todos os arquivos com extensão `.sql` e os ordena alfabeticamente/numericamente pelo nome.

**Nota:** É crucial que os arquivos de origem tenham prefixos numéricos (ex: `001_create_table.sql`, `002_alter_table.sql`) para garantir a ordem correta de criação no banco.

```powershell
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name
```

### 5. Concatenação e Formatação

Itera sobre cada arquivo encontrado, copia seu conteúdo para o arquivo final e adiciona o comando `GO` ao final de cada bloco.

```powershell
foreach($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}
```

---

## 🚀 Como Executar

1. **Posicionamento**: Certifique-se de que o arquivo `.ps1` (ex: `to_migration.ps1`) esteja dentro da pasta que contém os scripts SQL (como visto na imagem: `db-scripts/seeds` ou `db-scripts/tables`).

2. **Terminal**: Abra o terminal do PowerShell no VS Code ou externamente.

3. **Execução**: Rode o comando apontando para o script:

    ```bash
    # Exemplo se estiver na raiz do projeto:
    .\db-scripts\seeds\to_migration.ps1

    # OU
    .\db-scripts\tables\to_migration.ps1
    ```

4. **Resultado**: Um novo arquivo `migration.sql` será criado na respectiva pasta contendo todo o código SQL unificado.

[Voltar para o arquivo DATABASE.md](../DATABASE.md)
