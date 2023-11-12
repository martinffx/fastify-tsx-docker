FROM node:20-alpine

ENV PNPM_HOME "/pnpm"
ENV PATH "$PNPM_HOME:$PATH"
RUN corepack enable

COPY . /app
WORKDIR /app

RUN pnpm install --prod --frozen-lockfile

ENV NODE_ENV production
EXPOSE 3000

CMD ["pnpm","start"]
