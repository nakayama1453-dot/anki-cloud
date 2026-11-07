FROM oven/bun:1
WORKDIR /app
COPY . .
RUN bun install --frozen-lockfile
ENV PORT=3000
EXPOSE 3000
CMD ["bun", "run", "api/src/index.ts"]
