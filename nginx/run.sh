echo "nginx install.sh $*"

# USER_SECRET=$1
# DOMAIN=$2
# IP=$(curl -Lso- https://api.ipify.org);
# echo $IP
# guid="${1:0:8}-${1:8:4}-${1:12:4}-${1:16:4}-${1:20:12}"
# cloudprovider=${4:-$DOMAIN}


pkill nginx


pkill -9 nginx
certbot --nginx --register-unsafely-without-email -d $MAIN_DOMAIN --non-interactive --agree-tos  --https-port 444 --no-redirect
pkill -9 nginx
echo "https://$MAIN_DOMAIN/$USER_SECRET/">use-link

systemctl restart nginx
