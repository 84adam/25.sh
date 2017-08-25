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
///// Downloading the latest price data from http://coinmarketcap.com ... /////

   RANK COIN              SYMBOL PRICE        MARKET CAP        BTC PRICE         24HR CH      7DAY CH

     1. Bitcoin           BTC    $ 4347.22    $ 71833680641.0   B 1.0            4.31 pct     0.61 pct
     2. Ethereum          ETH    $ 327.153    $ 30826691645.0   B 0.0750039      2.83 pct     7.83 pct
     3. Bitcoin Cash      BCH    $ 636.819    $ 10527342452.0   B 0.145998      -5.54 pct    35.27 pct
     4. Ripple            XRP    $ 0.214215   $  8213826089.0   B 0.00004911   -14.77 pct    36.57 pct
     5. Litecoin          LTC    $ 50.6216    $  2663179969.0   B 0.0116056     -2.72 pct    12.78 pct
     6. IOTA              MIOTA  $ 0.885964   $  2462563768.0   B 0.00020312     5.27 pct   -12.46 pct
     7. NEM               XEM    $ 0.260236   $  2342124000.0   B 0.00005966     3.12 pct     6.59 pct
     8. Dash              DASH   $ 307.344    $  2308802567.0   B 0.0704623      4.82 pct    29.01 pct
     9. NEO               NEO    $ 42.0855    $  2104275000.0   B 0.00964861     5.22 pct     6.77 pct
    10. Ethereum Classic  ETC    $ 15.2255    $  1444211468.0   B 0.00349062    -0.79 pct     9.02 pct
    11. Monero            XMR    $ 85.6222    $  1280362397.0   B 0.0196299     -7.29 pct    79.48 pct
    12. BitConnect        BCC    $ 149.081    $   970975688.0   B 0.0341787     15.88 pct    26.03 pct
    13. OmiseGo           OMG    $ 8.37799    $   823657154.0   B 0.00192075     3.52 pct     2.02 pct
    14. Qtum              QTUM   $ 13.7082    $   808783800.0   B 0.00314276    16.21 pct     7.25 pct
    15. Stratis           STRAT  $ 6.00972    $   592055272.0   B 0.0013778     -1.91 pct    -1.24 pct
    16. Waves             WAVES  $ 5.13838    $   513838000.0   B 0.00117804    11.38 pct    12.58 pct
    17. Zcash             ZEC    $ 230.32     $   468604754.0   B 0.0528035      0.74 pct    10.84 pct
    18. Lisk              LSK    $ 3.92897    $   437515424.0   B 0.00090076    21.85 pct     88.7 pct
    19. EOS               EOS    $ 1.38711    $   420904924.0   B 0.00031801    -1.05 pct    -9.13 pct
    20. TenX              PAY    $ 3.61288    $   378128754.0   B 0.0008283      0.77 pct   -12.12 pct
    21. BitShares         BTS    $ 0.134935   $   350605659.0   B 0.00003094    -2.23 pct     1.99 pct
    22. Tether            USDT   $ 1.00343    $   320597208.0   B 0.00023005     0.19 pct     0.37 pct
    23. Steem             STEEM  $ 1.26866    $   304406301.0   B 0.00029086      3.0 pct    14.23 pct
    24. Binance Coin      BNB    $ 2.72997    $   272997000.0   B 0.00062588     4.35 pct    29.59 pct
    25. Bytecoin          BCN    $ 0.00147701 $   270667303.0   B 0.00000034     8.58 pct    14.86 pct

        COIN              SYMBOL PRICE        MARKET CAP        BTC PRICE         24HR CH      7DAY CH
```
