FROM linode/lamp

RUN apt-get update
RUN apt-get install -y nano wget libapache2-mod-mono mono-apache-server4 mono-devel unzip postfix
RUN a2enmod mod_mono_auto
ADD ./example.com.conf /etc/apache2/sites-enabled/
ADD ./mono-server4-hosts.conf /etc/mono-server4/

EXPOSE 80
