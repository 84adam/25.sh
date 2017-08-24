#!/bin/bash

# 25.sh -- Top 25 Cryptocurrencies by Market Cap -- Via coinmarketcap.com 
# 
# ************************ GET DATA ******************************************* #
# Grab Top 25 Coins from https://api.coinmarketcap.com/v1/ticker/?limit=25

echo "/// ... UPDATING PRICES ... ///"
sleep 0.5
echo " "

curl --silent 'https://api.coinmarketcap.com/v1/ticker/?limit=25' > ./top25.json

# *********************** PARSE DATA USING JQ ********************************* #
# Useful resource on 'jq': https://stedolan.github.io/jq/manual/

# Grab .name from JSON and create Name array 'aNAME'

jq -r '.[] | .name' ./top25.json > top25names.log
declare -a aNAME
readarray -t aNAME < top25names.log

# Grab .symbol from JSON and create Symbol array 'aSYM'

jq -r '.[] | .symbol' ./top25.json > top25symbol.log
declare -a aSYM
readarray -t aSYM < top25symbol.log

# Grab .price_usd from JSON and create USD array 'aUSD'

jq -r '.[] | .price_usd' ./top25.json > top25usd.log
declare -a aUSD
readarray -t aUSD < top25usd.log

# Grab .market_cap_usd from JSON and create MCAP array 'aMCAP'

jq -r '.[] | .market_cap_usd' ./top25.json > top25mcap.log
declare -a aMCAP
readarray -t aMCAP < top25mcap.log

# ************************ FORMAT AND PRINT DATA ******************************************* #
# Print each coin in a list by calling array/line with 'counting' by 'seq': | prepend line #.
# Print ordered list of associate .name and .symbol arrays

for var in `seq 0 24`;
do printf "${aNAME[$var]} (${aSYM[$var]}) - \$${aUSD[$var]} USD - \$${aMCAP[$var]} MCAP\n";
done | nl -s ". "

echo " "
echo "VIA: http://coinmarketcap.com"
echo " "

# TO DO: Format large numbers better, possibly using 'awk'
# awk 'BEGIN{ u[0]=""; u[1]="K"; u[2]="M"; u[3]="B"; u[4]="T"} 
# { n = $1; i = 0; while(n > 1000) { i+=1; n= int(n/1000) } print n u[i] } '
# ./top25mcap.log | ns -s ". "
# (WIP)
#
# TO DO: Round numbers up/down using 'bc'
