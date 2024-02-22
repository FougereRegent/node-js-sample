FROM node:20.10

ENV PORT=80

WORKDIR /app
COPY ./bin ./bin
COPY ./public ./public
COPY ./routes ./routes
COPY ./views ./views
COPY ./app.js .
COPY ./package.json .

RUN yarn install

ENTRYPOINT ["yarn"]
CMD ["start"]

