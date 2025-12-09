import UIKit

class FLORENICBuddingNookController: UIViewController {

    // MARK: - Data Properties
    // 保留原有逻辑
    private var FLORENICswiftuSiaki: Array<Dictionary<String, Any>> = Array<Dictionary<String, Any>>()
    
    // MARK: - UI Components
    
    // 对应 Storyboard 中的 image="FLORENICbiodegradable"
    private lazy var FLORENIClogoImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = UIImage(named: "FLORENICbiodegradable")
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
    
    // 对应 Storyboard 中的 image="FLORENICweaving"
    // 对应 Storyboard 中的 action="carnationMini:"
    private lazy var FLORENICactionButton: UIButton = {
        let FLORENICbutton = UIButton(type: .custom)
        FLORENICbutton.setImage(UIImage(named: "FLORENICweaving"), for: .normal)
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICbutton.addTarget(self, action: #selector(FLORENICcarnationMini(_:)), for: .touchUpInside)
        return FLORENICbutton
    }()
    
    // 对应 Storyboard 中的 outlet property="FLORENICroseSpray"
    // 背景色在 Storyboard 中为 clear [cite: 108]
    lazy var FLORENICroseSpray: UICollectionView = {
        // 初始化时先使用默认 layout，后续在 pinHolder 中会被 sourcing() 覆盖
        let FLORENIClayout = UICollectionViewFlowLayout()
        let FLORENICcollectionView = UICollectionView(frame: .zero, collectionViewLayout: FLORENIClayout)
        FLORENICcollectionView.backgroundColor = .clear
        FLORENICcollectionView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICcollectionView
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
            
            // --- CollectionView (FLORENICroseSpray) Constraints [cite: 107, 113-114] ---
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
        FLORENICstartAnimatingindicater()
        let sopranoSax = ["garden":10,"modern":1,"classic":"13439215","mood":1] as [String : Any]
        
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: sopranoSax, florenicTexture: "/egmyzonfwfz/pplebhinomwcz") { vocalAlign in
            self.FLORENIChiddenAnimater()
            guard
                   let zoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                    let midiLearn = zoomInOut[self.florenicFloralDesign(florenicIke: "dhastxa")] as? Array<Dictionary<String,Any>>
                    
            else {
               
            
                return
            }
            
            self.FLORENICswiftuSiaki = midiLearn
            self.FLORENICroseSpray.reloadData()
        } florenicGreenery: { bimama in
            self.FLORENIChiddenAnimater()
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: bimama.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
        }
        
    }
    
    @objc func FLORENICcarnationMini(_ sender: UIButton) {
        let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICcolorTheory.FLORENICperformanceMacro())
        FLORENICsctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(FLORENICsctive, animated: true)
    }
}

// MARK: - Extensions

extension FLORENICBuddingNookController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FLORENICswiftuSiaki.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sourcingFLORENIC = collectionView.dequeueReusableCell(withReuseIdentifier: "FLORENICBuddingNookCell", for: indexPath) as! FLORENICBuddingNookCell
        
        let FLORENIC = FLORENICswiftuSiaki[indexPath.row]
        sourcingFLORENIC.FLORENIClacquer.FLORENICloadImage(from: (FLORENIC["spiral"] as? Array<String> ?? []).first ?? "" ) 
        sourcingFLORENIC.FLORENICseasonal.text = FLORENIC["summer"] as? String
        sourcingFLORENIC.FLORENICepoxy.addTarget(self, action: #selector(FLORENICreport), for: .touchUpInside)
        return sourcingFLORENIC
    }
    
    
   @objc func FLORENICreport() {
       let sctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICpattern.FLORENICperformanceMacro())
       sctive.hidesBottomBarWhenPushed = true
       self.navigationController?.pushViewController(sctive, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let activID = FLORENICswiftuSiaki[indexPath.row]["seasonal"] as? Int ?? 0
        
        let sctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICelegance.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(activID)"))
        sctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(sctive, animated: true)
    }
}
