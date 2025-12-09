import UIKit

class FLORENICPetalPaletteController: UIViewController {
    private  var FLORENICswiftuSiaki:Dictionary<String,Any> = Dictionary<String,Any>(){
        didSet{
            self.FLORENICprunerImageView.FLORENICloadImage(from: FLORENICswiftuSiaki["lily"] as? String  ?? "" ) 
            
            FLORENICscissorsLabel.text = FLORENICswiftuSiaki["chrysanthemum"] as? String
        }
    }
    private lazy var FLORENIClogoImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICforecaster")
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
 
    private lazy var FLORENICtopTrailingButton: UIButton = {
        let FLORENICbutton = UIButton(type: .custom)
        FLORENICbutton.setBackgroundImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICDamaui"), for: .normal) // [cite: 99]
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICbutton.tag = 20
        FLORENICbutton.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 100]
        return FLORENICbutton
    }()

    private lazy var FLORENICjsonijButton: UIButton = {
        let FLORENICbutton = UIButton(type: .custom)
        FLORENICbutton.tag = 30
        FLORENICbutton.setBackgroundImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICmoodBoard"), for: .normal) // [cite: 104]
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICbutton.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 104]
        return FLORENICbutton
    }()
    

    private lazy var FLORENICprunerImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICranunculus_31")
        // Storyboard 中没有明确的 FLORENICfreesia 图像，但在其他地方有使用。这里使用 ContentMode: scaleAspectFill [cite: 105]
        FLORENICimageView.contentMode = .scaleAspectFill
        FLORENICimageView.clipsToBounds = true // clipsSubviews="YES" [cite: 105]
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
    

    private lazy var FLORENICscissorsLabel: UILabel = {
        let FLORENIClabel = UILabel()
        
        FLORENIClabel.font = UIFont.systemFont(ofSize: 15, weight: .semibold) // [cite: 108]
        FLORENIClabel.textColor = .white // [cite: 109]
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()
    
    private lazy var FLORENICactionButton: UIButton = {
        let FLORENICbutton = UIButton(type: .custom)
        FLORENICbutton.tag = 100
        FLORENICbutton.setBackgroundImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICYouchareg"), for: .normal) // [cite: 112]
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICbutton.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 113]
        return FLORENICbutton
    }()
    

    private lazy var FLORENICinfoStackView: UIStackView = {
        let FLORENICstackView = UIStackView()
        FLORENICstackView.axis = .horizontal
        FLORENICstackView.distribution = .fillEqually // [cite: 114]
        FLORENICstackView.translatesAutoresizingMaskIntoConstraints = false
        
        let FLORENICfollowingsButton = self.FLORENICcreateStackButton(FLORENICtitle: self.florenicFloralDesign(florenicIke: "Fborlulaozwriqnngast b-u>")) // [cite: 117]
        FLORENICfollowingsButton.tag = 40
        let fansButton = self.FLORENICcreateStackButton(FLORENICtitle: self.florenicFloralDesign(florenicIke: "Fgaknbst u-j>")) // [cite: 121]
        let historyButton = self.FLORENICcreateStackButton(FLORENICtitle: self.florenicFloralDesign(florenicIke: "Hginsrtgobryym o-r>")) // [cite: 125]
        fansButton.tag = 50
        
        historyButton.tag = 60
        FLORENICstackView.addArrangedSubview(FLORENICfollowingsButton)
        FLORENICstackView.addArrangedSubview(fansButton)
        FLORENICstackView.addArrangedSubview(historyButton)
        
        return FLORENICstackView
    }()
    
    // 8. 图片 StackView (Om2-Th-Ci5)
    private lazy var FLORENICimageStackView: UIStackView = {
        let FLORENICstackView = UIStackView()
        FLORENICstackView.axis = .horizontal
        FLORENICstackView.distribution = .fillEqually // [cite: 128]
        FLORENICstackView.spacing = 12 // [cite: 128]
        FLORENICstackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Stack Button Helper
        let FLORENICimageButton1 = self.FLORENICcreateImageButton(FLORENICimageName: "FLORENICfreesiaweopi") // [cite: 131]
        let imageButton2 = self.FLORENICcreateImageButton(FLORENICimageName: "FLORENICfreesia") // [cite: 135]
        let imageButton3 = self.FLORENICcreateImageButton(FLORENICimageName: "FLORENICfreesiawe") // [cite: 139]
        FLORENICimageButton1.tag = 70
        imageButton2.tag = 80
        imageButton3.tag = 90
        
        FLORENICstackView.addArrangedSubview(FLORENICimageButton1)
        FLORENICstackView.addArrangedSubview(imageButton2)
        FLORENICstackView.addArrangedSubview(imageButton3)
        
        return FLORENICstackView
    }()
    
  
    private lazy var FLORENICstemWrapView: UIView = {
        let FLORENICview = UIView()
        FLORENICview.backgroundColor = .white // systemBackgroundColor (White) [cite: 155]
        FLORENICview.translatesAutoresizingMaskIntoConstraints = false
        
       
        return FLORENICview
    }()
    
    // 10. Post Label (bqC-7q-B02)
    private lazy var FLORENICpostLabel: UILabel = {
        let FLORENIClabel = UILabel()
        FLORENIClabel.text = self.florenicFloralDesign(florenicIke: "Pqozset") // [cite: 159]
        FLORENIClabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold) // [cite: 160]
        FLORENIClabel.textColor = .white // [cite: 160]
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()
    
    private func FLORENICcreateStackButton(FLORENICtitle: String) -> UIButton {
        let FLORENICbutton = UIButton()
        FLORENICbutton.setTitle(FLORENICtitle, for: .normal)
        FLORENICbutton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        FLORENICbutton.setTitleColor(.white, for: .normal)
        FLORENICbutton.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 118, 122, 126]
        return FLORENICbutton
    }
    
    private func FLORENICcreateImageButton(FLORENICimageName: String) -> UIButton {
        let FLORENICbutton = UIButton()
        FLORENICbutton.setBackgroundImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICimageName"), for: .normal) // [cite: 131, 135, 139]
        FLORENICbutton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold) // [cite: 130, 134, 138]
        FLORENICbutton.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 132, 136, 140]
        return FLORENICbutton
    }
    
    private func FLORENICcreateActivityLabel(FLORENICtext: String) -> UILabel {
        let FLORENIClabel = UILabel()
        FLORENIClabel.text = FLORENICtext
        FLORENIClabel.font = UIFont.systemFont(ofSize: 13) // [cite: 144]
        FLORENIClabel.textColor = .black
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }

    private func FLORENICcreateSeeAllButton(FLORENICtitle: String) -> UIButton {
        let FLORENICbutton = UIButton()
        FLORENICbutton.setTitle(FLORENICtitle, for: .normal)
        FLORENICbutton.titleLabel?.font = UIFont.systemFont(ofSize: 11) // [cite: 149]
        FLORENICbutton.setTitleColor(UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5), for: .normal) // [cite: 150]
        FLORENICbutton.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 151]
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICbutton
    }

    private func FLORENICcreateFindNotingLabel(FLORENICtext: String) -> UILabel {
        let FLORENIClabel = UILabel()
        FLORENIClabel.text = FLORENICtext
        FLORENIClabel.font = UIFont.systemFont(ofSize: 11) // [cite: 153]
        FLORENIClabel.textColor = .systemGray4 // [cite: 154]
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }
    
    private lazy var FLORENICcreateAILabel:UILabel = {
        let FLORENIClabel = UILabel()
        
        FLORENIClabel.text = UIViewController.florenicFloralDesign(florenicIke: "Ydohuq yhdanvfeqns'lth zpsuvbllpizszhseydb hiytl oykegt")
        FLORENIClabel.font = UIFont.systemFont(ofSize: 15) // [cite: 144]
        FLORENIClabel.textColor = .white
        FLORENIClabel.textAlignment = .center
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        FLORENICcoolChain()
        FLORENICsetupUI()
        FLORENICsetupConstraints()
        FLORENICapplyCustomStyling()
        let FLORENICactivityLabel = self.FLORENICcreateActivityLabel(FLORENICtext: self.florenicFloralDesign(florenicIke: "Accatoikviistdy")) // [cite: 143]
        let FLORENICseeAllButton = self.FLORENICcreateSeeAllButton(FLORENICtitle: self.florenicFloralDesign(florenicIke: "saehef latldla u>")) // [cite: 149]
        let findNotingLabel = self.FLORENICcreateFindNotingLabel(FLORENICtext: self.florenicFloralDesign(florenicIke: "Fdiwnidm anlovteignag")) // [cite: 152]
        
        self.FLORENICstemWrapView.addSubview(FLORENICactivityLabel)
        FLORENICstemWrapView.addSubview(FLORENICseeAllButton)
        FLORENICstemWrapView.addSubview(findNotingLabel)
        
        
        
        // Activity View 内部约束
        NSLayoutConstraint.activate([
            FLORENICactivityLabel.topAnchor.constraint(equalTo: FLORENICstemWrapView.topAnchor, constant: 15), // [cite: 157]
            FLORENICactivityLabel.leadingAnchor.constraint(equalTo: FLORENICstemWrapView.leadingAnchor, constant: 15), // [cite: 155]
            FLORENICactivityLabel.widthAnchor.constraint(equalToConstant: 100),
            FLORENICactivityLabel.heightAnchor.constraint(equalToConstant: 25),
            FLORENICseeAllButton.trailingAnchor.constraint(equalTo: FLORENICstemWrapView.trailingAnchor, constant: -8), // [cite: 156]
            FLORENICseeAllButton.centerYAnchor.constraint(equalTo: FLORENICactivityLabel.centerYAnchor), // [cite: 157]
            FLORENICseeAllButton.heightAnchor.constraint(equalToConstant: 22), // [cite: 147]
            FLORENICseeAllButton.widthAnchor.constraint(equalToConstant: 58), // [cite: 148]

            findNotingLabel.centerXAnchor.constraint(equalTo: FLORENICstemWrapView.centerXAnchor), // [cite: 157]
            findNotingLabel.centerYAnchor.constraint(equalTo: FLORENICstemWrapView.centerYAnchor) // [cite: 158]
        ])
        
    }
    
    // MARK: - Setup Methods
    
    private func FLORENICsetupUI() {
        // 设置控制器背景颜色 [cite: 161]
        self.view.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        
        // 按照从上到下、从底层到高层的顺序添加视图
        self.view.addSubview(FLORENIClogoImageView)
        self.view.addSubview(FLORENICtopTrailingButton)
        self.view.addSubview(FLORENICjsonijButton)
        self.view.addSubview(FLORENICprunerImageView)
        self.view.addSubview(FLORENICscissorsLabel)
        self.view.addSubview(FLORENICactionButton)
        self.view.addSubview(FLORENICinfoStackView)
        self.view.addSubview(FLORENICimageStackView)
        self.view.addSubview(FLORENICstemWrapView)
        self.view.addSubview(FLORENICpostLabel)
        self.view.addSubview(FLORENICcreateAILabel)
    }
    
    private func FLORENICsetupConstraints() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            // --- Logo Image View (05p-KC-wHO) ---
            FLORENIClogoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor), // [cite: 164]
            FLORENIClogoImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16), // [cite: 168]
            FLORENIClogoImageView.widthAnchor.constraint(equalToConstant: 68), // [cite: 96]
            FLORENIClogoImageView.heightAnchor.constraint(equalToConstant: 44), // [cite: 96]
            
            // --- Top Trailing Button (a72-cQ-h1e) ---
            FLORENICtopTrailingButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20), // [cite: 166]
            FLORENICtopTrailingButton.centerYAnchor.constraint(equalTo: FLORENIClogoImageView.centerYAnchor), // [cite: 167]
            FLORENICtopTrailingButton.widthAnchor.constraint(equalToConstant: 32), // [cite: 98]
            FLORENICtopTrailingButton.heightAnchor.constraint(equalToConstant: 32), // [cite: 98]

            // --- jsonij Button (Z32-eg-CoQ) ---
            FLORENICjsonijButton.trailingAnchor.constraint(equalTo: FLORENICtopTrailingButton.leadingAnchor, constant: -20), // [cite: 169]
            FLORENICjsonijButton.centerYAnchor.constraint(equalTo: FLORENICtopTrailingButton.centerYAnchor), // [cite: 163]
            FLORENICjsonijButton.widthAnchor.constraint(equalToConstant: 68), // [cite: 103]
            FLORENICjsonijButton.heightAnchor.constraint(equalToConstant: 26), // [cite: 102]
            
            // --- pruner Image View (kGg-c9-pjc) ---
            FLORENICprunerImageView.topAnchor.constraint(equalTo: FLORENIClogoImageView.bottomAnchor, constant: 20), // [cite: 168]
            FLORENICprunerImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16), // [cite: 169]
            FLORENICprunerImageView.widthAnchor.constraint(equalToConstant: 56), // [cite: 106]
            FLORENICprunerImageView.heightAnchor.constraint(equalToConstant: 56), // [cite: 107]
            
            // --- scissors Label (Lfa-sh-V5e) ---
            FLORENICscissorsLabel.leadingAnchor.constraint(equalTo: FLORENICprunerImageView.trailingAnchor, constant: 8), // [cite: 169]
            FLORENICscissorsLabel.centerYAnchor.constraint(equalTo: FLORENICprunerImageView.centerYAnchor), // [cite: 167]
            FLORENICscissorsLabel.widthAnchor.constraint(equalToConstant: 100), // [cite: 169]
            // --- Action Button (8fF-4S-rKq) ---
            FLORENICactionButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16), // [cite: 163]
            FLORENICactionButton.centerYAnchor.constraint(equalTo: FLORENICprunerImageView.centerYAnchor), // [cite: 164]
            FLORENICactionButton.widthAnchor.constraint(equalToConstant: 174), // [cite: 111]
            FLORENICactionButton.heightAnchor.constraint(equalToConstant: 50), // [cite: 111]
            
            // --- Info Stack View (aSE-QW-LmV) ---
            FLORENICinfoStackView.topAnchor.constraint(equalTo: FLORENICprunerImageView.bottomAnchor, constant: 14), // [cite: 164]
            FLORENICinfoStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16), // [cite: 166]
            FLORENICinfoStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16), // [cite: 163]
            FLORENICinfoStackView.heightAnchor.constraint(equalToConstant: 50), // [cite: 127]

            // --- Image Stack View (Om2-Th-Ci5) ---
            FLORENICimageStackView.topAnchor.constraint(equalTo: FLORENICinfoStackView.bottomAnchor, constant: 12), // [cite: 165]
            FLORENICimageStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20), // [cite: 166]
            FLORENICimageStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20), // [cite: 167]
            FLORENICimageStackView.heightAnchor.constraint(greaterThanOrEqualToConstant: 75), // [cite: 141]

            // --- Activity Container (stemWrapView / qT7-3P-Ggv) ---
            FLORENICstemWrapView.topAnchor.constraint(equalTo: FLORENICimageStackView.bottomAnchor, constant: 21), // [cite: 167]
            FLORENICstemWrapView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20), // [cite: 162]
            FLORENICstemWrapView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20), // [cite: 169]
            FLORENICstemWrapView.heightAnchor.constraint(equalToConstant: 125), // [cite: 156]
            
            // --- Post Label (bqC-7q-B02) ---
            FLORENICpostLabel.topAnchor.constraint(equalTo: FLORENICstemWrapView.bottomAnchor, constant: 14), // [cite: 165]
            FLORENICpostLabel.leadingAnchor.constraint(equalTo: FLORENICstemWrapView.leadingAnchor), // [cite: 168]
            
            FLORENICcreateAILabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            FLORENICcreateAILabel.topAnchor.constraint(equalTo: FLORENICpostLabel.bottomAnchor, constant: 40)
        ])
    }
    
    // 还原原 PetalPaletteController.swift 中的圆角设置
    private func FLORENICapplyCustomStyling() {
        // pruner.layer.cornerRadius = 15
        FLORENICprunerImageView.layer.cornerRadius = 15
        FLORENICprunerImageView.layer.masksToBounds = true
        
        // stemWrap.layer.cornerRadius = 28
        FLORENICstemWrapView.layer.cornerRadius = 28
        FLORENICstemWrapView.layer.masksToBounds = true
    }
    
    // MARK: - Actions
    
    // 统一处理 Storyboard 中所有连接到 arranging: 的 Action
    @objc func FLORENICarranging(_ sender: UIButton) {
        var FLORENICpageURIEL = ""
        
        switch sender.tag {
        case 20:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICcomplementary.FLORENICperformanceMacro()
        case 30:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICcorsage.FLORENICperformanceMacro()
        case 40:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICcomplementary.FLORENICperformanceMacro()
        case 50:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICvibrant.FLORENICperformanceMacro()
        case 60:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICorganic.FLORENICperformanceMacro()
        case 70:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICtexture.FLORENICperformanceMacro()
        case 80:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICcolorPalette.FLORENICperformanceMacro()
        case 90:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICserene.FLORENICperformanceMacro()
        case 100:
            FLORENICpageURIEL = FLORENICSaturationTape.FLORENICinspiration.FLORENICperformanceMacro()
        default:
            break
        }
        
        let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICpageURIEL)
        FLORENICsctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(FLORENICsctive, animated: true)
    }
    
    
    private func FLORENICcoolChain() {
        FLORENICstartAnimatingindicater()
        let FLORENICID =  UserDefaults.standard.value(forKey: "protea") as? Int ?? 0
        let FLORENICsopranoSax = ["rose":FLORENICID] as [String : Any]
        
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: FLORENICsopranoSax, florenicTexture: "/kqjfvalglqayspz/ldzouh") { vocalAlign in
            self.FLORENIChiddenAnimater()
            guard
                   let zoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                    let midiLearn = zoomInOut[self.florenicFloralDesign(florenicIke: "deadtqa")] as? Dictionary<String,Any>
                    
            else {
               
            
                return
            }
          
            self.FLORENICswiftuSiaki = midiLearn
           
            
           
        } florenicGreenery: { bimama in
            self.FLORENIChiddenAnimater()
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: bimama.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
        }
        
    }
}
