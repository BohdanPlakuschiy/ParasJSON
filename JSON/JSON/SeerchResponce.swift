//
//  SeerchResponce.swift
//  JSON
//
//  Created by Богдан Плакущий on 10.03.2023.
//

import Foundation

struct Currency: Decodable {
        var ADA_BTC: Price?
        var ADA_USD: Price?
        var ADA_USDT: Price?
        var ALGO_BTC: Price?
        var ALGO_EUR: Price?
        var ALGO_RUB: Price?
        var ALGO_USDT: Price?
        var ATOM_BTC: Price?
        var ATOM_EUR: Price?
        var ATOM_USD: Price?
        var BCH_BTC: Price?
        var BCH_ETH: Price?
        var BCH_EUR: Price?
        var BCH_GBP: Price?
        var BCH_RUB: Price?
        var BCH_UAH: Price?
        var BCH_USD: Price?
        var BCH_USDT: Price?
        var BTC_EUR: Price?
        var BTC_GBP: Price?
        var BTC_KZT: Price?
        var BTC_PLN: Price?
        var BTC_RUB: Price?
        var BTC_UAH: Price?
        var BTC_USD: Price?
        var BTC_USDT: Price?
        var BTC_USDX: Price?
        var BTG_BTC: Price?
        var BTG_USD: Price?
        var CHZ_BTC: Price?
        var CRON_BTC: Price?
        var CRON_ETH: Price?
        var CRON_USDT: Price?
        var DAI_BTC: Price?
        var DAI_ETH: Price?
        var DAI_RUB: Price?
        var DAI_USD: Price?
        var DASH_BTC: Price?
        var DASH_RUB: Price?
        var DASH_UAH: Price?
        var DASH_USD: Price?
        var DASH_USDT: Price?
        var DCR_BTC: Price?
        var DEBT_BTC: Price?
        var DEBT_ETH: Price?
        var DEBT_USDT: Price?
        var DOGE_BTC: Price?
        var DOGE_EUR: Price?
        var DOGE_GBP: Price?
        var DOGE_USD: Price?
        var DOT_BTC: Price?
        var DOT_USD: Price?
        var DOT_USDT: Price?
        var ECS_BTC: Price?
        var ECS_EUR: Price?
        var EOS_BTC: Price?
        var EOS_EUR: Price?
        var EOS_USD: Price?
        var ETC_BTC: Price?
        var ETC_RUB: Price?
        var ETC_USD: Price?
        var ETC_USDT: Price?
        var ETH_BTC: Price?
        var ETH_EUR: Price?
        var ETH_GBP: Price?
        var ETH_KZT: Price?
        var ETH_LTC: Price?
        var ETH_PLN: Price?
        var ETH_RUB: Price?
        var ETH_UAH: Price?
        var ETH_USD: Price?
        var ETH_USDT: Price?
        var ETH_USDX: Price?
        var EXFI_BTC: Price?
        var EXM_BTC: Price?
        var EXM_ETH: Price?
        var EXM_RUB: Price?
        var EXM_USD: Price?
        var EXM_USDT: Price?
        var FLR_BTC: Price?
        var GAS_BTC: Price?
        var GAS_USD: Price?
        var GMT_BTC: Price?
        var GMT_USDT: Price?
        var GNY_BTC: Price?
        var GUSD_BTC: Price?
        var GUSD_RUB: Price?
        var GUSD_USD: Price?
        var HAI_BTC: Price?
        var IQN_BTC: Price?
        var IQN_USDT: Price?
        var LINK_BTC: Price?
        var LTC_BTC: Price?
        var LTC_EUR: Price?
        var LTC_GBP: Price?
        var LTC_RUB: Price?
        var LTC_UAH: Price?
        var LTC_USD: Price?
        var LYO_BTC: Price?
        var LYO_USDT: Price?
        var MKR_BTC: Price?
        var MKR_DAI: Price?
        var NEAR_BTC: Price?
        var NEAR_USD: Price?
        var NEAR_USDT: Price?
        var NEO_BTC: Price?
        var NEO_RUB: Price?
        var NEO_USD: Price?
        var OMG_BTC: Price?
        var OMG_ETH: Price?
        var OMG_USD: Price?
        var ONE_BTC: Price?
        var ONG_BTC: Price?
        var ONT_BTC: Price?
        var PLCUC_USDT:Price?
        var PLCU_USDT: Price?
        var PRQ_BTC: Price?
        var PRQ_USDT: Price?
        var QTUM_BTC: Price?
        var QTUM_ETH: Price?
        var QTUM_USD: Price?
        var ROOBEE_USDT: Price?
        var SGB_BTC: Price?
        var SHIB_BTC: Price?
        var SHIB_RUB: Price?
        var SHIB_UAH: Price?
        var SHIB_USD: Price?
        var SHIB_USDT: Price?
        var SOLO_BTC: Price?
        var SOL_BTC: Price?
        var SOL_USDT:Price?
        var TON_BTC: Price?
        var TON_USDT: Price?
        var TRX_BTC: Price?
        var TRX_EUR: Price?
        var TRX_RUB: Price?
        var TRX_UAH: Price?
        var TRX_USD: Price?
        var UNI_BTC: Price?
        var UNI_USDT: Price?
        var USDC_BTC: Price?
        var USDC_ETH: Price?
        var USDC_USD: Price?
        var USDT_EUR: Price?
        var USDT_GBP: Price?
        var USDT_KZT: Price?
        var USDT_PLN: Price?
        var USDT_RUB: Price?
        var USDT_UAH: Price?
        var USDT_USD: Price?
        var USDT_USDX: Price?
        var USD_RUB: Price?
        var USD_UAH: Price?
        var VLX_BTC: Price?
        var WAVES_BTC: Price?
        var WAVES_ETH: Price?
        var WAVES_RUB: Price?
        var WAVES_USD: Price?
        var WXT_BTC: Price?
        var WXT_USDT: Price?
        var XEM_BTC: Price?
        var XEM_EUR: Price?
        var XEM_UAH: Price?
        var XEM_USD: Price?
        var XLM_BTC: Price?
        var XLM_RUB: Price?
        var XLM_USD: Price?
        var XRP_BTC: Price?
        var XRP_ETH: Price?
        var XRP_EUR: Price?
        var XRP_GBP: Price?
        var XRP_RUB: Price?
        var XRP_UAH: Price?
        var XRP_USD: Price?
        var XRP_USDT: Price?
        var XTZ_BTC: Price?
        var XTZ_RUB: Price?
        var XTZ_USD: Price?
        var XYM_BTC: Price?
        var YFI_BTC: Price?
        var YFI_USDT: Price?
        var ZEC_BTC: Price?
        var ZEC_EUR: Price?
        var ZEC_RUB: Price?
        var ZEC_USD: Price?
        var ZRX_BTC: Price?
        var ZRX_ETH: Price?
        var ZRX_USD: Price?
}

struct Price: Decodable {
       var buy_price: String
       var sell_price: String
       var last_trade: String
       var high: String
       var low: String
       var avg: String
       var vol: String
       var vol_curr: String
       var updated: Int
    
}
