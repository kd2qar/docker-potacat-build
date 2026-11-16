FROM debian:trixie-slim

RUN <<-TOOLS
	DEBIAN_FRONTEND="noninteractive"   
	apt-get update
	apt-get install -y git build-essential python3 libudev-dev cmake libhamlib-utils npm
	apt-get -y install locate vim
	rm -rf /var/lib/apt/lists/*
	rm -rf /var/cache/apt/archives/* 
	TOOLS

#ADD https://github.com/Waffleslop/POTACAT.git /POTACAT
#ADD POTACAT /POTACAT
RUN git clone https://github.com/Waffleslop/POTACAT.git /POTACAT

WORKDIR /POTACAT

RUN <<-NPM
	npm install
	npm run build-natives     # FT8 / JS8 / FreeDV native decoders
	#npm run dist:linux:deb
	NPM

COPY dot.bashrc /root/.bashrc

ENTRYPOINT ["npm","run", "dist:linux:deb"]

