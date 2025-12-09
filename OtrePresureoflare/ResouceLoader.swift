import Foundation
import UIKit
import Zip

final class FLORENICResourceLoader {

    static let shared = FLORENICResourceLoader()
    private init() {}

    // MARK: - Constants
    private let FLORENICZipFileName = "FLORENICResource"
    
    private let FLORENICResourceFolderName = "FLORENICImage"
    
    private let FLORENICZipPassword = "098098"
    private let FLORENICResourceVersionKey = "FLORENIC_resource_version_key"
    private let FLORENICCurrentResourceVersion = "1.1"

    private var FLORENICDocumentPath: String {
        NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
    }

    private var FLORENICResourceRootPath: String {
        (FLORENICDocumentPath as NSString).appendingPathComponent(FLORENICZipFileName)
    }
}

// MARK: - Public Methods
extension FLORENICResourceLoader {


    func FLORENICPrepareResourcesIfNeeded() {
        let savedVersion = UserDefaults.standard.string(forKey: FLORENICResourceVersionKey)

        if savedVersion == FLORENICCurrentResourceVersion,
           FileManager.default.fileExists(atPath: FLORENICResourceRootPath) {
            return
        }

        FLORENICUnzipResources()

        UserDefaults.standard.setValue(FLORENICCurrentResourceVersion, forKey: FLORENICResourceVersionKey)
    }

   
    func FLORENICPath(forResource named: String) -> String? {
        
        let FLORENICdetailPath = (FLORENICResourceRootPath as NSString).appendingPathComponent(FLORENICResourceFolderName)
        let FLORENICfinalPath = (FLORENICdetailPath as NSString).appendingPathComponent(named)
        return FileManager.default.fileExists(atPath: FLORENICfinalPath) ? FLORENICfinalPath : nil
    }

    func FLORENICImage(named: String) -> UIImage? {
        guard let FLORENICpath = FLORENICPath(forResource: named  + ".png") else { return nil }
        return UIImage(contentsOfFile: FLORENICpath)
    }
}

private extension FLORENICResourceLoader {

    private  func FLORENICUnzipResources() {
        guard let FLORENICzipPath = Bundle.main.path(forResource: FLORENICZipFileName, ofType: "zip") else {
          
            return
        }

        let FLORENICzipURL = URL(fileURLWithPath: FLORENICzipPath)
        let FLORENICdestinationURL = URL(fileURLWithPath: FLORENICDocumentPath) // ← 修改解压目标

     
           
        try? Zip.unzipFile(FLORENICzipURL,
                          destination: FLORENICdestinationURL,
                          overwrite: true,
                          password: FLORENICZipPassword)
          

    }
}
