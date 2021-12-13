FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf
COPY conf/nginx.conf /etc/nginx/
RUN rm /etc/nginx/conf.d/default.conf
COPY conf/default.conf.template /etc/nginx/conf.d/
COPY nginx-variables_setup.sh /

ENTRYPOINT ["/nginx-variables_setup.sh"]
CMD ["nginx", "-g", "daemon off;"]
