FROM heroku/ruby

MAINTAINER Dale-Kurt Murray "dalekurt.murray@gmail.com"

# Bootstrap
RUN \
	apt-get -qq update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y -q && \
  bison flex libffi-dev libxml2-dev libgdk-pixbuf2.0-dev && \ 
  libcairo2-dev libpango1.0-dev ttf-lyx