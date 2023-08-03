docker run \
  --volume=/var/lib/drone:/data \
  --env=DRONE_GITHUB_CLIENT_ID=6ad4de7ff58e37a87854 \
  --env=DRONE_GITHUB_CLIENT_SECRET=9a98cbbcbc97f60858a22579700587219800d7e2 \
  --env=DRONE_RPC_SECRET=7979966c6d1d694458a3f1474b107c99 \
  --env=DRONE_SERVER_HOST=157.90.249.161 \
  --env=DRONE_SERVER_PROTO=http \
  --env=DRONE_USER_CREATE=username:sid,admin:true \
  --publish=80:80 \
  --publish=443:443 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:2
