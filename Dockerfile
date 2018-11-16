FROM nginx:latest
WORKDIR /var/lib/jenkins/openwebinar
COPY startbootstrap-resume-gh-pages /usr/share/nginx/html
EXPOSE 80