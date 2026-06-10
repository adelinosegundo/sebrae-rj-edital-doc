# Exportacao TOOTZ para Impressao

Fluxo inspirado no repositório `contrattz` para gerar `DOCX` e `PDF` dos documentos da `TOOTZ` preparados em `sebrae/`.

## Documentos cobertos

- `02-equipe/00-vinculo-tootz/contrato-vinculo-gamemind-tootz.md`
- `02-equipe/01-gerente-de-projetos/declaracao-luan-santos.md`
- `02-equipe/02-lider-de-desenvolvimento-front-end/declaracao-wendell-barreto.md`
- `02-equipe/03-lider-de-desenvolvimento-back-end/declaracao-adelino-segundo.md`

## Dependencias

Instalar antes de executar:

```bash
brew install pandoc libreoffice
python3 -m pip install python-docx Pillow
```

## Usando o branding do repo de referencia

Se quiser reutilizar o `logo.png` e o `contrato-reference.docx` do repo `contrattz`, exporte com a variavel `CONTRATTZ_DIR` apontando para a pasta clonada do repo.

Exemplo:

```bash
CONTRATTZ_DIR="/var/folders/04/hjzvvg3j69j9c7gsg2mmfn9c0000gn/T/opencode/contrattz" \
zsh tools/tootz-export/gerar-docx-pdf-tootz.sh
```

Se a variavel nao for informada, os DOCX/PDFs ainda serao gerados, mas sem o `reference docx` e sem a logo no cabecalho.

## Saida

Os arquivos sao gerados em:

```text
exports/tootz/
```

Com extensoes:

- `.docx`
- `.pdf`

## Observacao

Antes de exportar, confirme que os documentos Markdown ja estao finais, com datas, textos e espacos de assinatura corretos.
