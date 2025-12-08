//
//  FLORENIStemSnippetController.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/20.
//

import UIKit

class FLORENIStemSnippetController: UIViewController,UITextViewDelegate {
    private lazy var FLORENICBackgroundImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFill
            imageView.image = UIImage(named: "clockLOUIDaaw")
            return imageView
        }()
    private lazy var FLORENICLogoImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: "laopgmin")
            return imageView
        }()
        
        // Email 标签
        private lazy var FLORENICEmailLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Email"
            label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
            label.textColor = .white
            return label
        }()
        
        // Email 输入框 (原名: bouquet)
        private lazy var FLORENICEmailTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "Enter email address"
            textField.textAlignment = .center
            textField.borderStyle = .roundedRect
            textField.minimumFontSize = 17
            textField.textColor = .black
            textField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
            return textField
        }()

        // Password 标签
        private lazy var FLORENICPasswordLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Password"
            label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
            label.textColor = .white
            return label
        }()
        
        // Password 输入框 (原名: composition)
        private lazy var FLORENICPasswordTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "Enter password"
            textField.textAlignment = .center
            textField.borderStyle = .roundedRect
            textField.minimumFontSize = 17
            textField.textColor = .black
            textField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
            return textField
        }()
        
        // Login 按钮 (原名: flourish, Action: symmetrical)
        private lazy var FLORENICLoginButton: UIButton = {
            let button = UIButton(type: .custom)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            button.setTitle("LOGIN", for: .normal)
            button.setBackgroundImage(UIImage(named: "jialaoi"), for: .normal)
            button.addTarget(self, action: #selector(FLORENICsymmetrical(_:)), for: .touchUpInside)
            return button
        }()
        
        // Checkbox 按钮 (原名: petal, Action: foliage)
        private lazy var FLORENICCheckboxButton: UIButton = {
            let button = UIButton(type: .custom)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setImage(UIImage(named: "uioenus"), for: .normal)
            button.setImage(UIImage(named: "noiuuy"), for: .selected)
            button.addTarget(self, action: #selector(FLORENICfoliage(_:)), for: .touchUpInside)
            return button
        }()
        
        // Terms Text View (原名: massArrangement)
        private lazy var FLORENICTermsTextView: UITextView = {
            let textView = UITextView()
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.backgroundColor = .clear
            textView.textColor = .white
            textView.font = UIFont.systemFont(ofSize: 14)
            textView.isEditable = false
            textView.isSelectable = false
            textView.showsHorizontalScrollIndicator = false
            textView.showsVerticalScrollIndicator = false
            textView.text = "By continuing you agree to our <Terms of Service> and <Privacy Policy>."
            textView.delegate = self
            return textView
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
        // 原有的 viewDidLoad 逻辑
                
        // 注意：原方法 arboretum 属于 StemSnippetController 或其扩展，您需要将其重命名为 FLORENICPrefix
        self.arboretum(keBouui:FLORENICEmailTextField)
        
        // 处理富文本/链接的逻辑 (来自原文件)
        let baseText = "By continuing you agree to our <Terms of Service> and <Privacy Policy>."
        let serviceTerm = "<Terms of Service>"
        let privacyPolicy = "<Privacy Policy>"

        // 创建富文本
        let attributedString = NSMutableAttributedString(string: baseText)
        let entireRange = NSRange(location: 0, length: attributedString.length)

        // 设置整体文本的基础样式
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: entireRange)
        attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14), range: entireRange)
        attributedString.addAttribute(.foregroundColor, value: UIColor.gray, range: entireRange)

        // 查找并设置“服务协议”链接
        if let serviceRange = baseText.range(of: serviceTerm) {
            let nsRange = NSRange(serviceRange, in: baseText)
            attributedString.addAttribute(.link, value: "app://serviceTerm", range: nsRange)
            attributedString.addAttribute(.foregroundColor, value: UIColor.white, range: nsRange)
        }

        // 查找并设置“隐私政策”链接
        if let privacyRange = baseText.range(of: privacyPolicy) {
            let nsRange = NSRange(privacyRange, in: baseText)
            attributedString.addAttribute(.link, value: "app://privacyPolicy", range: nsRange)
            attributedString.addAttribute(.foregroundColor, value: UIColor.white, range: nsRange)
        }
        
        // 允许交互，以便点击链接
        FLORENICTermsTextView.isSelectable = true
        FLORENICTermsTextView.isEditable = false
        
        FLORENICTermsTextView.attributedText = attributedString
        FLORENICTermsTextView.linkTextAttributes = [
            .foregroundColor: UIColor.white, // 链接颜色
            .underlineStyle: NSUnderlineStyle.single.rawValue // 下划线
        ]
    }
    
    @IBAction func FLORENICsymmetrical(_ sender: UIButton) {
       
        let fallINner = FLORENICCheckboxButton.isSelected

        guard let falli = FLORENICEmailTextField.text, falli.count > 0 else {
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: "Please enter email first!", FLORENICgardenStyle: .vineWarning)
           
            return
        }
        guard let fallipass = FLORENICPasswordTextField.text, fallipass.count > 0 else {
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: "Please enter password first!", FLORENICgardenStyle: .vineWarning)
           
            return
        }
        
        guard  fallINner else {
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: "Please read and agreen our terms first!", FLORENICgardenStyle: .vineWarning)
           
            return
        }
        startAnimatingindicater()
        let sopranoSax = ["floralFoam":falli,"frog":fallipass,"pinHolder":"13439215"]
        
        FLORENICDreatorsController.FLORENICrhythmSyncEngine(FLORENICaudioComponents: sopranoSax, FLORENICbaseFrequency: "/hgwiyemaebejzz/pjgtlibzp") { vocalAlign in
            self.hiddenAnimater()
            guard
                   let zoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                  let midiLearn = zoomInOut["data"] as? Dictionary<String,Any>
                    
            else {
               
                self.FLORENICdisplayFloralMessage(FLORENICblossomText: "Password or Emial is error", FLORENICgardenStyle: .vineWarning)
                return
            }
            
            
            UserDefaults.standard.set(midiLearn["protea"] as? Int, forKey: "protea")//userid
            
            UserDefaults.standard.set(midiLearn["roseSpray"] as? String, forKey: "roseSpray")//token
           
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: "Log in successful!", FLORENICgardenStyle: .blossomSuccess)
          
        } FLORENIConInterference: { bimama in
            self.hiddenAnimater()
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: bimama.localizedDescription, FLORENICgardenStyle: .vineWarning)
        }
    }
    
    
    
    @IBAction func FLORENICfoliage(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func arboretum(keBouui:UITextField) {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction))
        
        toolbar.items = [flexSpace, doneButton]
        keBouui.inputAccessoryView = toolbar
        
    }
        
        
    @objc private func doneButtonAction() {
        self.resignFirstResponder()
    }
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        // 阻止默认的链接打开行为，我们自行处理
        switch URL.scheme {
        case "app":
            switch URL.host {
            case "serviceTerm":
                // 跳转到服务协议页面
                self.navigationController?.pushViewController(FLORENICDreatorsController.init(_FLORENICmoodGlyph: FLORENICSaturationTape.FLORENICgardenStyle.FLORENICperformanceMacro()), animated: true  )
                return false // 返回false表示不使用Safari打开
            case "privacyPolicy":
                self.navigationController?.pushViewController(FLORENICDreatorsController.init(_FLORENICmoodGlyph: FLORENICSaturationTape.FLORENICpeony.FLORENICperformanceMacro()), animated: true  )
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
    func startAnimatingindicater() {
        if let view = self.view.viewWithTag(189) as? UIActivityIndicatorView{
            view.startAnimating()
            return
        }
        let laduuing = UIActivityIndicatorView.init()
        laduuing.hidesWhenStopped = true
        
        laduuing.color = .systemPink
        laduuing.tag = 189
        laduuing.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        laduuing.center = self.view.center
        self.view.addSubview(laduuing)
        laduuing.startAnimating()
    }
    
    func hiddenAnimater()  {
        if let view = self.view.viewWithTag(189) as? UIActivityIndicatorView{
            view.stopAnimating()
            
        }
    }
}
