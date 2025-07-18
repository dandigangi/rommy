FROM node:lts-alpine
WORKDIR /
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . .
RUN chmod +x *.sh
EXPOSE 3000
CMD ["yarn", "start"]