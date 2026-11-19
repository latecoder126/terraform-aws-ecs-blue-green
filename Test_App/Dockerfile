
# Client build stage
FROM public.ecr.aws/docker/library/node:26-alpine AS client-builder

WORKDIR /app/client

RUN npm install -g yarn@1.22.22

COPY client/package.json client/yarn.lock ./
RUN yarn install --frozen-lockfile --ignore-scripts

COPY client/ .
RUN yarn build

# Server stage
FROM public.ecr.aws/docker/library/node:26-alpine AS server

WORKDIR /app

RUN npm install -g yarn@1.22.22

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --ignore-scripts

COPY . .
COPY --from=client-builder /app/client/build ./client/build

RUN chown -R node:node /app
USER node

EXPOSE 8080

CMD ["node", "index.js"]
