FROM debian:buster-slim

RUN set -x \
	&& sed -i 's@/deb.debian.org/@/mirrors.aliyun.com/@g;s@/security.debian.org/@/mirrors.aliyun.com/@g' /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		make \
		curl \
		lib32z1 \
		g++-multilib \
		ca-certificates \
		git \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/*