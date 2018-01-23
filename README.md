# daemon-in2csv

Convert every XLSX files into CSV from ` ${WORKSPACE} `

## Requirements

- in2csv (csvkit)

## init

- Edit ` config.sh `
- Launch as root ` bash init_root.sh  `
- Launch as apache/www-data ` su -c './daemon-in2csv.sh apache -s /bin/bash'  `
