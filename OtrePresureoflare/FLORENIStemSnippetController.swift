//
//  FLORENIStemSnippetController.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/20.
//

import UIKit

class FLORENIStemSnippetController: UIViewController,UITextViewDelegate {
    private lazy var FLORENICBackgroundImageView: UIImageView = {
            let FLORENICimageView = UIImageView()
            FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
            FLORENICimageView.contentMode = .scaleAspectFill
            FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICclockLOUIDaaw")
            return FLORENICimageView
        }()
    private lazy var FLORENICLogoImageView: UIImageView = {
            let FLORENICimageView = UIImageView()
            FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
            FLORENICimageView.contentMode = .scaleAspectFit
            FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENIClaopgmin")
            return FLORENICimageView
        }()
        
  
        private lazy var FLORENICEmailLabel: UILabel = {
            let FLORENIClabel = UILabel()
            FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
            FLORENIClabel.text = self.florenicFloralDesign(florenicIke: "Ecmyabidl")
            FLORENIClabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
            FLORENIClabel.textColor = .white
            return FLORENIClabel
        }()
        
     
        private lazy var FLORENICEmailTextField: UITextField = {
            let FLORENICtextField = UITextField()
            FLORENICtextField.translatesAutoresizingMaskIntoConstraints = false
            FLORENICtextField.placeholder = self.florenicFloralDesign(florenicIke: "Emnktzexro beymaativln gafdqdjrweisss")
            FLORENICtextField.textAlignment = .center
            FLORENICtextField.borderStyle = .roundedRect
            FLORENICtextField.minimumFontSize = 17
            FLORENICtextField.textColor = .black
            FLORENICtextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
            return FLORENICtextField
        }()

