FROM kalilinux/kali-linux-docker
MAINTAINER jianghanxia <jianghanxia@qq.com>

RUN apt-get update && apt-get -y install metasploit-framework && msfupdate

#Change to taobao Sources
RUN gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/ \
	&& bundle config mirror.https://rubygems.org https://ruby.taobao.org

RUN service postgresql restart

ENTRYPOINT ["/bin/bash"]