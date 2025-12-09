
import UIKit

class FLORENICTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        FLORENICSetupViewControllers()
        FLORENICSetupTabBarAppearance()
    }

    private func FLORENICSetupViewControllers() {
        let FLORENICbloomStream = FLORENICBloomStreamController()
        let FLORENICbuddingNook = FLORENICBuddingNookController()
        let FLORENICfloristHuddle = FLORENICFloristHuddleController()
      
      
        let FLORENICpetalPalette = FLORENICPetalPaletteController()

       
        let FLORENICbloomNav = FLORENICCreateNavController(
            forFLORENIC: FLORENICbloomStream,
            
            FLORENICimage: UIImage(named: "FLORENICranunculus_00") ?? UIImage(),
            FLORENIClectedImage: UIImage(named: "FLORENICranunculus_01") ?? UIImage()
        )

        let FLORENICbuddingNav = FLORENICCreateNavController(
            forFLORENIC: FLORENICbuddingNook,
          
            FLORENICimage: UIImage(named: "FLORENICranunculus_10") ?? UIImage(),
            FLORENIClectedImage: UIImage(named: "FLORENICranunculus_11") ?? UIImage()
        )

        
        let FLORENICfloristNav = FLORENICCreateNavController(
            forFLORENIC: FLORENICfloristHuddle,
  
            FLORENICimage: UIImage(named: "FLORENICranunculus_20") ?? UIImage(), // 占位图片
            FLORENIClectedImage: UIImage(named: "FLORENICranunculus_21") ?? UIImage() // 占位图片
        )
    
        let FLORENICpetalNav = FLORENICCreateNavController(
            forFLORENIC: FLORENICpetalPalette,
 
            FLORENICimage: UIImage(named: "FLORENICranunculus_30") ?? UIImage(),
            FLORENIClectedImage: UIImage(named: "FLORENICranunculus_31") ?? UIImage()
        )

        self.viewControllers = [FLORENICbloomNav , FLORENICbuddingNav, FLORENICfloristNav, FLORENICpetalNav]
    }
    
    private func FLORENICCreateNavController(forFLORENIC rootViewController: UIViewController,  FLORENICimage: UIImage, FLORENIClectedImage: UIImage) -> UINavigationController {
        let FLORENICnavController = UINavigationController(rootViewController: rootViewController)
        FLORENICnavController.navigationBar.isHidden = true
        
        FLORENICnavController.tabBarItem.title = title
        FLORENICnavController.tabBarItem.image = FLORENICimage.withRenderingMode(.alwaysOriginal)
        FLORENICnavController.tabBarItem.selectedImage = FLORENIClectedImage.withRenderingMode(.alwaysOriginal)
        rootViewController.navigationItem.title = title
        return FLORENICnavController
    }

    private func FLORENICSetupTabBarAppearance() {
        let FLORENICappearance = UITabBarAppearance()
        FLORENICappearance.configureWithOpaqueBackground()
        FLORENICappearance.backgroundColor = UIColor.init(red: 20/255, green: 20/255, blue: 20/255, alpha: 1)
        
        let FLORENICnormalAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.gray,
            .font: UIFont.systemFont(ofSize: 10)
        ]
        let FLORENICselectedAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.systemPink, 
            .font: UIFont.systemFont(ofSize: 10)
        ]
        
        FLORENICappearance.stackedLayoutAppearance.normal.titleTextAttributes = FLORENICnormalAttributes
        FLORENICappearance.stackedLayoutAppearance.selected.titleTextAttributes = FLORENICselectedAttributes
        
        self.tabBar.standardAppearance = FLORENICappearance
        if #available(iOS 15.0, *) {
            self.tabBar.scrollEdgeAppearance = FLORENICappearance
        }
    }
}
