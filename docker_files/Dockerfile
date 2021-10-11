FROM node:alpine as build_context

RUN apk add --update git
RUN git clone https://github.com/saratsarat7/2048-in-react /home/app/git

WORKDIR /home/app/git

RUN npm install
RUN npm run build

FROM nginx

COPY --from=build_context /home/app/git/build /usr/share/nginx/html