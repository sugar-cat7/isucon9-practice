# alp install
wget https://github.com/tkuchiki/alp/releases/download/v1.0.10/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo install ./alp /usr/local/bin/alp
rm alp_linux_amd64.zip
rm alp

# pt-query-digest install
sudo apt update
sudo apt install percona-toolkit

echo alias bench='cd /home/isucon/isucari && bin/benchmarker' >>~/.bashrc
echo alias alpj='alp json --sort sum -r -m "/posts/[0-9]+,/@\w+,/image/\d+" -o count,method,uri,min,avg,max,sum < /var/log/nginx/access.log' >>~/.bashrc
mkdir -p /home/isucon/logs
echo alias　pqd='pt-query-digest /var/log/mysql/mysql-slow.log | tee /home/isucon/logs/digest_$(date+%Y%m%d%H%M).txt; sudo rm -f /var/log/mysql/mysql-slow.log' >>~/.bashrc
