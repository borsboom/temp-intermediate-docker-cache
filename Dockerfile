FROM nginx:1.19-alpine-perl

ARG BUILDER_IMAGE_ID

#@@@ ADJUST --from
COPY --from=${BUILDER_IMAGE_ID} /app/public/ /usr/share/nginx/html

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]
