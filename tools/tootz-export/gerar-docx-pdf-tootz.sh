#!/bin/zsh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
OUT_DIR="$ROOT_DIR/exports/tootz"
SCRIPT_DIR="$ROOT_DIR/tools/tootz-export"

CONTRATTZ_DIR="${CONTRATTZ_DIR:-}"
REFERENCE_DOC=""
LOGO_FILE=""

if [[ -n "$CONTRATTZ_DIR" ]]; then
  REFERENCE_DOC="$CONTRATTZ_DIR/tootz/templates/contrato-reference.docx"
  LOGO_FILE="$CONTRATTZ_DIR/tootz/logo.png"
fi

DOCS=(
  "02-equipe/00-vinculo-tootz/contrato-vinculo-gamemind-tootz.md"
  "02-equipe/01-gerente-de-projetos/declaracao-luan-santos.md"
  "02-equipe/02-lider-de-desenvolvimento-front-end/declaracao-wendell-barreto.md"
  "02-equipe/03-lider-de-desenvolvimento-back-end/declaracao-adelino-segundo.md"
)

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    print -u2 "Dependencia faltando: $1"
    return 1
  }
}

need_python_mod() {
  python3 -c "import $1" >/dev/null 2>&1 || {
    print -u2 "Modulo Python faltando: $1"
    return 1
  }
}

need_cmd pandoc
need_cmd soffice
need_python_mod docx

mkdir -p "$OUT_DIR"

for rel in "${DOCS[@]}"; do
  input="$ROOT_DIR/$rel"
  base="$(basename "$rel" .md)"
  docx_out="$OUT_DIR/$base.docx"

  if [[ -n "$REFERENCE_DOC" && -f "$REFERENCE_DOC" ]]; then
    pandoc "$input" --reference-doc="$REFERENCE_DOC" -o "$docx_out"
  else
    pandoc "$input" -o "$docx_out"
  fi

  if [[ -n "$LOGO_FILE" && -f "$LOGO_FILE" ]]; then
    python3 "$SCRIPT_DIR/exportar.py" "$docx_out" "$LOGO_FILE"
  else
    python3 "$SCRIPT_DIR/exportar.py" "$docx_out"
  fi
done

soffice --headless --convert-to pdf --outdir "$OUT_DIR" "$OUT_DIR"/*.docx >/dev/null

print "Arquivos gerados em: $OUT_DIR"
