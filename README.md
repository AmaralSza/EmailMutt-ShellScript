# Envio de E-mails com Mutt via Shell Script

Shellscript utilizado para enviar e-mails através do **Mutt**, testado em sistemas baseados no **Debian**.

## Instalação e Configuração

Para instalar os pacotes necessários, execute:

```bash
sudo apt-get install mutt libsasl2-modules
```

Crie o diretório para armazenar os arquivos de configuração:

```bash
sudo mkdir /opt/EnviaEmail
```

Edite o arquivo de configuração da conta (exemplo `contaX.muttrc`):

```bash
sudo nano /opt/EnviaEmail/contaX.muttrc
```

## Referência

Fonte do projeto Mutt: [http://www.mutt.org/](http://www.mutt.org/)
