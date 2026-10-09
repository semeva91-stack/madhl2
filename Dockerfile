FROM node:22-bookworm-slim
WORKDIR /app
RUN corepack enable
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile
COPY . .
RUN pnpm build
RUN mkdir -p /app/uploads
EXPOSE 3000
CMD ["sh", "-c", "pnpm db:push && pnpm start"]
