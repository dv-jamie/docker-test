FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./

# install : 개발 당시 버전과 다른 최신 버전이 설치될 수 있음
# package-lock.json에 명시되어 있는 개발 당시 버전을 그대로 설치
RUN npm ci

COPY index.js .

ENTRYPOINT [ "node", "index.js" ]

# 제일 빈번히 발생하는 것일 수록 마지막에 작성하는 것이 효율적