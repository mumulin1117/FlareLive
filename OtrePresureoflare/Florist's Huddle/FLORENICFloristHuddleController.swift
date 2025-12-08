import UIKit

class FLORENICFloristHuddleController: UIViewController {

    // MARK: - Data Properties
    // 保留原有逻辑
    private var FLORENICswiftuSiaki: Array<Dictionary<String, Any>> = Array<Dictionary<String, Any>>()
    
    // MARK: - UI Components
    
    // 对应 Storyboard 中的 image="association"
    private lazy var FLORENIClogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "association")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 对应 Storyboard 中的 outlet property="pinHolder"
    lazy var FLORENICpinHolder: UICollectionView = {
        // 初始化时先使用默认 layout，后续在 pinHolderS 中会被 sourcing() 覆盖
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        // Storyboard 中背景色设置为 systemBackgroundColor [cite: 91]
        // 如果您希望背景透明以显示控制器的深色背景，可改为 .clear
        collectionView.backgroundColor = .systemBackground
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
  
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FLORENICsetupUI() // 加载纯代码 UI
        FLORENICpinHolderS()
        FLORENICcoolChain()
        
        // 注册 Cell
        // 注意：如果是纯代码 Cell，请使用 register(FloristHuddleCell.self, ...)
        FLORENICpinHolder.register(FLORENICFloristHuddleCell.self, forCellWithReuseIdentifier: "FLORENICFloristHuddleCell")
    }
    
    // MARK: - UI Setup & Constraints
    
    private func FLORENICsetupUI() {
        // 设置背景颜色，对应 Storyboard 中的 RGB: 0.078 [cite: 95]
        self.view.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        
        self.view.addSubview(FLORENIClogoImageView)
        self.view.addSubview(FLORENICpinHolder)
        
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            // --- Logo Image View Constraints [cite: 88-90, 95-96] ---
            // Top: Safe Area Top
            FLORENIClogoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
            // CenterX: Superview CenterX
            FLORENIClogoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            // Width: 90
            FLORENIClogoImageView.widthAnchor.constraint(equalToConstant: 90),
            // Height: 44
            FLORENIClogoImageView.heightAnchor.constraint(equalToConstant: 44),
            
            // --- CollectionView (pinHolder) Constraints [cite: 90, 95-97] ---
            // Top: Logo Image Bottom + 20
            FLORENICpinHolder.topAnchor.constraint(equalTo: FLORENIClogoImageView.bottomAnchor, constant: 20),
            // Leading: Safe Area Leading + 20
            FLORENICpinHolder.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            // Trailing: Safe Area Trailing - 20
            FLORENICpinHolder.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            // Bottom: Superview Bottom (0)
            FLORENICpinHolder.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
    }
    
    // MARK: - Existing Logic
    
    func FLORENICsourcing() -> UICollectionViewFlowLayout {
        let zareload = UICollectionViewFlowLayout()
        // 此处逻辑保持原文件不变
        zareload.itemSize = CGSize(width: (UIScreen.main.bounds.width - 40), height: 121)
        zareload.minimumLineSpacing = 13
        zareload.minimumInteritemSpacing = 13
        zareload.scrollDirection = .vertical
        return zareload
    }
    
    private func FLORENICpinHolderS() {
        FLORENICpinHolder.delegate = self
        FLORENICpinHolder.dataSource = self
        FLORENICpinHolder.collectionViewLayout = FLORENICsourcing()
    }
    
    private func FLORENICcoolChain() {
        // 原文件为空方法，保留
    }
}

// MARK: - Extensions

extension FLORENICFloristHuddleController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FLORENICswiftuSiaki.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sourcing = collectionView.dequeueReusableCell(withReuseIdentifier: "FLORENICFloristHuddleCell", for: indexPath) as! FLORENICFloristHuddleCell
        return sourcing
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
