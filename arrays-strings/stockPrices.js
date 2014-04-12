// I have an array stockPricesYesterday where the keys are the number of minutes into the day (starting with midnight)
// and the values are the price of Apple stock at that time.
// For example, the stock cost $500 at 1am, so stockPricesYesterday[60] = 500.
// Write an efficient algorithm for computing the best profit I could have made from 1 purchase and 1 sale of an Apple stock yesterday.

function bestProfit(stockPricesYesterday) {
  var maxProfit = 0;
  for (var mins in stockPricesYesterday) {
    var buy = stockPricesYesterday[mins];
    for (var i = mins; i < 1440; i++) {
      var sell = stockPricesYesterday[i];
      if (sell && (sell-buy > maxProfit)) {
        maxProfit = sell-buy;
      }
    }
  }
  return maxProfit;
}

function bestProfitOptimized(stockPricesYesterday) {
  var minPrice;
  var maxProfit = 0;
  for (var mins in stockPricesYesterday) {
    var currentPrice = stockPricesYesterday[mins];
    minPrice = Math.min(minPrice, currentPrice) || currentPrice;
    maxProfit = Math.max(maxProfit, currentPrice-minPrice);
  }
  return maxProfit;
}

var stockPrices = {
  60: 100,
  70: 200,
  80: 300,
  90: 400
};

console.log(bestProfit(stockPrices));