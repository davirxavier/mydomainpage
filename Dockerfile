FROM httpd:alpine

RUN apk add --no-cache git
RUN git clone https://github.com/davirxavier/mydomainhomepage.git repo

RUN rm /usr/local/apache2/htdocs/index.html
RUN mv -v repo/* /usr/local/apache2/htdocs/
