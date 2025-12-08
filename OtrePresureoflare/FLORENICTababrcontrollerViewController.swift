
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

        // 3. Bloom Stream Tab (假设为视频/直播)
        let FLORENICbloomNav = FLORENICCreateNavController(
            for: FLORENICbloomStream,
            
            image: UIImage(named: "ranunculus_00") ?? UIImage(),
            selectedImage: UIImage(named: "ranunculus_01") ?? UIImage()
        )

        // 2. Budding Nook Tab (假设为探索/分类)
        let FLORENICbuddingNav = FLORENICCreateNavController(
            for: FLORENICbuddingNook,
          
            image: UIImage(named: "ranunculus_10") ?? UIImage(),
            selectedImage: UIImage(named: "ranunculus_11") ?? UIImage()
        )

        
        // 1. Florist Huddle Tab (假设为主页/列表)
        let FLORENICfloristNav = FLORENICCreateNavController(
            for: FLORENICfloristHuddle,
  
            image: UIImage(named: "ranunculus_20") ?? UIImage(), // 占位图片
            selectedImage: UIImage(named: "ranunculus_21") ?? UIImage() // 占位图片
        )
        // 4. Petal Palette Tab (假设为我的/个人中心)
        let FLORENICpetalNav = FLORENICCreateNavController(
            for: FLORENICpetalPalette,
 
            image: UIImage(named: "ranunculus_30") ?? UIImage(),
            selectedImage: UIImage(named: "ranunculus_31") ?? UIImage()
        )

        self.viewControllers = [FLORENICbloomNav , FLORENICbuddingNav, FLORENICfloristNav, FLORENICpetalNav]
    }
    
    private func FLORENICCreateNavController(for rootViewController: UIViewController,  image: UIImage, selectedImage: UIImage) -> UINavigationController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.navigationBar.isHidden = true
        
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image.withRenderingMode(.alwaysOriginal)
        navController.tabBarItem.selectedImage = selectedImage.withRenderingMode(.alwaysOriginal)
        rootViewController.navigationItem.title = title
        return navController
    }

    private func FLORENICSetupTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.init(red: 20/255, green: 20/255, blue: 20/255, alpha: 1)
        
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.gray,
            .font: UIFont.systemFont(ofSize: 10)
        ]
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.systemPink, // 假设一个主色调
            .font: UIFont.systemFont(ofSize: 10)
        ]
        
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = normalAttributes
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = selectedAttributes
        
        self.tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            self.tabBar.scrollEdgeAppearance = appearance
        }
    }
}
