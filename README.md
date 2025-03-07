# install Xtreamcodes
Instalação para main server e loadbalancer em Ubuntu 18


apt-get update && apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y && wget https://raw.githubusercontent.com/lusocodeworks/install_xtreamcodes/main/install.py && sudo python install.py


GeoLite2.mmdb Update – Solução para corrigir problemas de transmissão não executada: O ficheiro denominado GeoLite2.mmdb bloqueia ao iniciar o painel e isto faz com que as transmissões não sejam reproduzidas nos seus dispositivos como o VLC. Os fluxos continuam a ser apresentados online no seu painel, mas a saída não funcionará até que seja atualizada e as permissões sejam bloqueadas para evitar que sejam bloqueadas. Execute os seguintes comandos para atualizar e bloquear o ficheiro contra futuras eliminações.

sudo chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && sudo wget -q https://geolite-update.xyz/GeoLite2.mmdb -O /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && sudo chattr +i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb
