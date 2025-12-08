//
//  FLORENICZolorPalette.swift
//  OtrePresureoflare
//
//  Created by mumu on 2025/11/13.
//
import StoreKit

import UIKit


class FLORENICZolorPalette: NSObject {
    
    static let shared = FLORENICZolorPalette()
    private var FLORENICquicksilver: ((Result<Void, Error>) -> Void)?
    private var FLORENICquietus: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func FLORENICtimberline(FLORENICtopo productID: String, FLORENICtoucan: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                FLORENICtoucan(.failure(NSError(domain: "RideFuel",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "Purchases disabled on this device."])))
            }
            
            return
        }
        
        self.FLORENICquicksilver = FLORENICtoucan
        FLORENICquietus?.cancel()
        let r = SKProductsRequest(productIdentifiers: [productID])
        r.delegate = self
        self.FLORENICquietus = r
        r.start()
    }

}

// MARK: - 产品请求
extension FLORENICZolorPalette: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let p = response.products.first else {
            DispatchQueue.main.async {
                self.FLORENICquicksilver?(.failure(NSError(domain: "RideFuel",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: "Product not found."])))
                self.FLORENICquicksilver = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: p))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.FLORENICquicksilver?(.failure(error))
            self.FLORENICquicksilver = nil
        }
        
    }
}

// MARK: - 交易回调
extension FLORENICZolorPalette: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for t in transactions {
            switch t.transactionState {
            case .purchased:
                SKPaymentQueue.default().finishTransaction(t)
                DispatchQueue.main.async {
                    self.FLORENICquicksilver?(.success(()))
                    self.FLORENICquicksilver = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(t)
                let e = (t.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "RideFuel", code: -999, userInfo: [NSLocalizedDescriptionKey: "Payment cancelled."])
                : (t.error ?? NSError(domain: "RideFuel", code: -3, userInfo: [NSLocalizedDescriptionKey: "Purchase failed."]))
                DispatchQueue.main.async {
                    self.FLORENICquicksilver?(.failure(e))
                    self.FLORENICquicksilver = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
            default:
                break
            }
        }
    }
}

extension FLORENICZolorPalette {
    
    func FLORENIClocalReceiptData() -> Data? {
        guard let url = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: url)
    }

    var FLORENIClastTransactionID: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    
}
