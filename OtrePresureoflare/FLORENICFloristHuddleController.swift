import UIKit

class FLORENICFloristHuddleController: UIViewController {

  
    private var FLORENICswiftuSiaki: Array<Dictionary<String, Any>> = Array<Dictionary<String, Any>>()
    
   
    private lazy var FLORENIClogoImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICassociation")
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
   
    lazy var FLORENICpinHolder: UICollectionView = {
       
        let FLORENIClayout = UICollectionViewFlowLayout()
        let FLORENICcollectionView = UICollectionView(frame: .zero, collectionViewLayout: FLORENIClayout)

        FLORENICcollectionView.backgroundColor = .clear
        
        FLORENICcollectionView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICcollectionView
    }()
  
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FLORENICsetupUI()
        FLORENICpinHolderS()
        FLORENICcoolChain()
        FLORENICpinHolder.register(FLORENICFloristHuddleCell.self, forCellWithReuseIdentifier: "FLORENICFloristHuddleCell")
        
        
        
    }
    
    // MARK: - UI Setup & Constraints
    
    private func FLORENICsetupUI() {
        // 设置背景颜色，对应 Storyboard 中的 RGB: 0.078 [cite: 95]
        self.view.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        
        self.view.addSubview(FLORENIClogoImageView)
        self.view.addSubview(FLORENICpinHolder)
        self.view.addSubview(FLORENICcreateAILabel)
        FLORENICcreateAILabel.isHidden = true
        let FLORENICsafeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
           
            FLORENIClogoImageView.topAnchor.constraint(equalTo: FLORENICsafeArea.topAnchor, constant: 0),
            
            FLORENIClogoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            FLORENIClogoImageView.widthAnchor.constraint(equalToConstant: 90),
          
            FLORENIClogoImageView.heightAnchor.constraint(equalToConstant: 44),
           
            FLORENICpinHolder.topAnchor.constraint(equalTo: FLORENIClogoImageView.bottomAnchor, constant: 20),
            
            FLORENICpinHolder.leadingAnchor.constraint(equalTo: FLORENICsafeArea.leadingAnchor, constant: 20),
           
            FLORENICpinHolder.trailingAnchor.constraint(equalTo: FLORENICsafeArea.trailingAnchor, constant: -20),
           
            FLORENICpinHolder.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
    }
 
    func FLORENICsourcing() -> UICollectionViewFlowLayout {
        let FLORENICzareload = UICollectionViewFlowLayout()
      
        FLORENICzareload.itemSize = CGSize(width: (UIScreen.main.bounds.width - 40), height: 121)
        FLORENICzareload.minimumLineSpacing = 13
        FLORENICzareload.minimumInteritemSpacing = 13
        FLORENICzareload.scrollDirection = .vertical
        return FLORENICzareload
    }
    
    private func FLORENICpinHolderS() {
        FLORENICpinHolder.delegate = self
        FLORENICpinHolder.dataSource = self
        FLORENICpinHolder.collectionViewLayout = FLORENICsourcing()
    }
    private lazy var FLORENICcreateAILabel:UILabel = {
        let FLORENIClabel = UILabel.init(frame: CGRect.init(x: 0, y: 250, width: 150, height: 100))
        FLORENIClabel.center.x = UIScreen.main.bounds.width/2
        FLORENIClabel.text = UIViewController.florenicFloralDesign(florenicIke: "Nxoo qmyesswsdaugzem uyoeft")
        FLORENIClabel.font = UIFont.systemFont(ofSize: 15) // [cite: 144]
        FLORENIClabel.textColor = .white
        FLORENIClabel.textAlignment = .center
       
        return FLORENIClabel
    }()

    private func FLORENICcoolChain() {
        FLORENICstartAnimatingindicater()
        let uids =   UserDefaults.standard.object(forKey: "protea") as? Int ?? 0
        let sopranoSax = ["hybrid":"13439215","perennial":uids] as [String : Any]
        
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: sopranoSax, florenicTexture: "/aqeytrbxywz/bpdkuztmorsfa") { vocalAlign in
            self.FLORENIChiddenAnimater()
            guard
                   let zoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                    let midiLearn = zoomInOut[self.florenicFloralDesign(florenicIke: "dvaitta")] as? Array<Dictionary<String,Any>>
                    
            else {
               
            
                return
            }
          
            self.FLORENICswiftuSiaki = midiLearn.compactMap { item -> [String: Any] in
                let dic = (item["annual"] as? [[String: Any]])?.first ?? [:]
                if dic.isEmpty { return [:] }
                return dic
            }
            if self.FLORENICswiftuSiaki.count == 0{
                self.FLORENICcreateAILabel.isHidden = false
            }else{
                self.FLORENICcreateAILabel.isHidden = true
            }
            self.FLORENICpinHolder.reloadData()
        } florenicGreenery: { bimama in
            self.FLORENIChiddenAnimater()
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: bimama.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
        }
        
    }
}

// MARK: - Extensions

extension FLORENICFloristHuddleController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FLORENICswiftuSiaki.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let FLORENICsourcing = collectionView.dequeueReusableCell(withReuseIdentifier: "FLORENICFloristHuddleCell", for: indexPath) as! FLORENICFloristHuddleCell
        
        
        let FLORENIC = FLORENICswiftuSiaki[indexPath.row]
        FLORENICsourcing.FLORENICKnifeImageView.FLORENICloadImage(from: FLORENIC["accent"] as? String  ?? "" ) 
        FLORENICsourcing.FLORENICWaterTubeLabel.text = FLORENIC["filler"] as? String
        FLORENICsourcing.FLORENICStructureLabel.text = FLORENIC["blossom"] as? String
        
        FLORENICsourcing.FLORENICColorantButton.tag = indexPath.row
        FLORENICsourcing.FLORENICColorantButton.addTarget(self, action: #selector(FLORENICvall(bu:)), for: .touchUpInside)
        
        return FLORENICsourcing
    }
    
    @objc func FLORENICvall(bu:UIButton)  {
        let FLORENICuvID = FLORENICswiftuSiaki[bu.tag]["greenery"] as? Int ?? 0
    
       let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICfragrance.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(FLORENICuvID)" + self.florenicFloralDesign(florenicIke: "CnablvlqVoiadkegon=b1")))
       FLORENICsctive.hidesBottomBarWhenPushed = true
       self.navigationController?.pushViewController(FLORENICsctive, animated: true)
   
   }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let uvID = FLORENICswiftuSiaki[indexPath.row]["greenery"] as? Int ?? 0
    
       let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICpricha.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(uvID)"))
       FLORENICsctive.hidesBottomBarWhenPushed = true
       self.navigationController?.pushViewController(FLORENICsctive, animated: true)
    }
}
