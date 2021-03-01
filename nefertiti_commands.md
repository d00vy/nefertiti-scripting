## cryptotrader --help
```
$ cryptotrader --help
Usage: cryptotrader [--version] [--help] <command> [<args>]

Available commands are:
    about        About cryptotrader.
    agg          Calculates the aggregation level for a given market pair.
    base         Get the base symbol for a given market pair.
    book         Get a list of all public orders on a market.
    buy          Opens new limit buy orders on the specified exchange/market.
    cancel       Cancels all your buy or sell orders on a given market.
  * exchanges    Get a list of supported exchanges.
  * listen       Starts a server listening to the specified port.
    markets      Get a list of available currency pairs for trading.
    notify       Send a notification.
    order        Place an order with the specified exchange.
    quote        Get the quote symbol for a given market pair.
    sell         Automatically opens new sell orders on the specified exchange/market.
    stoploss     Place a stop-loss order with the specified exchange.
  * update       Check for a new version.
```

## cryptotrader buy --help
```
$ cryptotrader buy --help
Usage: ./cryptotrader buy [options]

The buy command opens new limit buy orders on the specified exchange/market.

Options:
  --exchange = name, for example: Bittrex
  --market   = a valid market pair.
  --size     = amount of cryptocurrency to buy per order. please note --size is
               mutually exclusive with --price, eg. the price in quote currency
               you will want to pay for an order.
  --agg      = aggregate public order book to nearest multiple of agg.
               (optional)
  --dip      = percentage that will kick the bot into action.
               (optional, defaults to 5%)
  --pip      = range in where the market is suspected to move up and down.
               the bot will ignore supports outside of this range.
               (optional, defaults to 30%)  
  --dist     = distribution/distance between your orders.
               (optional, defaults to 2%)
  --top      = number of orders to place in your book.
               (optional, defaults to 2)
  --max      = maximum price that you will want to pay for the coins.
               (optional)
  --min      = minimum price that you will want to pay for the coins.
               (optional)
  --dca      = if included, then slowly but surely, the bot will proportionally
               increase your stack while lowering your average buying price.
               (optional)
  --test     = if included, merely reports what it would do.
               (optional, defaults to false)
  --repeat   = if included, repeats this command every X hours.
               (optional, defaults to false)

Alternative Strategy:
  The trading bot can listen to signals (for example: Telegram bots) as an
  alternative to the built-in strategy. Please refer to the below options.

Alternative Strategy Options:
  --exchange = name, for example: Bittrex
  --signals  = provider, for example: MiningHamster 
  --price    = price (in quote currency) that you will want to pay for an order
  --quote    = currency that is used as the reference, for example: BTC or USDT
  --min      = minimum price for a unit of quote currency.
               optional, for example: 0.00000050
  --volume   = minimum BTC volume over the last 24 hours.
               optional, for example: --volume=10
  --devn     = buy price deviation. this multiplier is applied to the suggested
               price from the signal, to calculate your actual limit price.
               optional, for example: --devn=1.01
  --valid    = if included, specifies the time (in hours, defaults to 1 hour)
               that the signal is "active". after this timeout elapses, the
               bot will cancel the (non-filled) limit buy order(s) associated
               with the signal.
               (optional, defaults to 1 hour)
  --repeat   = if included, repeats this command every X hours.
               (optional, defaults to false)
```

## cryptotrader sell --help
```
$ cryptotrader sell --help
Usage: ./cryptotrader sell [options]

The sell command listens for buy orders getting filled, and then opens new sell orders for them.

Options:
  --exchange = [name]
  --sandbox  = [Y|N] (optional)
  --strategy = [0|1|2|3|4] (see below)
  --notify   = [0|1|2|3] (see below)
  --mult     = multiplier, for example: 1.05 (aka 5 percent, optional)
  --hold     = name of the market not to sell, for example: BTC-EUR (optional)

Strategy:
  0 = Standard. No trailing. No stop-loss. Recommended, default strategy.
  1 = Trailing. As strategy #0, but includes trailing. Never sells at a loss.
  2 = Trailing Stop-Loss. As strategy #1, but potentially sells at a loss.
  3 = Trailing Stop-Loss Short/Mid Term. As strategy #2, but does not trail
      forever. Sells as soon as ticker >= mult.
  4 = Stop-Loss. No trailing. As strategy #0, but potentially sells at a loss.

Notify:
  0 = nothing, ever
  1 = errors only
  2 = errors + filled orders (default)
  3 = everything (including opened and cancelled orders)
```

## cryptotrader agg --help
```
$ cryptotrader agg --help
Usage: ./cryptotrader agg [options]

The agg command calculates the aggregation level for a given market pair.

Options:
  --exchange = name
  --market   = a valid market pair
  --dip      = percentage that will kick the bot into action.
               (optional, defaults to 5%)
  --pip      = range in where the market is suspected to move up and down.
               the bot will ignore supports outside of this range.
               (optional, defaults to 30%)  
  --max      = maximum price that you will want to pay for the coins.
               (optional)
  --min      = minimum price that you will want to pay for the coins.
               (optional)
```

## cryptotrader base --help
```
$ cryptotrader base --help
Usage: ./cryptotrader base [options]

The base command returns the base symbol for a given market pair.

Options:
  --exchange = name
  --market   = a valid market pair
```

## cryptotrader book --help
```
$ cryptotrader book --help
Usage: ./cryptotrader book [options]

The book command returns a list of all public orders on a market.

Options:
  --exchange = name
  --market   = a valid market pair
  --side     = [bids|asks] (optional, defaults to bids)
  --agg      = aggregate the book to nearest multiple of agg
```

## cryptotrader cancel --help
```
$ cryptotrader cancel --help
Usage: ./cryptotrader cancel [options]

The cancel command cancels all your buy or sell orders on a given market.

Options:
  --exchange = name
  --market   = a valid market pair
  --side     = [buy|sell]
```

## cryptotrader markets --help
```
$ cryptotrader markets --help
Usage: ./cryptotrader markets [options]

The markets command returns a list of available currency pairs for trading.

Options:
  --exchange=[name]
```

## cryptotrader notify --help
```
$ cryptotrader notify --help
Usage: ./cryptotrader notify [options]

The notify command sends a notification.

Options:
  --pushover-app-key=X
  --pushover-user-key=Y
or:
  --telegram-app-key=X
  --telegram-chat-id=Y
and:
  --msg="blah blah blah"
```

## cryptotrader order --help
```
$ cryptotrader order --help
Usage: ./cryptotrader order [options]

The order command places an order with the specified exchange.

Options:
  --exchange = name
  --side     = [buy|sell]
  --type     = [limit|market]
  --market   = a valid market pair
  --size     = amount of cryptocurrency to buy or sell
  --price    = price per unit (optional, not needed for market orders)
  --mult     = vector to multiply price with (optional, defaults to 1.0)
```

## cryptotrader quote --help
```
$ cryptotrader quote --help
Usage: ./cryptotrader quote [options]

The quote command returns the quote symbol for a given market pair.

Options:
  --exchange = name
  --market   = a valid market pair
```

## cryptotrader stoploss --help
```
$ cryptotrader stoploss --help
Usage: ./cryptotrader stoploss [options]

The stoploss command places a stop-loss order with the specified exchange.

Options:
  --exchange = name
  --type     = [limit|market]
  --market   = a valid market pair
  --size     = amount of cryptocurrency to sell
  --price    = price per unit
```
