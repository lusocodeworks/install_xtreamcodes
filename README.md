# 📡 Instalação do Xtream Codes – Main Server e Load Balancer  

Este guia explica como instalar o **Xtream Codes** em servidores **Main** e **Load Balancer** com **Ubuntu 18**.

## 📌 **Pré-requisitos**  

Antes de iniciar a instalação, certifique-se de que está a utilizar um servidor limpo com **Ubuntu 18** e execute os seguintes comandos como **root**:

```bash
apt-get update && apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y
```

## 🚀 **Instalação Automática**  

Para instalar  **Xtream Codes**, basta rodar o seguinte comando:

```bash
wget https://raw.githubusercontent.com/lusocodeworks/install_xtreamcodes/main/install.py && sudo python install.py
```

Isso baixará e executará o script de instalação automaticamente.

---

## 🌍 **Correção do GeoLite2.mmdb (Problema canais nao iniciam)**  

O arquivo **GeoLite2.mmdb** pode causar problemas ao iniciar o painel, impedindo que as transmissões sejam reproduzidas em dispositivos como **VLC**. Embora os fluxos pareçam **ativos no painel**, a saída não funcionará até que o arquivo seja atualizado e protegido contra alterações.

Para corrigir esse problema, execute os seguintes comandos:

```bash
sudo chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb
sudo wget -q https://geolite-update.xyz/GeoLite2.mmdb -O /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb
sudo chattr +i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb
```

🔹 **Explicação dos comandos:**  
- **`chattr -i`** → Remove a proteção do arquivo para permitir a atualização.  
- **`wget -q`** → Baixa a versão mais recente do **GeoLite2.mmdb**.  
- **`chattr +i`** → Bloqueia o arquivo novamente para evitar remoções futuras.  

---
Erro libcurl4-openssl

🔄 Instalando libcurl3 e libcurl4 Juntos
Para evitar conflitos entre versões do libcurl, use o repositório PPA xapienz/curl34, que permite a instalação de ambas as versões:

```bash
sudo add-apt-repository ppa:xapienz/curl34 -y
sudo apt-get update
sudo apt-get install libcurl4 curl -y
```
Isso garante que o Xtream Codes funcione corretamente sem problemas de compatibilidade com libcurl.


## ⚠️ **Dicas Importantes**  

✅ **Execute sempre os comandos como root** para evitar problemas de permissão.  
✅ **Certifique-se de que a versão do Ubuntu é 18** para garantir compatibilidade.  
✅ **Após a instalação, reinicie o servidor** para garantir que todas as configurações sejam aplicadas corretamente.

Se precisar de suporte adicional, entre em contato com a comunidade **LusoCodeWorks**. 🚀
