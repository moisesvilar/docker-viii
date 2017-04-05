FROM centos:7
MAINTAINER Moises Vilar <moises.vilar@tecalis.com>

RUN yum -y update && \
    yum -y install httpd && \
	rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
	rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
	yum install -y php70w.x86_64 && \
	yum install -y php70w-fpm php70w-opcache && \
	yum install -y php70w-gd.x86_64 && \
	yum install -y php70w-mcrypt.x86_64 && \
	yum install -y php70w-mysql && \
	yum install -y php70w-devel.x86_64 && \
	yum install -y php70w-pear.noarch && \
	yum install -y php70w-mbstring && \
	yum install -y gcc gcc-c++ autoconf automake make && \
	pecl install Xdebug && \
    yum clean all
	
EXPOSE 80

ADD run-httpd.sh /run-httpd.sh
ADD php.ini /etc/php.ini
ADD httpd.conf /etc/httpd/conf/httpd.conf

RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
