FROM oven/bun:1
WORKDIR /app
COPY . .
RUN bun install --frozen-lockfile && mkdir -p /app/data
ENV PORT=3000
ENV DATABASE_URL=file:/app/data/anki-cloud.db
EXPOSE 3000
CMD ["bun", "run", "api/src/index.ts"]
