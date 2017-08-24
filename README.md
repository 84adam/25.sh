# 25.sh

## Top 25 Cryptocurrencies by Market Cap

- 25.sh grabs the Top 25 coins/prices from https://api.coinmarketcap.com/v1/ticker/?limit=25 using `curl`
- 25.sh formats the JSON data using `jq`
- 25.sh prints out the output to your terminal for you

REQUIRED PACKAGES:

- `jq`
- `curl`

INSTRUCTIONS:

+ Download: `wget https://github.com/84adam/25.sh/archive/master.zip`
+ Unzip: `unzip master.zip`
+ Enter directory: `cd 25.sh-master/`
+ Make executable: `chmod +x 25.sh`
+ **Run it: `./25.sh`**

EXAMPLE OUTPUT:

```
$ ./25.sh
/// ... UPDATING PRICES ... ///
 
     1. Bitcoin (BTC) - $4140.29 USD - $68408819266.0 MCAP
     2. Ethereum (ETH) - $318.169 USD - $29972887936.0 MCAP
     3. Bitcoin Cash (BCH) - $677.527 USD - $11195049632.0 MCAP
     4. Ripple (XRP) - $0.255154 USD - $9783584632.0 MCAP
     5. Litecoin (LTC) - $52.2927 USD - $2750259118.0 MCAP
     6. IOTA (MIOTA) - $0.83713 USD - $2326828186.0 MCAP
     7. NEM (XEM) - $0.248939 USD - $2240451000.0 MCAP
     8. Dash (DASH) - $292.04 USD - $2193238499.0 MCAP
     9. NEO (NEO) - $39.7016 USD - $1985080000.0 MCAP
    10. Ethereum Classic (ETC) - $15.3554 USD - $1456031612.0 MCAP
    11. Monero (XMR) - $93.116 USD - $1392421883.0 MCAP
    12. BitConnect (BCC) - $127.841 USD - $831547278.0 MCAP
    13. OmiseGo (OMG) - $8.10775 USD - $797089313.0 MCAP
    14. Qtum (QTUM) - $11.7387 USD - $692583300.0 MCAP
    15. Stratis (STRAT) - $5.98618 USD - $589728291.0 MCAP
    16. Zcash (ZEC) - $227.846 USD - $461873747.0 MCAP
    17. Waves (WAVES) - $4.58108 USD - $458108000.0 MCAP
    18. EOS (EOS) - $1.40573 USD - $423750873.0 MCAP
    19. TenX (PAY) - $3.57927 USD - $374611087.0 MCAP
    20. BitShares (BTS) - $0.136954 USD - $355844839.0 MCAP
    21. Lisk (LSK) - $3.12752 USD - $348130225.0 MCAP
    22. Tether (USDT) - $1.00029 USD - $319593973.0 MCAP
    23. Steem (STEEM) - $1.23459 USD - $296138987.0 MCAP
    24. Binance Coin (BNB) - $2.5868 USD - $258680000.0 MCAP
    25. Iconomi (ICN) - $2.96159 USD - $257363207.0 MCAP
 
VIA: http://coinmarketcap.com

```

ROADMAP: Future plans include...

- using `bc` for rounding of large numbers
- using `awk` to improve formatting of output (column and/or tab separated)
