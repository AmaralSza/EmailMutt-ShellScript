#!/bin/bash
read -r -d '' versao <<HEREDOC
#######################################################
# Nome do Arquivo: EmailMutt.sh
# Autor: William Amaral de Souza
# Data de Criação: 16/09/2025
# Versao: X
# Data Modificacao: xx/xx/xxxx
# Descrição: 
#######################################################
HEREDOC
echo "$versao"


function EnviaEmail() {
EMAIL_PARA="email_para@gmail.com"
EMAIL_PARA2="email_para_oculto@gmail.com"
ASSUNTO="TESTE -`date +%d-%m-%y_%H:%M`"
MENSAGEM="Olá, este é um e-mail de teste."
#MENSAGEM=$(cat "$LOG")
#ANEXO="/destino/anexo.txt"

HOST="Mensagem automática enviada via servidor - `hostname`."
CONFIG_FILE="/opt/EnviaEmail/contaX.muttrc"
printf "%s\n\n%s" "$MENSAGEM" "$HOST" \
| mutt -F "$CONFIG_FILE" \
  -e 'set content_type=text/plain' \
  -e 'set charset=utf-8' \
  -s "$ASSUNTO" \
  ${ANEXO:+-a "$ANEXO"} \
  -b "$EMAIL_PARA2" \
  -- "$EMAIL_PARA"

  if [ $? -eq 0 ]; then
    echo "E-mail enviado com sucesso!"
    return 0
  else
    echo "Erro: O e-mail não pôde ser enviado. Verifique as configurações."
    return 1
  fi
}

EnviaEmail