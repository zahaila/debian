#!/bin/bash

sed -i -e 's/# en_US.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen && \
echo 'LANG="pt_BR.UTF-8"' > /etc/default/locale && \
dpkg-reconfigure --frontend=noninteractive locales && \
update-locale LANG=pt_BR.UTF-8

echo "Locale: $(locale)"

echo "Ajustando timezone, data e hora"
export TZ=America/Cuiaba
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

echo "Timezone: $(cat /etc/timezone)"
echo "Data e hora $(date)"