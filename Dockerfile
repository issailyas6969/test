FROM node:20-alpine

WORKDIR /app

COPY package.json ./

# No package-lock.json present, install production dependencies only
RUN npm install --omit=dev

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
