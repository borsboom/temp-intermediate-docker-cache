FROM nginx:1.19-alpine-perl

#@@@ ADJUST --from
COPY --from=builder /app/public/ /usr/share/nginx/html

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]
