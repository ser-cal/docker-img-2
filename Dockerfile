# Einfache Web-App zur Erklärung von Container-Umgebungen
# Linux x64
FROM alpine

LABEL maintainer="marcello.calisto@tbz.ch"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
