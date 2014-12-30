RUN=/var/wallproxy
mkdir -p $RUN 2>/dev/null
cp -a /usr/lib/wallproxy $RUN 2>/dev/null
exec python $RUN/startup.py 2>/dev/null
