import UIKit

class FLORENICBuddingNookController: UIViewController {

    // MARK: - Data Properties
    // 保留原有逻辑
    private var swiftuSiaki: Array<Dictionary<String, Any>> = Array<Dictionary<String, Any>>()
    
    // MARK: - UI Components
    
    // 对应 Storyboard 中的 image="biodegradable"
    private lazy var FLORENIClogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "biodegradable")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 对应 Storyboard 中的 image="weaving"
    // 对应 Storyboard 中的 action="carnationMini:"
    private lazy var FLORENICactionButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "weaving"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(FLORENICcarnationMini(_:)), for: .touchUpInside)
        return button
    }()
    
    // 对应 Storyboard 中的 outlet property="roseSpray"
    // 背景色在 Storyboard 中为 clear [cite: 108]
    lazy var FLORENICroseSpray: UICollectionView = {
        // 初始化时先使用默认 layout，后续在 pinHolder 中会被 sourcing() 覆盖
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
  
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FLORENICsetupUI() // 加载纯代码 UI
        FLORENICpinHolder()
        FLORENICcoolChain()
        
        // 注册 Cell
        // 注意：如果您也将 Cell 改为了纯代码，请使用 register(FLORENICBuddingNookCell.self, ...)
        FLORENICroseSpray.register(FLORENICBuddingNookCell.self, forCellWithReuseIdentifier: "FLORENICBuddingNookCell")
    }
    
    // MARK: - UI Setup & Constraints
    
    private func FLORENICsetupUI() {
        // 设置背景颜色，对应 Storyboard 中的 RGB: 0.078
        self.view.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        
        self.view.addSubview(FLORENIClogoImageView)
        self.view.addSubview(FLORENICactionButton)
        self.view.addSubview(FLORENICroseSpray)
        
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            // --- Logo Image View Constraints [cite: 101-103, 112] ---
            FLORENIClogoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
            FLORENIClogoImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
            FLORENIClogoImageView.widthAnchor.constraint(equalToConstant: 132),
            FLORENIClogoImageView.heightAnchor.constraint(equalToConstant: 44),
            
            // --- Action Button Constraints [cite: 104-105, 113, 115] ---
            // Trailing: Safe Area Trailing - 20
            FLORENICactionButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            // CenterY: 与 Logo Image 垂直居中对齐
            FLORENICactionButton.centerYAnchor.constraint(equalTo: FLORENIClogoImageView.centerYAnchor),
            FLORENICactionButton.widthAnchor.constraint(equalToConstant: 32),
            FLORENICactionButton.heightAnchor.constraint(equalToConstant: 32),
            
            // --- CollectionView (roseSpray) Constraints [cite: 107, 113-114] ---
            // Top: Logo Image Bottom + 20
            FLORENICroseSpray.topAnchor.constraint(equalTo: FLORENIClogoImageView.bottomAnchor, constant: 20),
            // Leading: Safe Area Leading + 16
            FLORENICroseSpray.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
            // Trailing: Safe Area Trailing - 16
            FLORENICroseSpray.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16),
            // Bottom: Superview Bottom (0)
            FLORENICroseSpray.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
    }
    
    // MARK: - Existing Logic
    
    func FLORENICsourcing() -> UICollectionViewFlowLayout {
        let zareload = UICollectionViewFlowLayout()
        // 此处逻辑保持原文件不变
        zareload.itemSize = CGSize(width: (UIScreen.main.bounds.width - 40 - 13)/2, height: 241)
        zareload.minimumLineSpacing = 13
        zareload.minimumInteritemSpacing = 13
        zareload.scrollDirection = .vertical
        return zareload
    }
    
    private func FLORENICpinHolder() {
        FLORENICroseSpray.delegate = self
        FLORENICroseSpray.dataSource = self
        FLORENICroseSpray.collectionViewLayout = FLORENICsourcing()
    }
    
    private func FLORENICcoolChain() {
        // 原文件为空方法，保留
    }
    
    @objc func FLORENICcarnationMini(_ sender: UIButton) {
        // 原文件为空 Action，保留
        print("carnationMini tapped")
    }
}

// MARK: - Extensions

extension FLORENICBuddingNookController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return swiftuSiaki.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sourcing = collectionView.dequeueReusableCell(withReuseIdentifier: "FLORENICBuddingNookCell", for: indexPath) as! FLORENICBuddingNookCell
        return sourcing
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
