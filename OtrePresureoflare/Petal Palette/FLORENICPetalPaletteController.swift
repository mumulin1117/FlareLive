import UIKit

class FLORENICPetalPaletteController: UIViewController {

    // MARK: - UI Components (根据 Storyboard XML 还原)
    
    // 1. Logo (forecaster)
    private lazy var FLORENIClogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "forecaster") // [cite: 95, 173]
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 2. 右上角按钮 (Damaui)
    private lazy var FLORENICtopTrailingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "Damaui"), for: .normal) // [cite: 99]
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 100]
        return button
    }()
    
    // 3. 右上角中间按钮 (moodBoard), 对应 IBOutlet jsonij [cite: 171]
    private lazy var FLORENICjsonijButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "moodBoard"), for: .normal) // [cite: 104]
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 104]
        return button
    }()
    
    // 4. 用户头像/图片 (pruner outlet) [cite: 171]
    private lazy var FLORENICprunerImageView: UIImageView = {
        let imageView = UIImageView()
        // Storyboard 中没有明确的 freesia 图像，但在其他地方有使用。这里使用 ContentMode: scaleAspectFill [cite: 105]
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true // clipsSubviews="YES" [cite: 105]
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 5. 用户名/标题 Label (scissors outlet) [cite: 172]
    private lazy var FLORENICscissorsLabel: UILabel = {
        let label = UILabel()
        label.text = "Label" // Placeholder [cite: 108]
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold) // [cite: 108]
        label.textColor = .white // [cite: 109]
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // 6. 关注/操作按钮 (Youchareg)
    private lazy var FLORENICactionButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "Youchareg"), for: .normal) // [cite: 112]
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 113]
        return button
    }()
    
    // 7. 关注/粉丝/历史 StackView (aSE-QW-LmV)
    private lazy var FLORENICinfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually // [cite: 114]
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        let followingsButton = self.FLORENICcreateStackButton(FLORENICtitle: "Followings") // [cite: 117]
        let fansButton = self.FLORENICcreateStackButton(FLORENICtitle: "Fans") // [cite: 121]
        let historyButton = self.FLORENICcreateStackButton(FLORENICtitle: "History") // [cite: 125]
        
        stackView.addArrangedSubview(followingsButton)
        stackView.addArrangedSubview(fansButton)
        stackView.addArrangedSubview(historyButton)
        
        return stackView
    }()
    
    // 8. 图片 StackView (Om2-Th-Ci5)
    private lazy var FLORENICimageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually // [cite: 128]
        stackView.spacing = 12 // [cite: 128]
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Stack Button Helper
        let imageButton1 = self.FLORENICcreateImageButton(FLORENICimageName: "freesiaweopi") // [cite: 131]
        let imageButton2 = self.FLORENICcreateImageButton(FLORENICimageName: "freesia") // [cite: 135]
        let imageButton3 = self.FLORENICcreateImageButton(FLORENICimageName: "freesiawe") // [cite: 139]
        
        stackView.addArrangedSubview(imageButton1)
        stackView.addArrangedSubview(imageButton2)
        stackView.addArrangedSubview(imageButton3)
        
        return stackView
    }()
    
    // 9. Activity Container View (qT7-3P-Ggv, stemWrap outlet) [cite: 172]
    private lazy var FLORENICstemWrapView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground // systemBackgroundColor (White) [cite: 155]
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let activityLabel = self.FLORENICcreateActivityLabel(FLORENICtext: "Activity") // [cite: 143]
        let seeAllButton = self.FLORENICcreateSeeAllButton(FLORENICtitle: "see all >") // [cite: 149]
        let findNotingLabel = self.FLORENICcreateFindNotingLabel(FLORENICtext: "Find noting") // [cite: 152]
        
        view.addSubview(activityLabel)
        view.addSubview(seeAllButton)
        view.addSubview(findNotingLabel)
        
        // Activity View 内部约束
        NSLayoutConstraint.activate([
            activityLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 15), // [cite: 157]
            activityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15), // [cite: 155]
            
            seeAllButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8), // [cite: 156]
            seeAllButton.centerYAnchor.constraint(equalTo: activityLabel.centerYAnchor), // [cite: 157]
            seeAllButton.heightAnchor.constraint(equalToConstant: 22), // [cite: 147]
            seeAllButton.widthAnchor.constraint(equalToConstant: 58), // [cite: 148]

            findNotingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), // [cite: 157]
            findNotingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor) // [cite: 158]
        ])
        
        return view
    }()
    
    // 10. Post Label (bqC-7q-B02)
    private lazy var FLORENICpostLabel: UILabel = {
        let label = UILabel()
        label.text = "Post" // [cite: 159]
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold) // [cite: 160]
        label.textColor = .white // [cite: 160]
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Helper Methods for UI Creation
    
    private func FLORENICcreateStackButton(FLORENICtitle: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(FLORENICtitle, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold) // [cite: 116, 120, 124]
        button.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 118, 122, 126]
        return button
    }
    
    private func FLORENICcreateImageButton(FLORENICimageName: String) -> UIButton {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: FLORENICimageName), for: .normal) // [cite: 131, 135, 139]
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold) // [cite: 130, 134, 138]
        button.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 132, 136, 140]
        return button
    }
    
    private func FLORENICcreateActivityLabel(FLORENICtext: String) -> UILabel {
        let label = UILabel()
        label.text = FLORENICtext
        label.font = UIFont.systemFont(ofSize: 13) // [cite: 144]
        return label
    }

    private func FLORENICcreateSeeAllButton(FLORENICtitle: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(FLORENICtitle, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 11) // [cite: 149]
        button.setTitleColor(UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5), for: .normal) // [cite: 150]
        button.addTarget(self, action: #selector(FLORENICarranging(_:)), for: .touchUpInside) // [cite: 151]
        return button
    }

    private func FLORENICcreateFindNotingLabel(FLORENICtext: String) -> UILabel {
        let label = UILabel()
        label.text = FLORENICtext
        label.font = UIFont.systemFont(ofSize: 11) // [cite: 153]
        label.textColor = .systemGray4 // [cite: 154]
        return label
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FLORENICsetupUI()
        FLORENICsetupConstraints()
        FLORENICapplyCustomStyling()
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
            FLORENICpostLabel.leadingAnchor.constraint(equalTo: FLORENICstemWrapView.leadingAnchor) // [cite: 168]
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
    @IBAction func FLORENICarranging(_ sender: UIButton) {
        // 原文件中的 @IBAction func arranging(_ sender: UIButton) { ... }
        print("arranging action triggered by button: \(sender.currentTitle ?? "unknown")")
    }
}
