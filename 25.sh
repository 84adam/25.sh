#!/bin/bash

# DOWNLOAD TOP 25 CRYPTOCURRENCY PRICE DATA FROM COINMARKETCAP.COM USING 'curl'

headerSRC="%7s %50s %5s"
printf "\n"
printf "$headerSRC" "/////" "Downloading the latest price data from http://coinmarketcap.com ..." "/////"
printf "\n"

curl --silent 'https://api.coinmarketcap.com/v1/ticker/?limit=25' > top25.json

# PARSE JSON DATA INTO ARRAYS USING 'jq'

mapfile -t aSYM  < <( jq -r '.[] | .symbol' top25.json )
mapfile -t aNAME < <( jq -r '.[] | .name' top25.json )
mapfile -t aUSD  < <( jq -r '.[] | .price_usd' top25.json )
mapfile -t aMCAP < <( jq -r '.[] | .market_cap_usd' top25.json )
mapfile -t aBTC  < <( jq -r '.[] | .price_btc' top25.json )
mapfile -t aP24H < <( jq -r '.[] | .percent_change_24h' top25.json )
mapfile -t aP7D  < <( jq -r '.[] | .percent_change_7d' top25.json )

# DISPLAY TOP 25 COINS BY MARKET CAP

header="%7s %-22s %-6s %-12s %-17s %-13s %11s %12s\n"
format="%-22s %-6s %-1s %-10s %-1s %13s %3s %-10s %12s %12s\n"
printf "\n"
printf "$header" "RANK" "COIN" "SYMBOL" "PRICE" "MARKET CAP" "BTC PRICE" "24HR CH" "7DAY CH"
printf "\n"
for var in `seq 0 24`;
do printf "$format" "${aNAME[$var]}" "${aSYM[$var]}" "\$" "${aUSD[$var]}" "\$" "${aMCAP[$var]}" "B" "${aBTC[$var]}" "${aP24H[$var]} pct" "${aP7D[$var]} pct";
done | nl -s ". "
printf "\n"
printf "$header" " " "COIN" "SYMBOL" "PRICE" "MARKET CAP" "BTC PRICE" "24HR CH" "7DAY CH"
printf "\n"
