FROM debian:buster
MAINTAINER Asciishell
# Based on https://github.com/Hubbitus/Docker-latex
RUN sed -ri 's/(main)$/\1 contrib non-free/g' /etc/apt/sources.list \
	&& apt-get update --fix-missing -qq -y \
	&& echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections \
	&& apt-get install -y \
		texlive-latex-base \
		texlive-xetex \
		texlive-latex-extra \
		texlive-latex-recommended \
		texlive-latex-extra \
		fontconfig \
		\
		texlive-lang-cyrillic \
		xfonts-scalable \
		ttf-mscorefonts-installer \
		scalable-cyrfonts-tex \
		\
		texlive-base \
		texlive-extra-utils \
		texlive-font-utils \
		texlive-fonts-recommended \
		texlive-latex-base \
		texlive-latex-extra \
		texlive-pictures \
		texlive-science \
	    \
	    graphviz\
	    python3\
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*


WORKDIR /source