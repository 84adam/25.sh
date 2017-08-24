#!/bin/bash

# 25.sh -- Top 25 Cryptocurrencies by Market Cap -- Via coinmarketcap.com 

# ******************************* GET DATA USING CURL *************************************** #
# Grab Top 25 Coins from https://api.coinmarketcap.com/v1/ticker/?limit=25
# Output to 'top25.json' file in current directory

echo "/// ... UPDATING PRICES ... ///"
sleep 0.5
echo " "
curl --silent 'https://api.coinmarketcap.com/v1/ticker/?limit=25' > top25.json

# ******************************* PARSE DATA USING JQ *************************************** #
# See 'jq' manual here: https://stedolan.github.io/jq/manual/
# Filter, map JSON data from top25.json file to arrays:
# .name -> 'aNAME'; .symbol -> 'aSYM'; .price_usd -> 'aUSD'; '.market_cap.usd' -> 'aMCAP'

mapfile -t aNAME < <( jq -r '.[] | .name' top25.json )
mapfile -t aSYM < <( jq -r '.[] | .symbol' top25.json )
mapfile -t aUSD < <( jq -r '.[] | .price_usd' top25.json )
mapfile -t aMCAP < <( jq -r '.[] | .market_cap_usd' top25.json )

# **************************** PRINT DATA USING PRINTF ************************************** #
# Print output, iterating through each 25-item array using 'seq'; number line outputs with 'nl'

for var in `seq 0 24`;
do printf "${aNAME[$var]} (${aSYM[$var]}) - \$${aUSD[$var]} USD - \$${aMCAP[$var]} MCAP\n";
done | nl -s ". "

# ************************* API/SOURCE DATA ATTRIBUTION ************************************* #

echo " "
echo "VIA: http://coinmarketcap.com"
echo " "

# ************************************** ROADMAP ******************************************** #
#
# 1. Improve number formatting: K, M, B, T (up to 'Trillions')
#    'awk' example:
#
#     awk 'BEGIN{ u[0]=""; u[1]="K"; u[2]="M"; u[3]="B"; u[4]="T"} 
#     { n = $1; i = 0; while(n > 1000) { i+=1; n= int(n/1000) } print n u[i] } '
#     <array-or-log-filename> | ns -s ". "
#
# 2. Round numbers up/down using 'bc'
#    For example: so that '1499999.99' becomes '1,500,000' (or '1.5M')
