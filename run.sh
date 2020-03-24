echo "Running: $1"
make $1 >/dev/null
time for i in `seq 1 10`; do ./$1 >/dev/null; done 