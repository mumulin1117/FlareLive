//
//  FLORENICZolorPalette.swift
//  OtrePresureoflare
//
//  Created by  on 2025/11/13.
//
import StoreKit

import UIKit


class FLORENICZolorPalette: NSObject {
    struct FLORENICBloomShade {
        var FLORENICShadeId: String
        var FLORENICShadeName: String
        var FLORENICShadeValues: (r: Int, g: Int, b: Int)
        
    }
    static let FLORENICshared = FLORENICZolorPalette()
    struct FLORENICHarmonyScheme {
        var FLORENICSchemeId: String
        var FLORENICSchemeName: String
        var FLORENICSchemeShades: [FLORENICBloomShade]
        
    }

    
    private var FLORENICquicksilver: ((Result<Void, Error>) -> Void)?
    struct FLORENICCreatorMood {
        var FLORENICMoodId: String
        var FLORENICMoodName: String
        var FLORENICMoodKeywords: [String]
        
    }
    private var FLORENICquietus: SKProductsRequest?
    private var FLORENICShadeLibrary: [FLORENICBloomShade] = []
       
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    private var FLORENICHarmonyCollection: [FLORENICHarmonyScheme] = []
    
    private var FLORENICMoodBoard: [FLORENICCreatorMood] = []

    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func FLORENICtimberline(FLORENICtopo productID: String, FLORENICtoucan: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                FLORENICtoucan(.failure(NSError(domain: "FlareLave",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: self.florenicFloralDesign(florenicIke: "Pwumrhcshkayseebsj udaivsraqbplxeids bolnp ytihiitso pdkelvnilcmem.")])))
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
    func FLORENICAddShade(name: String, r: Int, g: Int, b: Int) {
        let shade = FLORENICBloomShade(
            FLORENICShadeId: "FLORENIC_SHADE_\(FLORENICShadeLibrary.count + 1)",
            FLORENICShadeName: name,
            FLORENICShadeValues: (r, g, b)
        )
        FLORENICShadeLibrary.append(shade)
        
    }

}


extension FLORENICZolorPalette: SKProductsRequestDelegate {
    func FLORENICGetAllShades() -> [FLORENICBloomShade] {
        return FLORENICShadeLibrary
        
    }

    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let p = response.products.first else {
            DispatchQueue.main.async {
                self.FLORENICquicksilver?(.failure(NSError(domain: "FlareLave",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: self.florenicFloralDesign(florenicIke: "Psrkocdzuncetp pnsoatp zftolutnddn.")])))
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
    func FLORENICCreateHarmonyScheme(name: String, shadeIds: [String]) {
            var included: [FLORENICBloomShade] = []
            for item in FLORENICShadeLibrary {
                if shadeIds.contains(item.FLORENICShadeId) {
                    included.append(item)
                }
            }

            let scheme = FLORENICHarmonyScheme(
                FLORENICSchemeId: "FLORENIC_SCHEME_\(FLORENICHarmonyCollection.count + 1)",
                FLORENICSchemeName: name,
                FLORENICSchemeShades: included
            )
            FLORENICHarmonyCollection.append(scheme)
        }

        func FLORENICListHarmonySchemes() -> [FLORENICHarmonyScheme] {
            return FLORENICHarmonyCollection
        }

}

extension FLORENICZolorPalette: SKPaymentTransactionObserver {
    func FLORENICAddMood(name: String, keywords: [String]) {
           let mood = FLORENICCreatorMood(
               FLORENICMoodId: "FLORENIC_MOOD_\(FLORENICMoodBoard.count + 1)",
               FLORENICMoodName: name,
               FLORENICMoodKeywords: keywords
           )
           FLORENICMoodBoard.append(mood)
       }

      
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
                ? NSError(domain: "FlareLave", code: -999, userInfo: [NSLocalizedDescriptionKey: self.florenicFloralDesign(florenicIke: "Pmasyhmzeenhto rcvavnrczeqlqlleady.")])
                : (t.error ?? NSError(domain: "FlareLave", code: -3, userInfo: [NSLocalizedDescriptionKey: self.florenicFloralDesign(florenicIke: "Phukrdciheajsxev uffabihlgerdt.")]))
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
    func FLORENICQueryMood(by keyword: String) -> [FLORENICCreatorMood] {
        var result: [FLORENICCreatorMood] = []
        for mood in FLORENICMoodBoard {
            if mood.FLORENICMoodKeywords.contains(keyword) {
                result.append(mood)
            }
        }
        return result
    }
}

extension FLORENICZolorPalette {
    func FLORENICShadeContrastScore(_ a: FLORENICBloomShade, _ b: FLORENICBloomShade) -> Int {
           let dr = abs(a.FLORENICShadeValues.r - b.FLORENICShadeValues.r)
           let dg = abs(a.FLORENICShadeValues.g - b.FLORENICShadeValues.g)
           let db = abs(a.FLORENICShadeValues.b - b.FLORENICShadeValues.b)
           return dr + dg + db
       }

    func FLORENIClocalReceiptData() -> Data? {
        guard let FLORENICurl = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: FLORENICurl)
    }
    func FLORENICSuggestPairings() -> [(FLORENICBloomShade, FLORENICBloomShade)] {
            var pairs: [(FLORENICBloomShade, FLORENICBloomShade)] = []

            if FLORENICShadeLibrary.count < 2 { return pairs }

            for i in 0..<FLORENICShadeLibrary.count {
                for j in (i + 1)..<FLORENICShadeLibrary.count {
                    let a = FLORENICShadeLibrary[i]
                    let b = FLORENICShadeLibrary[j]
                    let contrast = FLORENICShadeContrastScore(a, b)

                    // simple meaningful pairing logic, low-contrast = harmony
                    if contrast < 200 {
                        pairs.append((a, b))
                    }
                }
            }
            return pairs
        }
    var FLORENIClastTransactionID: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    
}
