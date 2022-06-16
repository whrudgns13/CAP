



#노드버전
FROM node:16-alpine

#폴더생성
WORKDIR /usr/app

#CAP 프로젝트 생성시 필요한 라이브러리
RUN npm i -g @sap/cds-dk

#프로젝트생성
RUN cds init

#파일 복제
COPY srv/cat-service.cds /usr/app/srv
COPY srv/cat-service.js /usr/app/srv

#실행
CMD ["cds", "run"]