        private lazy var FLORENICPasswordLabel: UILabel = {
            let FLORENIClabel = UILabel()
            FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
            FLORENIClabel.text = self.florenicFloralDesign(florenicIke: "Ppaesbsmwaokrnd")
            FLORENIClabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
            FLORENIClabel.textColor = .white
            return FLORENIClabel
        }()
        
  
        private lazy var FLORENICPasswordTextField: UITextField = {
            let FLORENICtextField = UITextField()
            FLORENICtextField.translatesAutoresizingMaskIntoConstraints = false
            FLORENICtextField.placeholder = self.florenicFloralDesign(florenicIke: "Efnvtqeorf wpgajslsawboirsd")
            FLORENICtextField.textAlignment = .center
            FLORENICtextField.borderStyle = .roundedRect
            FLORENICtextField.minimumFontSize = 17
            FLORENICtextField.textColor = .black
            FLORENICtextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
            return FLORENICtextField
        }()
        
    
        private lazy var FLORENICLoginButton: UIButton = {
            let FLORENICbutton = UIButton(type: .custom)
            FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
            FLORENICbutton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            FLORENICbutton.setTitle(UIViewController.florenicFloralDesign(florenicIke: "LbOnGcIdN") , for: .normal)
            FLORENICbutton.setBackgroundImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICjialaoi"), for: .normal)
            FLORENICbutton.addTarget(self, action: #selector(FLORENICsymmetrical(_:)), for: .touchUpInside)
            return FLORENICbutton
        }()
        
        // Checkbox 按钮 (原名: petal, Action: foliage)
        private lazy var FLORENICCheckboxButton: UIButton = {
            let FLORENICbutton = UIButton(type: .custom)
            FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
            FLORENICbutton.setImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICuioenus"), for: .normal)
            FLORENICbutton.setImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICnoiuuy"), for: .selected)
            FLORENICbutton.addTarget(self, action: #selector(FLORENICfoliage(_:)), for: .touchUpInside)
            return FLORENICbutton
        }()
        
        // Terms Text View (原名: massArrangement)
        private lazy var FLORENICTermsTextView: UITextView = {
            let FLORENICtextView = UITextView()
            FLORENICtextView.translatesAutoresizingMaskIntoConstraints = false
            FLORENICtextView.backgroundColor = .clear
            FLORENICtextView.textColor = .white
            FLORENICtextView.font = UIFont.systemFont(ofSize: 14)
            FLORENICtextView.isEditable = false
            FLORENICtextView.isSelectable = false
            FLORENICtextView.showsHorizontalScrollIndicator = false
            FLORENICtextView.showsVerticalScrollIndicator = false
            FLORENICtextView.text = self.florenicFloralDesign(florenicIke: "Buyv zcvojnwtrianiusirnsgp oykoqus kacghrzezei mttoj losunra z<bTrelrcmwsp howfz kSgexrpvxidcneq>g sadnjdp s<oPzrtigvbalclya qPsoqlhieclya>r.")
            FLORENICtextView.delegate = self
            return FLORENICtextView
        }()
    
    private func FLORENICSetupUI() {
            // 设置 VC 的背景色
            view.backgroundColor = .systemBackground
            
            // 按顺序添加所有子视图
            view.addSubview(FLORENICBackgroundImageView)
            view.addSubview(FLORENICLogoImageView)
            view.addSubview(FLORENICCheckboxButton)
            view.addSubview(FLORENICTermsTextView)
            view.addSubview(FLORENICLoginButton)
            view.addSubview(FLORENICEmailLabel)
            view.addSubview(FLORENICEmailTextField)
            view.addSubview(FLORENICPasswordLabel)
            view.addSubview(FLORENICPasswordTextField)
        }

        private func FLORENICSetupConstraints() {
            let safeArea = view.safeAreaLayoutGuide
            
            NSLayoutConstraint.activate([
                // BackgroundImageView (全屏)
                FLORENICBackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
                FLORENICBackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                FLORENICBackgroundImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
                FLORENICBackgroundImageView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
                
                // LogoImageView (顶部 132, 居中, 196x43)
                FLORENICLogoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                FLORENICLogoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 132),
                FLORENICLogoImageView.widthAnchor.constraint(equalToConstant: 196),
                FLORENICLogoImageView.heightAnchor.constraint(equalToConstant: 43),
                
                // EmailLabel (Top: logoImageView.bottom + 45, Leading: 45)
                FLORENICEmailLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 45),
                FLORENICEmailLabel.topAnchor.constraint(equalTo: FLORENICLogoImageView.bottomAnchor, constant: 45),
                
                // Email Text Field (Top: emailLabel.bottom + 8, Leading/Trailing: 32, Height: 48)
                FLORENICEmailTextField.topAnchor.constraint(equalTo: FLORENICEmailLabel.bottomAnchor, constant: 8),
                FLORENICEmailTextField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 32),
                FLORENICEmailTextField.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -32),
                FLORENICEmailTextField.heightAnchor.constraint(equalToConstant: 48),

                // Password Label (Top: emailTextField.bottom + 12, Leading: same as emailLabel)
                FLORENICPasswordLabel.topAnchor.constraint(equalTo: FLORENICEmailTextField.bottomAnchor, constant: 12),
                FLORENICPasswordLabel.leadingAnchor.constraint(equalTo: FLORENICEmailLabel.leadingAnchor),
                
                // Password Text Field (Top: passwordLabel.bottom + 8, Leading/Trailing: same as emailTextField, Height: 48)
                FLORENICPasswordTextField.topAnchor.constraint(equalTo: FLORENICPasswordLabel.bottomAnchor, constant: 8),
                FLORENICPasswordTextField.leadingAnchor.constraint(equalTo: FLORENICEmailTextField.leadingAnchor),
                FLORENICPasswordTextField.trailingAnchor.constraint(equalTo: FLORENICEmailTextField.trailingAnchor),
                FLORENICPasswordTextField.heightAnchor.constraint(equalToConstant: 48),
                
                // Login Button (Top: passwordTextField.bottom + 62, Leading/Trailing: 32, Height: 48)
                FLORENICLoginButton.topAnchor.constraint(equalTo: FLORENICPasswordTextField.bottomAnchor, constant: 62),
                FLORENICLoginButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 32),
                FLORENICLoginButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -32),
                FLORENICLoginButton.heightAnchor.constraint(equalToConstant: 48),

                // Checkbox Button (Bottom: safeArea.bottom - 22, Leading: 22, 25x25)
                FLORENICCheckboxButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -22),
                FLORENICCheckboxButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 22),
                FLORENICCheckboxButton.widthAnchor.constraint(equalToConstant: 25),
                FLORENICCheckboxButton.heightAnchor.constraint(equalToConstant: 25),
                
                // Terms Text View (CenterY: checkboxButton, Leading: checkboxButton.trailing + 8, Trailing: -8, Height: 47)
                FLORENICTermsTextView.centerYAnchor.constraint(equalTo: FLORENICCheckboxButton.centerYAnchor),
                FLORENICTermsTextView.leadingAnchor.constraint(equalTo: FLORENICCheckboxButton.trailingAnchor, constant: 8),
                FLORENICTermsTextView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -8),
                FLORENICTermsTextView.heightAnchor.constraint(equalToConstant: 47),
            ])
        }
    

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FLORENICSetupUI()
               
        FLORENICSetupConstraints()
 
        self.FLORENICarboretum(FLORENICtexf:FLORENICEmailTextField)
    
        let FLORENICbaseText = self.florenicFloralDesign(florenicIke: "Bjyu ucjownttyihngukiundga rysonuu qaugerqezea dttox koaugrb m<jTpewrmmhsf hokff uSoewrtvqifcvek>i barnadx m<vPmrtitvsazcbyg xPdoilvincwyk>s.")
        let FLORENICserviceTerm = self.florenicFloralDesign(florenicIke: "<rTpezrxmase xokfg yScefrevwiyctep>")
        let FLORENICprivacyPolicy = self.florenicFloralDesign(florenicIke: "<vPereiavbatcmyu gPboslzisctyk>")

       
        let FLORENICdString = NSMutableAttributedString(string: FLORENICbaseText)
        let FLORENICentireRange = NSRange(location: 0, length: FLORENICdString.length)

        let FLORENICparagraphStyle = NSMutableParagraphStyle()
        FLORENICparagraphStyle.alignment = .left
        FLORENICdString.addAttribute(.paragraphStyle, value: FLORENICparagraphStyle, range: FLORENICentireRange)
        FLORENICdString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14), range: FLORENICentireRange)
        FLORENICdString.addAttribute(.foregroundColor, value: UIColor.gray, range: FLORENICentireRange)

        if let FLORENICserviceRange = FLORENICbaseText.range(of: FLORENICserviceTerm) {
            let FLORENICnsRange = NSRange(FLORENICserviceRange, in: FLORENICbaseText)
            FLORENICdString.addAttribute(.link, value: self.florenicFloralDesign(florenicIke: "azpcpf:l/m/usqeurtviilcnerTueprlm"), range: FLORENICnsRange)
            FLORENICdString.addAttribute(.foregroundColor, value: UIColor.white, range: FLORENICnsRange)
        }

        if let privacyRange = FLORENICbaseText.range(of: FLORENICprivacyPolicy) {
            let nsRange = NSRange(privacyRange, in: FLORENICbaseText)
            FLORENICdString.addAttribute(.link, value: self.florenicFloralDesign(florenicIke: "ampdpb:s/r/bpgraiuvaaqcpyqPqoulwircoy"), range: nsRange)
            FLORENICdString.addAttribute(.foregroundColor, value: UIColor.white, range: nsRange)
        }
        

        FLORENICTermsTextView.isSelectable = true
        FLORENICTermsTextView.isEditable = false
        
        FLORENICTermsTextView.attributedText = FLORENICdString
        FLORENICTermsTextView.linkTextAttributes = [
            .foregroundColor: UIColor.white, // 链接颜色
            .underlineStyle: NSUnderlineStyle.single.rawValue // 下划线
        ]
    }
    
 @objc func FLORENICsymmetrical(_ sender: UIButton) {
       
        let FLORENICfallINner = FLORENICCheckboxButton.isSelected

        guard let FLORENICfalli = FLORENICEmailTextField.text, FLORENICfalli.count > 0 else {
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: self.florenicFloralDesign(florenicIke: "Peljewafsoex jeenatleora bejmiariqlb uffimrxseth!"), FLORENICgardenStyle: .FLORENICvineWarning)
           
            return
        }
        guard let FLORENICfallipass = FLORENICPasswordTextField.text, FLORENICfallipass.count > 0 else {
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: self.florenicFloralDesign(florenicIke: "Pklnerawsqeb qepndtnehrt jpsazscsbwlobrxdw ufviyrxsate!"), FLORENICgardenStyle: .FLORENICvineWarning)
           
            return
        }
        
        guard  FLORENICfallINner else {
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: self.florenicFloralDesign(florenicIke: "Pplgexaosken rrcegamdy macnide rasgorvecedni kokuyrf jtnemrqmrsy sftisrmsotn!"), FLORENICgardenStyle: .FLORENICvineWarning)
           
            return
        }
        FLORENICstartAnimatingindicater()
        let FLORENICsopranoSax = ["floralFoam":FLORENICfalli,"frog":FLORENICfallipass,"pinHolder":"13439215"]
        
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: FLORENICsopranoSax, florenicTexture: "/hgwiyemaebejzz/pjgtlibzp") { vocalAlign in
            self.FLORENIChiddenAnimater()
            guard
                   let FLORENICzoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                  let FLORENICmidiLearn = FLORENICzoomInOut[self.florenicFloralDesign(florenicIke: "dbaotia")] as? Dictionary<String,Any>
                    
            else {
               
                self.FLORENICdisplayFloralMessage(FLORENICblossomText: self.florenicFloralDesign(florenicIke: "Ppacshszwjovridk lohrt iEumdicatlt uiusa deerwrzobr"), FLORENICgardenStyle: .FLORENICvineWarning)
                return
            }
            
            
            UserDefaults.standard.set(FLORENICmidiLearn["protea"] as? Int, forKey: "protea")//userid
            
            UserDefaults.standard.set(FLORENICmidiLearn["roseSpray"] as? String, forKey: "roseSpray")//token
           
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: self.florenicFloralDesign(florenicIke: "Lcocgy wionn psouhcfceeisisxfiuulb!"), FLORENICgardenStyle: .FLORENICblossomSuccess)
            let FLORENICviewController =  FLORENICTabBarController()//storyboard.instantiateViewController(withIdentifier: "tababrID" )
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = FLORENICviewController
        } florenicGreenery: { bimama in
            self.FLORENIChiddenAnimater()
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: bimama.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
        }
    }
    
    
    
 @objc func FLORENICfoliage(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func FLORENICarboretum(FLORENICtexf:UITextField) {
        let FLORENICtoolbar = UIToolbar()
        FLORENICtoolbar.sizeToFit()
        
        
        let FLORENICflexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let FLORENICdoneButton = UIBarButtonItem(title: self.florenicFloralDesign(florenicIke: "Dwownve"), style: .done, target: self, action: #selector(FLORENICdoneAction))
        
        FLORENICtoolbar.items = [FLORENICflexSpace, FLORENICdoneButton]
        FLORENICtexf.inputAccessoryView = FLORENICtoolbar
        
    }
        
        
    @objc private func FLORENICdoneAction() {
        self.resignFirstResponder()
    }
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
       
        switch URL.scheme {
        case self.florenicFloralDesign(florenicIke: "ahpqp"):
            switch URL.host {
            case self.florenicFloralDesign(florenicIke: "szegrpvrigcseeThemrbm"):
                // 跳转到服务协议页面
                self.navigationController?.pushViewController(FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICgardenStyle.FLORENICperformanceMacro()), animated: true  )
                return false // 返回false表示不使用Safari打开
            case self.florenicFloralDesign(florenicIke: "pwrcilvwabcryjPwokloiycoy"):
                self.navigationController?.pushViewController(FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICpeony.FLORENICperformanceMacro()), animated: true  )
                return false
            default:
                break
            }
        default:
            break
        }
      
        return true
    }
}

extension UIViewController{
    func FLORENICstartAnimatingindicater() {
        if let FLORENICview = self.view.viewWithTag(189) as? UIActivityIndicatorView{
            FLORENICview.startAnimating()
            return
        }
        let FLORENICladuuing = UIActivityIndicatorView.init()
        FLORENICladuuing.hidesWhenStopped = true
        
        FLORENICladuuing.color = .systemPink
        FLORENICladuuing.tag = 189
        FLORENICladuuing.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        FLORENICladuuing.center = self.view.center
        self.view.addSubview(FLORENICladuuing)
        FLORENICladuuing.startAnimating()
    }
    
    func FLORENIChiddenAnimater()  {
        if let FLORENICview = self.view.viewWithTag(189) as? UIActivityIndicatorView{
            FLORENICview.stopAnimating()
            
        }
    }
}
