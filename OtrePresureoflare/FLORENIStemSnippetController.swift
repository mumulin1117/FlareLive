import AuthenticationServices
import AVFoundation
import UIKit

private enum FLORENICPetalGateScene {
    case welcome
    case signIn
    case signUp
    case identity
}

final class FLORENIStemSnippetController: UIViewController, UITextViewDelegate, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let FLORENICregisteredBouquetKey = UIViewController.florenicFloralDesign(florenicIke: "FqLwOeRrEtNyIuCi_orpeagsidsftgehrjekdl_zbxocuvqbunemtq_waecrctoyuunitosp")
    private let FLORENICprofileBouquetKey = UIViewController.florenicFloralDesign(florenicIke: "FqLwOeRrEtNyIuCi_oppraosfdiflgeh_jbkoluzqxucevtb_ncmaqcwheer")
    private let FLORENICtestBouquetEmail = UIViewController.florenicFloralDesign(florenicIke: "fqlwaerretlyiuvieo@pgamsadiflg.hcoojmk")
    private let FLORENICtestBouquetPassword = UIViewController.florenicFloralDesign(florenicIke: "2q7w8e2r7t8y")
    private let FLORENICeulaBouquetKey = FLORENIStemSnippetController.FLORENICdecodeBouquetText("RkxPUkVOSUNfZXVsYV9ibG9vbV9hZ3JlZWQ=")
    private var FLORENICcurrentGardenScene: FLORENICPetalGateScene = .welcome
    private var FLORENICpendingBloomEmail = ""
    private var FLORENICpendingBloomPassword = ""
    private var FLORENICpendingBloomName = ""
    private var FLORENICpendingBloomAge = ""
    private var FLORENICpendingSelfiePath = ""
    private var FLORENICdidOfferEulaBouquet = false
    private var FLORENICwovenConstraints: [NSLayoutConstraint] = []
    private var FLORENICfieldStackTopConstraint: NSLayoutConstraint?
    private var FLORENICtitleTopConstraint: NSLayoutConstraint?
    private var FLORENICidentityTextTopConstraint: NSLayoutConstraint?
    private var FLORENICidentityIconTopConstraint: NSLayoutConstraint?
    private var FLORENICconsentTopConstraint: NSLayoutConstraint?
    private var FLORENICprimaryTopConstraint: NSLayoutConstraint?
    private var FLORENICageGuideTopConstraint: NSLayoutConstraint?
    private var FLORENICprimaryHeightConstraint: NSLayoutConstraint?
    private var FLORENICsecondaryHeightConstraint: NSLayoutConstraint?
    private var FLORENICappleWidthConstraint: NSLayoutConstraint?
    private var FLORENICappleHeightConstraint: NSLayoutConstraint?
    private var FLORENICtermsCheckWidthConstraint: NSLayoutConstraint?
    private var FLORENICtermsCheckHeightConstraint: NSLayoutConstraint?
    private var FLORENICfieldHeightConstraints: [NSLayoutConstraint] = []
    private var FLORENICtermsBottomConstraint: NSLayoutConstraint?
    private var FLORENICappMarkCenterYConstraint: NSLayoutConstraint?
    private weak var FLORENICfocusedBloomField: UITextField?
    private var FLORENICkeyboardLiftDistance: CGFloat = 0
    
    private lazy var FLORENICbackdropImageView: UIImageView = {
        let FLORENICpetalView = UIImageView()
        FLORENICpetalView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalView.contentMode = .scaleAspectFill
        FLORENICpetalView.clipsToBounds = true
        FLORENICpetalView.image = self.FLORENICloginAsset(named: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCiloopgaisndBfagchkjdkrlozpx"), fallback: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCicolpoacskdLfOgUhIjDkalazwx"))
        return FLORENICpetalView
    }()
    
    private lazy var FLORENICshadeView: UIView = {
        let FLORENICpetalView = UIView()
        FLORENICpetalView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalView.backgroundColor = UIColor(red: 20 / 255, green: 20 / 255, blue: 20 / 255, alpha: 0.08)
        return FLORENICpetalView
    }()
    
    private lazy var FLORENICbrandImageView: UIImageView = {
        let FLORENICpetalView = UIImageView()
        FLORENICpetalView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalView.contentMode = .scaleAspectFit
        FLORENICpetalView.image = self.FLORENICloginAsset(named: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCiloopgaisndTfigthljek"), fallback: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCiloapoapsgdmfignh"))
        return FLORENICpetalView
    }()
    
    private lazy var FLORENICappMarkView: FLORENICPetalMarkView = {
        let FLORENICpetalView = FLORENICPetalMarkView()
        FLORENICpetalView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICpetalView
    }()
    
    private lazy var FLORENICbackButton: UIButton = {
        let FLORENICpetalButton = UIButton(type: .custom)
        FLORENICpetalButton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalButton.backgroundColor = .white
        FLORENICpetalButton.layer.cornerRadius = 22
        FLORENICpetalButton.tintColor = .black
        FLORENICpetalButton.setImage(UIImage(systemName: self.FLORENICpetalCipher("cqhweevrrtoynu.iloepfats")), for: .normal)
        FLORENICpetalButton.addTarget(self, action: #selector(FLORENICbackToWelcomeBouquet), for: .touchUpInside)
        return FLORENICpetalButton
    }()
    
    private lazy var FLORENICfieldStackView: UIStackView = {
        let FLORENICpetalStack = UIStackView()
        FLORENICpetalStack.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalStack.axis = .vertical
        FLORENICpetalStack.spacing = 12
        return FLORENICpetalStack
    }()
    
    private lazy var FLORENICnameField = FLORENICmakeField(FLORENICplaceholder: FLORENICpetalCipher("Eqnwteerrt yyuoiuorp ansadmfeg"), FLORENICkeyboard: .default, FLORENICsecure: false)
    private lazy var FLORENICemailField = FLORENICmakeField(FLORENICplaceholder: FLORENICpetalCipher("Eqnwteerrt yeumiaoipla saddfdgrhejsksl"), FLORENICkeyboard: .emailAddress, FLORENICsecure: false)
    private lazy var FLORENICpasswordField = FLORENICmakeField(FLORENICplaceholder: FLORENICpetalCipher("Eqnwteerrt ypuaisospwaosrddf"), FLORENICkeyboard: .default, FLORENICsecure: true)
    private lazy var FLORENICageField = FLORENICmakeField(FLORENICplaceholder: FLORENICpetalCipher("Eqnwteerrt yau inoupmabsedrf.g"), FLORENICkeyboard: .numberPad, FLORENICsecure: false)
    
    private lazy var FLORENICnameRow = FLORENICPetalFieldRow(FLORENICtitle: FLORENICpetalCipher("Nqawmeer"), FLORENICfield: FLORENICnameField)
    private lazy var FLORENICemailRow = FLORENICPetalFieldRow(FLORENICtitle: FLORENICpetalCipher("Eqmwaeirlt"), FLORENICfield: FLORENICemailField)
    private lazy var FLORENICpasswordRow = FLORENICPetalFieldRow(FLORENICtitle: FLORENICpetalCipher("Pqawsesrwtoyrudi"), FLORENICfield: FLORENICpasswordField)
    private lazy var FLORENICageRow = FLORENICPetalFieldRow(FLORENICtitle: FLORENICpetalCipher("Aqgwee"), FLORENICfield: FLORENICageField)
    
    private lazy var FLORENICageGuideLabel: UILabel = {
        let FLORENICpetalLabel = UILabel()
        FLORENICpetalLabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalLabel.text = self.FLORENICpetalCipher("Pqlweearstey usieolpeacstd fygohujrk lazgxec vrbannmgqew.e rItny utihoep ansedxftg hsjtkelpz,x\ncfvabcnimaqlwreerctoyguniiotpiaosnd fwgihljlk lbzex cuvsbendm qtwoe rvteyruiifoyp aysodufrg hajgkel zaxncdv\nbcnomnqfwierrmtwyhueitohpears dyfoguh jbkellzoxncgv btnom qtwheer tsyeulieocptaesdd fagghej kglrzoxucpv.b")
        FLORENICpetalLabel.textAlignment = .center
        FLORENICpetalLabel.textColor = UIColor(white: 1, alpha: 0.62)
        FLORENICpetalLabel.font = UIFont(name: self.FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: 15) ?? .systemFont(ofSize: 15)
        FLORENICpetalLabel.numberOfLines = 0
        FLORENICpetalLabel.adjustsFontSizeToFitWidth = true
        FLORENICpetalLabel.minimumScaleFactor = 0.8
        return FLORENICpetalLabel
    }()
    
    private lazy var FLORENICidentityGuideLabel: UILabel = {
        let FLORENICpetalLabel = UILabel()
        FLORENICpetalLabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalLabel.text = self.FLORENICpetalCipher("Tqawkeer tay uciloepaars dsfeglhfjikel zsxoc vwben mcqawne rvteyruiifoyp aysodufrg hajgkel\nzaxncdv bhnemlqpw ekreteypu itohpea scdofmgmhujnkiltzyx csvabfnem.q")
        FLORENICpetalLabel.textAlignment = .center
        FLORENICpetalLabel.textColor = UIColor(white: 1, alpha: 0.68)
        FLORENICpetalLabel.font = UIFont(name: self.FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: 20) ?? .systemFont(ofSize: 20)
        FLORENICpetalLabel.numberOfLines = 0
        return FLORENICpetalLabel
    }()
    
    private lazy var FLORENICidentityIconView: FLORENICIdentityBloomView = {
        let FLORENICpetalView = FLORENICIdentityBloomView()
        FLORENICpetalView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICpetalView
    }()
    
    private lazy var FLORENICidentityConsentLabel: UILabel = {
        let FLORENICpetalLabel = UILabel()
        FLORENICpetalLabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalLabel.backgroundColor = UIColor(white: 1, alpha: 0.06)
        FLORENICpetalLabel.layer.cornerRadius = 14
        FLORENICpetalLabel.clipsToBounds = true
        FLORENICpetalLabel.text = self.FLORENICpetalCipher("Bqyw eprrtoycueieodpiansgd,f gyhojuk lczoxncsvebnntm qtwoe rtthyeu\niporpoacsedsfsgihnjgk lozfx cyvobunrm qsweelrftiyeu ifoopra sadgfeg hvjekrlizfxiccvabtnimoqnw\neprutrypuoisoepsa.s dYfoguhrj kplhzoxtcovwbinlmlq wneortt ybuei osphaasrdefdg hwjiktlhz\nxtchvibrndm qpwaerrttiyeusi.o")
        FLORENICpetalLabel.textAlignment = .center
        FLORENICpetalLabel.textColor = UIColor(white: 1, alpha: 0.62)
        FLORENICpetalLabel.font = UIFont(name: self.FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: 16) ?? .systemFont(ofSize: 16)
        FLORENICpetalLabel.numberOfLines = 0
        return FLORENICpetalLabel
    }()
    
    private lazy var FLORENICprimaryButton: FLORENICGradientBloomButton = {
        let FLORENICpetalButton = FLORENICGradientBloomButton(type: .custom)
        FLORENICpetalButton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalButton.titleLabel?.font = UIFont(name: self.FLORENICpetalCipher("Aqvweenritry-uBiloapcaks"), size: 18) ?? .systemFont(ofSize: 18, weight: .heavy)
        FLORENICpetalButton.setTitleColor(.white, for: .normal)
        FLORENICpetalButton.addTarget(self, action: #selector(FLORENICprimaryBouquetTapped), for: .touchUpInside)
        return FLORENICpetalButton
    }()
    
    private lazy var FLORENICsecondaryButton: UIButton = {
        let FLORENICpetalButton = UIButton(type: .custom)
        FLORENICpetalButton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalButton.backgroundColor = UIColor(red: 20 / 255, green: 20 / 255, blue: 20 / 255, alpha: 1)
        FLORENICpetalButton.layer.cornerRadius = 26
        FLORENICpetalButton.titleLabel?.font = UIFont(name: self.FLORENICpetalCipher("Aqvweenritry-uHieoapvays"), size: 20) ?? .systemFont(ofSize: 20, weight: .heavy)
        FLORENICpetalButton.setTitleColor(.white, for: .normal)
        FLORENICpetalButton.addTarget(self, action: #selector(FLORENICsecondaryBouquetTapped), for: .touchUpInside)
        return FLORENICpetalButton
    }()
    
    private lazy var FLORENICorLabel: UILabel = {
        let FLORENICpetalLabel = UILabel()
        FLORENICpetalLabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalLabel.text = self.FLORENICpetalCipher("oqrw")
        FLORENICpetalLabel.textAlignment = .center
        FLORENICpetalLabel.textColor = UIColor(white: 1, alpha: 0.6)
        FLORENICpetalLabel.font = UIFont(name: self.FLORENICpetalCipher("AqvweenritryNueixotp-aMseddfiguhmj"), size: 12) ?? .systemFont(ofSize: 12, weight: .medium)
        return FLORENICpetalLabel
    }()
    
    private lazy var FLORENICorLeftLine: UIView = FLORENICmakeLine()
    private lazy var FLORENICorRightLine: UIView = FLORENICmakeLine()
    
    private lazy var FLORENICappleButton: UIButton = {
        let FLORENICpetalButton = UIButton(type: .custom)
        FLORENICpetalButton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalButton.backgroundColor = .white
        FLORENICpetalButton.layer.cornerRadius = 24
        FLORENICpetalButton.tintColor = .black
        FLORENICpetalButton.setImage(UIImage(systemName: self.FLORENICpetalCipher("aqpwpelret.yluoigoop")), for: .normal)
        FLORENICpetalButton.addTarget(self, action: #selector(FLORENICappleBouquetTapped), for: .touchUpInside)
        return FLORENICpetalButton
    }()
    
    private lazy var FLORENICtermsCheckButton: UIButton = {
        let FLORENICpetalButton = UIButton(type: .custom)
        FLORENICpetalButton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalButton.setImage(self.FLORENICloginAsset(named: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCiloopgaisndCfhgehcjkkOlfzfx"), fallback: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCiuoipoaesndufsg")), for: .normal)
        FLORENICpetalButton.setImage(self.FLORENICloginAsset(named: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCiloopgaisndCfhgehcjkkOlnz"), fallback: self.FLORENICpetalCipher("FqLwOeRrEtNyIuCinoopiausudyf")), for: .selected)
        FLORENICpetalButton.addTarget(self, action: #selector(FLORENICtermsBouquetTapped), for: .touchUpInside)
        return FLORENICpetalButton
    }()
    
    private lazy var FLORENICtermsTextView: UITextView = {
        let FLORENICpetalText = UITextView()
        FLORENICpetalText.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalText.backgroundColor = .clear
        FLORENICpetalText.isEditable = false
        FLORENICpetalText.isScrollEnabled = false
        FLORENICpetalText.delegate = self
        FLORENICpetalText.textContainerInset = .zero
        FLORENICpetalText.textContainer.lineFragmentPadding = 0
        return FLORENICpetalText
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FLORENICbuildPetalGate()
        FLORENICapplyTermsCopy()
        FLORENICbindKeyboardGarden()
        FLORENICarboretum(FLORENICtexf: FLORENICemailField)
        FLORENICarboretum(FLORENICtexf: FLORENICpasswordField)
        FLORENICarboretum(FLORENICtexf: FLORENICnameField)
        FLORENICarboretum(FLORENICtexf: FLORENICageField)
        FLORENICrenderPetalGate(.welcome)
        FLORENICtermsCheckButton.isSelected = UserDefaults.standard.bool(forKey: FLORENICeulaBouquetKey)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        FLORENICprimaryButton.FLORENICrefreshGradient()
    }
    
    override func viewDidAppear(_ FLORENICanimated: Bool) {
        super.viewDidAppear(FLORENICanimated)
        FLORENICpresentEulaBloomIfNeeded()
    }
    
    private func FLORENICbuildPetalGate() {
        view.backgroundColor = UIColor(red: 20 / 255, green: 20 / 255, blue: 20 / 255, alpha: 1)
        view.addSubview(FLORENICbackdropImageView)
        view.addSubview(FLORENICshadeView)
        view.addSubview(FLORENICbackButton)
        view.addSubview(FLORENICbrandImageView)
        view.addSubview(FLORENICappMarkView)
        view.addSubview(FLORENICfieldStackView)
        view.addSubview(FLORENICageGuideLabel)
        view.addSubview(FLORENICidentityGuideLabel)
        view.addSubview(FLORENICidentityIconView)
        view.addSubview(FLORENICidentityConsentLabel)
        view.addSubview(FLORENICprimaryButton)
        view.addSubview(FLORENICsecondaryButton)
        view.addSubview(FLORENICorLeftLine)
        view.addSubview(FLORENICorLabel)
        view.addSubview(FLORENICorRightLine)
        view.addSubview(FLORENICappleButton)
        view.addSubview(FLORENICtermsCheckButton)
        view.addSubview(FLORENICtermsTextView)
        [FLORENICnameRow, FLORENICemailRow, FLORENICpasswordRow, FLORENICageRow].forEach { FLORENICfieldStackView.addArrangedSubview($0) }
        
        let FLORENICsafe = view.safeAreaLayoutGuide
        FLORENICtitleTopConstraint = FLORENICbrandImageView.topAnchor.constraint(equalTo: FLORENICsafe.topAnchor, constant: 132)
        FLORENICfieldStackTopConstraint = FLORENICfieldStackView.topAnchor.constraint(equalTo: FLORENICbrandImageView.bottomAnchor, constant: 45)
        FLORENICidentityTextTopConstraint = FLORENICidentityGuideLabel.topAnchor.constraint(equalTo: FLORENICsafe.topAnchor, constant: 304)
        FLORENICidentityIconTopConstraint = FLORENICidentityIconView.topAnchor.constraint(equalTo: FLORENICidentityGuideLabel.bottomAnchor, constant: 44)
        FLORENICconsentTopConstraint = FLORENICidentityConsentLabel.topAnchor.constraint(equalTo: FLORENICidentityIconView.bottomAnchor, constant: 50)
        FLORENICprimaryTopConstraint = FLORENICprimaryButton.topAnchor.constraint(equalTo: FLORENICpasswordRow.bottomAnchor, constant: 62)
        FLORENICageGuideTopConstraint = FLORENICageGuideLabel.topAnchor.constraint(equalTo: FLORENICageRow.bottomAnchor, constant: 24)
        FLORENICprimaryHeightConstraint = FLORENICprimaryButton.heightAnchor.constraint(equalToConstant: 48)
        FLORENICsecondaryHeightConstraint = FLORENICsecondaryButton.heightAnchor.constraint(equalToConstant: 52)
        FLORENICappleWidthConstraint = FLORENICappleButton.widthAnchor.constraint(equalToConstant: 48)
        FLORENICappleHeightConstraint = FLORENICappleButton.heightAnchor.constraint(equalToConstant: 48)
        FLORENICtermsCheckWidthConstraint = FLORENICtermsCheckButton.widthAnchor.constraint(equalToConstant: 22)
        FLORENICtermsCheckHeightConstraint = FLORENICtermsCheckButton.heightAnchor.constraint(equalToConstant: 22)
        FLORENICtermsBottomConstraint = FLORENICtermsCheckButton.bottomAnchor.constraint(equalTo: FLORENICsafe.bottomAnchor, constant: -22)
        FLORENICappMarkCenterYConstraint = FLORENICappMarkView.centerYAnchor.constraint(equalTo: FLORENICsafe.topAnchor, constant: 356)
        
        FLORENICwovenConstraints = [
            FLORENICbackdropImageView.topAnchor.constraint(equalTo: view.topAnchor),
            FLORENICbackdropImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            FLORENICbackdropImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            FLORENICbackdropImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            FLORENICshadeView.topAnchor.constraint(equalTo: view.topAnchor),
            FLORENICshadeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            FLORENICshadeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            FLORENICshadeView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            FLORENICbackButton.topAnchor.constraint(equalTo: FLORENICsafe.topAnchor, constant: 14),
            FLORENICbackButton.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 24),
            FLORENICbackButton.widthAnchor.constraint(equalToConstant: 44),
            FLORENICbackButton.heightAnchor.constraint(equalToConstant: 44),
            FLORENICbrandImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FLORENICbrandImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.51),
            FLORENICbrandImageView.heightAnchor.constraint(equalTo: FLORENICbrandImageView.widthAnchor, multiplier: 43 / 196),
            FLORENICtitleTopConstraint!,
            FLORENICappMarkView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FLORENICappMarkView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.24),
            FLORENICappMarkView.heightAnchor.constraint(equalTo: FLORENICappMarkView.widthAnchor),
            FLORENICappMarkCenterYConstraint!,
            FLORENICfieldStackView.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 32),
            FLORENICfieldStackView.trailingAnchor.constraint(equalTo: FLORENICsafe.trailingAnchor, constant: -32),
            FLORENICfieldStackTopConstraint!,
            FLORENICageGuideTopConstraint!,
            FLORENICageGuideLabel.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 36),
            FLORENICageGuideLabel.trailingAnchor.constraint(equalTo: FLORENICsafe.trailingAnchor, constant: -36),
            FLORENICidentityGuideLabel.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 38),
            FLORENICidentityGuideLabel.trailingAnchor.constraint(equalTo: FLORENICsafe.trailingAnchor, constant: -38),
            FLORENICidentityTextTopConstraint!,
            FLORENICidentityIconView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FLORENICidentityIconView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.40),
            FLORENICidentityIconView.heightAnchor.constraint(equalTo: FLORENICidentityIconView.widthAnchor, multiplier: 1.17),
            FLORENICidentityIconTopConstraint!,
            FLORENICidentityConsentLabel.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 32),
            FLORENICidentityConsentLabel.trailingAnchor.constraint(equalTo: FLORENICsafe.trailingAnchor, constant: -32),
            FLORENICidentityConsentLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.122),
            FLORENICconsentTopConstraint!,
            FLORENICprimaryButton.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 32),
            FLORENICprimaryButton.trailingAnchor.constraint(equalTo: FLORENICsafe.trailingAnchor, constant: -32),
            FLORENICprimaryHeightConstraint!,
            FLORENICprimaryTopConstraint!,
            FLORENICsecondaryButton.leadingAnchor.constraint(equalTo: FLORENICprimaryButton.leadingAnchor),
            FLORENICsecondaryButton.trailingAnchor.constraint(equalTo: FLORENICprimaryButton.trailingAnchor),
            FLORENICsecondaryButton.topAnchor.constraint(equalTo: FLORENICprimaryButton.bottomAnchor, constant: 12),
            FLORENICsecondaryHeightConstraint!,
            FLORENICorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FLORENICorLabel.topAnchor.constraint(equalTo: FLORENICsecondaryButton.bottomAnchor, constant: 12),
            FLORENICorLabel.widthAnchor.constraint(equalToConstant: 36),
            FLORENICorLabel.heightAnchor.constraint(equalToConstant: 24),
            FLORENICorLeftLine.centerYAnchor.constraint(equalTo: FLORENICorLabel.centerYAnchor),
            FLORENICorLeftLine.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 35),
            FLORENICorLeftLine.trailingAnchor.constraint(equalTo: FLORENICorLabel.leadingAnchor, constant: -8),
            FLORENICorLeftLine.heightAnchor.constraint(equalToConstant: 1),
            FLORENICorRightLine.centerYAnchor.constraint(equalTo: FLORENICorLabel.centerYAnchor),
            FLORENICorRightLine.leadingAnchor.constraint(equalTo: FLORENICorLabel.trailingAnchor, constant: 8),
            FLORENICorRightLine.trailingAnchor.constraint(equalTo: FLORENICsafe.trailingAnchor, constant: -35),
            FLORENICorRightLine.heightAnchor.constraint(equalToConstant: 1),
            FLORENICappleButton.topAnchor.constraint(equalTo: FLORENICorLabel.bottomAnchor, constant: 14),
            FLORENICappleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FLORENICappleWidthConstraint!,
            FLORENICappleHeightConstraint!,
            FLORENICtermsCheckButton.leadingAnchor.constraint(equalTo: FLORENICsafe.leadingAnchor, constant: 28),
            FLORENICtermsCheckWidthConstraint!,
            FLORENICtermsCheckHeightConstraint!,
            FLORENICtermsBottomConstraint!,
            FLORENICtermsTextView.leadingAnchor.constraint(equalTo: FLORENICtermsCheckButton.trailingAnchor, constant: 8),
            FLORENICtermsTextView.trailingAnchor.constraint(equalTo: FLORENICsafe.trailingAnchor, constant: -26),
            FLORENICtermsTextView.centerYAnchor.constraint(equalTo: FLORENICtermsCheckButton.centerYAnchor, constant: 13),
            FLORENICtermsTextView.heightAnchor.constraint(equalToConstant: 48)
        ]
        NSLayoutConstraint.activate(FLORENICwovenConstraints)
    }
    
    private func FLORENICrenderPetalGate(_ FLORENICscene: FLORENICPetalGateScene) {
        FLORENICcurrentGardenScene = FLORENICscene
        view.endEditing(true)
        FLORENICkeyboardLiftDistance = 0
        view.transform = .identity
        let FLORENICheight = view.bounds.height > 0 ? view.bounds.height : UIScreen.main.bounds.height
        FLORENICapplyResponsiveBloomMetrics(FLORENICheight)
        FLORENICappMarkView.isHidden = FLORENICscene != .welcome
        FLORENICbackButton.isHidden = FLORENICscene != .signIn && FLORENICscene != .signUp
        FLORENICbrandImageView.isHidden = FLORENICscene == .welcome || FLORENICscene == .identity
        FLORENICfieldStackView.isHidden = FLORENICscene == .welcome || FLORENICscene == .identity
        FLORENICageGuideLabel.isHidden = FLORENICscene != .signUp
        FLORENICidentityGuideLabel.isHidden = FLORENICscene != .identity
        FLORENICidentityIconView.isHidden = FLORENICscene != .identity
        FLORENICidentityConsentLabel.isHidden = FLORENICscene != .identity
        FLORENICsecondaryButton.isHidden = FLORENICscene != .welcome
        FLORENICorLabel.isHidden = FLORENICscene != .welcome
        FLORENICorLeftLine.isHidden = FLORENICscene != .welcome
        FLORENICorRightLine.isHidden = FLORENICscene != .welcome
        FLORENICappleButton.isHidden = FLORENICscene != .welcome
        FLORENICtermsCheckButton.isHidden = FLORENICscene == .signUp || FLORENICscene == .identity
        FLORENICtermsTextView.isHidden = FLORENICscene == .signUp || FLORENICscene == .identity
        FLORENICnameRow.isHidden = FLORENICscene != .signUp
        FLORENICageRow.isHidden = FLORENICscene != .signUp
        FLORENICemailRow.isHidden = FLORENICscene == .welcome || FLORENICscene == .identity
        FLORENICpasswordRow.isHidden = FLORENICscene == .welcome || FLORENICscene == .identity
        
        switch FLORENICscene {
        case .welcome:
            FLORENICprimaryButton.setTitle(FLORENICpetalCipher("Lqowgeirnt"), for: .normal)
            FLORENICsecondaryButton.setTitle(FLORENICpetalCipher("Sqiwgenr tUypu"), for: .normal)
            FLORENICappMarkCenterYConstraint?.constant = FLORENICheight * FLORENICwelcomeMarkRatio(FLORENICheight)
            FLORENICprimaryTopConstraint?.isActive = false
            FLORENICprimaryTopConstraint = FLORENICprimaryButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: FLORENICheight * FLORENICwelcomeButtonRatio(FLORENICheight))
            FLORENICprimaryTopConstraint?.isActive = true
        case .signIn:
            FLORENICbrandImageView.image = FLORENICloginAsset(named: FLORENICpetalCipher("FqLwOeRrEtNyIuCiloopgaisndTfigthljek"), fallback: FLORENICpetalCipher("FqLwOeRrEtNyIuCiloapoapsgdmfignh"))
            FLORENICprimaryButton.setTitle(FLORENICpetalCipher("LqOwGeIrNt"), for: .normal)
            FLORENICtitleTopConstraint?.constant = FLORENICheight * FLORENICsignInTitleRatio(FLORENICheight)
            FLORENICfieldStackTopConstraint?.constant = FLORENICheight * FLORENICsignInFieldRatio(FLORENICheight)
            FLORENICprimaryTopConstraint?.isActive = false
            FLORENICprimaryTopConstraint = FLORENICprimaryButton.topAnchor.constraint(equalTo: FLORENICpasswordRow.bottomAnchor, constant: FLORENICheight * FLORENICsignInButtonRatio(FLORENICheight))
            FLORENICprimaryTopConstraint?.isActive = true
            FLORENICtermsBottomConstraint?.constant = FLORENICheight < 600 ? -6 : -22
        case .signUp:
            FLORENICbrandImageView.image = FLORENICloginAsset(named: FLORENICpetalCipher("FqLwOeRrEtNyIuCiloopgaisndTfigthljek"), fallback: FLORENICpetalCipher("FqLwOeRrEtNyIuCiloapoapsgdmfignh"))
            FLORENICprimaryButton.setTitle(FLORENICpetalCipher("LqOwGeIrNt"), for: .normal)
            FLORENICtitleTopConstraint?.constant = FLORENICheight * FLORENICsignUpTitleRatio(FLORENICheight)
            FLORENICfieldStackTopConstraint?.constant = FLORENICheight * FLORENICsignUpFieldRatio(FLORENICheight)
            FLORENICageGuideTopConstraint?.constant = FLORENICheight < 600 ? 4 : (FLORENICheight < 700 ? 8 : 24)
            FLORENICprimaryTopConstraint?.isActive = false
            FLORENICprimaryTopConstraint = FLORENICprimaryButton.topAnchor.constraint(equalTo: FLORENICageGuideLabel.bottomAnchor, constant: FLORENICheight * FLORENICsignUpButtonRatio(FLORENICheight))
            FLORENICprimaryTopConstraint?.isActive = true
        case .identity:
            FLORENICprimaryButton.setTitle(FLORENICpetalCipher("Tqawkeer tay uSieolpfaised"), for: .normal)
            FLORENICidentityTextTopConstraint?.constant = FLORENICheight * FLORENICidentityTitleRatio(FLORENICheight)
            FLORENICidentityIconTopConstraint?.constant = FLORENICheight * FLORENICidentityIconGapRatio(FLORENICheight)
            FLORENICconsentTopConstraint?.constant = FLORENICheight * FLORENICidentityConsentGapRatio(FLORENICheight)
            FLORENICprimaryTopConstraint?.isActive = false
            FLORENICprimaryTopConstraint = FLORENICprimaryButton.topAnchor.constraint(equalTo: FLORENICidentityConsentLabel.bottomAnchor, constant: FLORENICheight * FLORENICidentityButtonRatio(FLORENICheight))
            FLORENICprimaryTopConstraint?.isActive = true
        }
        UIView.animate(withDuration: 0.18) { self.view.layoutIfNeeded() }
    }
    
    private func FLORENICapplyResponsiveBloomMetrics(_ FLORENICheight: CGFloat) {
        let FLORENICtinyBloom = FLORENICheight < 600
        let FLORENICcompactBloom = FLORENICheight < 700
        let FLORENICfieldHeight: CGFloat = FLORENICtinyBloom ? 38 : (FLORENICcompactBloom ? 42 : 48)
        let FLORENICrowSpacing: CGFloat = FLORENICtinyBloom ? 2 : (FLORENICcompactBloom ? 4 : 8)
        let FLORENICstackSpacing: CGFloat = FLORENICtinyBloom ? 4 : (FLORENICcompactBloom ? 7 : 12)
        let FLORENICrowFont: CGFloat = FLORENICtinyBloom ? 13 : (FLORENICcompactBloom ? 15 : 17)
        let FLORENICfieldFont: CGFloat = FLORENICtinyBloom ? 14 : (FLORENICcompactBloom ? 16 : 18)
        FLORENICfieldStackView.spacing = FLORENICstackSpacing
        [FLORENICnameRow, FLORENICemailRow, FLORENICpasswordRow, FLORENICageRow].forEach {
            $0.FLORENICfitPetalRow(FLORENICfontSize: FLORENICrowFont, FLORENICspacing: FLORENICrowSpacing)
        }
        FLORENICfieldHeightConstraints.forEach { $0.constant = FLORENICfieldHeight }
        [FLORENICnameField, FLORENICemailField, FLORENICpasswordField, FLORENICageField].forEach {
            $0.layer.cornerRadius = FLORENICfieldHeight / 2
            $0.font = UIFont(name: FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: FLORENICfieldFont) ?? .systemFont(ofSize: FLORENICfieldFont)
        }
        FLORENICprimaryHeightConstraint?.constant = FLORENICtinyBloom ? 42 : (FLORENICcompactBloom ? 44 : 48)
        FLORENICsecondaryHeightConstraint?.constant = FLORENICtinyBloom ? 44 : (FLORENICcompactBloom ? 48 : 52)
        FLORENICappleWidthConstraint?.constant = FLORENICtinyBloom ? 40 : (FLORENICcompactBloom ? 44 : 48)
        FLORENICappleHeightConstraint?.constant = FLORENICtinyBloom ? 40 : (FLORENICcompactBloom ? 44 : 48)
        FLORENICappleButton.layer.cornerRadius = (FLORENICappleHeightConstraint?.constant ?? 48) / 2
        FLORENICtermsCheckWidthConstraint?.constant = FLORENICtinyBloom ? 18 : (FLORENICcompactBloom ? 20 : 22)
        FLORENICtermsCheckHeightConstraint?.constant = FLORENICtinyBloom ? 18 : (FLORENICcompactBloom ? 20 : 22)
        FLORENICageGuideLabel.font = UIFont(name: FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: FLORENICtinyBloom ? 10 : (FLORENICcompactBloom ? 12 : 15)) ?? .systemFont(ofSize: FLORENICtinyBloom ? 10 : (FLORENICcompactBloom ? 12 : 15))
        FLORENICidentityGuideLabel.font = UIFont(name: FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: FLORENICtinyBloom ? 15 : (FLORENICcompactBloom ? 17 : 20)) ?? .systemFont(ofSize: FLORENICtinyBloom ? 15 : (FLORENICcompactBloom ? 17 : 20))
        FLORENICidentityConsentLabel.font = UIFont(name: FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: FLORENICtinyBloom ? 11 : (FLORENICcompactBloom ? 13 : 16)) ?? .systemFont(ofSize: FLORENICtinyBloom ? 11 : (FLORENICcompactBloom ? 13 : 16))
        FLORENICprimaryButton.titleLabel?.font = UIFont(name: FLORENICpetalCipher("Aqvweenritry-uBiloapcaks"), size: FLORENICtinyBloom ? 15 : (FLORENICcompactBloom ? 16 : 18)) ?? .systemFont(ofSize: FLORENICtinyBloom ? 15 : (FLORENICcompactBloom ? 16 : 18), weight: .heavy)
        FLORENICsecondaryButton.titleLabel?.font = UIFont(name: FLORENICpetalCipher("Aqvweenritry-uHieoapvays"), size: FLORENICtinyBloom ? 16 : (FLORENICcompactBloom ? 18 : 20)) ?? .systemFont(ofSize: FLORENICtinyBloom ? 16 : (FLORENICcompactBloom ? 18 : 20), weight: .heavy)
        FLORENICbrandImageView.transform = CGAffineTransform(scaleX: FLORENICtinyBloom ? 0.82 : (FLORENICcompactBloom ? 0.92 : 1), y: FLORENICtinyBloom ? 0.82 : (FLORENICcompactBloom ? 0.92 : 1))
        FLORENICappMarkView.transform = CGAffineTransform(scaleX: FLORENICtinyBloom ? 0.82 : (FLORENICcompactBloom ? 0.90 : 1), y: FLORENICtinyBloom ? 0.82 : (FLORENICcompactBloom ? 0.90 : 1))
    }
    
    private func FLORENICwelcomeMarkRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.34 : (FLORENICheight < 700 ? 0.38 : 0.438)
    }
    
    private func FLORENICwelcomeButtonRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.48 : (FLORENICheight < 700 ? 0.53 : 0.58)
    }
    
    private func FLORENICsignInTitleRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.16 : (FLORENICheight < 700 ? 0.20 : 0.278)
    }
    
    private func FLORENICsignInFieldRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.018 : (FLORENICheight < 700 ? 0.032 : 0.055)
    }
    
    private func FLORENICsignInButtonRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.030 : (FLORENICheight < 700 ? 0.045 : 0.076)
    }
    
    private func FLORENICsignUpTitleRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.036 : (FLORENICheight < 700 ? 0.075 : 0.154)
    }
    
    private func FLORENICsignUpFieldRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.006 : (FLORENICheight < 700 ? 0.014 : 0.032)
    }
    
    private func FLORENICsignUpButtonRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.010 : (FLORENICheight < 700 ? 0.020 : 0.054)
    }
    
    private func FLORENICidentityTitleRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.16 : (FLORENICheight < 700 ? 0.19 : 0.238)
    }
    
    private func FLORENICidentityIconGapRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.014 : (FLORENICheight < 700 ? 0.022 : 0.030)
    }
    
    private func FLORENICidentityConsentGapRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.014 : (FLORENICheight < 700 ? 0.022 : 0.030)
    }
    
    private func FLORENICidentityButtonRatio(_ FLORENICheight: CGFloat) -> CGFloat {
        FLORENICheight < 600 ? 0.012 : (FLORENICheight < 700 ? 0.018 : 0.024)
    }
    
    private func FLORENICmakeField(FLORENICplaceholder: String, FLORENICkeyboard: UIKeyboardType, FLORENICsecure: Bool) -> UITextField {
        let FLORENICpetalField = UITextField()
        FLORENICpetalField.translatesAutoresizingMaskIntoConstraints = false
        let FLORENICheightConstraint = FLORENICpetalField.heightAnchor.constraint(equalToConstant: 48)
        FLORENICheightConstraint.isActive = true
        FLORENICfieldHeightConstraints.append(FLORENICheightConstraint)
        FLORENICpetalField.backgroundColor = .white
        FLORENICpetalField.layer.cornerRadius = 24
        FLORENICpetalField.clipsToBounds = true
        FLORENICpetalField.textAlignment = .center
        FLORENICpetalField.textColor = .black
        FLORENICpetalField.tintColor = UIColor(red: 255 / 255, green: 86 / 255, blue: 156 / 255, alpha: 1)
        FLORENICpetalField.font = UIFont(name: FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: 18) ?? .systemFont(ofSize: 18)
        FLORENICpetalField.keyboardType = FLORENICkeyboard
        FLORENICpetalField.autocapitalizationType = .none
        FLORENICpetalField.autocorrectionType = .no
        FLORENICpetalField.returnKeyType = .done
        FLORENICpetalField.delegate = self
        FLORENICpetalField.isSecureTextEntry = FLORENICsecure
        FLORENICpetalField.attributedPlaceholder = NSAttributedString(string: FLORENICplaceholder, attributes: [
            .foregroundColor: UIColor.black.withAlphaComponent(0.4),
            .font: UIFont(name: FLORENICpetalCipher("Aqvweenritry-uRioompaans"), size: 18) ?? .systemFont(ofSize: 18)
        ])
        return FLORENICpetalField
    }
    
    private func FLORENICloginAsset(named FLORENICassetName: String, fallback FLORENICfallbackName: String) -> UIImage? {
        UIImage(named: FLORENICassetName) ?? FLORENICResourceLoader.shared.FLORENICImage(named: FLORENICfallbackName)
    }
    
    private func FLORENICpetalCipher(_ FLORENICvalue: String) -> String {
        florenicFloralDesign(florenicIke: FLORENICvalue)
    }
    
    private func FLORENICmakeLine() -> UIView {
        let FLORENICpetalLine = UIView()
        FLORENICpetalLine.translatesAutoresizingMaskIntoConstraints = false
        FLORENICpetalLine.backgroundColor = UIColor(white: 1, alpha: 0.18)
        return FLORENICpetalLine
    }
    
    private static func FLORENICdecodeBouquetText(_ FLORENICvalue: String) -> String {
        guard let FLORENICdata = Data(base64Encoded: FLORENICvalue),
              let FLORENICtext = String(data: FLORENICdata, encoding: .utf8) else { return "" }
        return FLORENICtext
    }
    
    private func FLORENICacceptEulaBouquet() {
        UserDefaults.standard.set(true, forKey: FLORENICeulaBouquetKey)
        FLORENICtermsCheckButton.isSelected = true
    }
    
    private func FLORENICpresentEulaBloomIfNeeded() {
        guard FLORENICdidOfferEulaBouquet == false,
              UserDefaults.standard.bool(forKey: FLORENICeulaBouquetKey) == false,
              presentedViewController == nil else { return }
        FLORENICdidOfferEulaBouquet = true
        let FLORENICsheet = UIAlertController(
            title: Self.FLORENICdecodeBouquetText("RmxhcmVMaXZlIEVVTEE="),
            message: Self.FLORENICdecodeBouquetText("RmxhcmVMaXZlIGlzIGEgZmxvd2VyLWFycmFuZ2luZyBjb21tdW5pdHkgZm9yIHNoYXJpbmcgZmxvcmFsIGlkZWFzLCBhcnJhbmdlbWVudCB0ZWNobmlxdWVzLCBzZWFzb25hbCBtYXRlcmlhbHMsIGFuZCBjcmVhdG9yIHVwZGF0ZXMuIEJ5IHVzaW5nIEZsYXJlTGl2ZSwgeW91IGFncmVlIHRvIGtlZXAgZXZlcnkgaW50ZXJhY3Rpb24gZm9jdXNlZCBvbiBsYXdmdWwsIHJlc3BlY3RmdWwgZmxvcmFsIGNyZWF0aW9uIGFuZCBjb21tdW5pdHkgbGVhcm5pbmcuCgpTYWZldHkgYW5kIGNvbnRlbnQgcnVsZXM6IEZsYXJlTGl2ZSBpcyBub3QgYSByYW5kb20sIGFub255bW91cywgb3IgYWR1bHQgY2hhdCBzZXJ2aWNlLiBZb3UgbWF5IG5vdCB1c2UgdGhlIGFwcCBmb3IgcmFuZG9tIG1hdGNoaW5nLCBhbm9ueW1vdXMgc29saWNpdGF0aW9uLCBzZXh1YWwgY29udGVudCwgaGFyYXNzbWVudCwgYnVsbHlpbmcsIHRocmVhdHMsIGhhdGUsIG9iamVjdGlmaWNhdGlvbiwgc2NhbXMsIHNwYW0sIG9yIGFueSBjb250ZW50IHRoYXQgdGFyZ2V0cyBvciBleHBsb2l0cyBhbm90aGVyIHBlcnNvbi4KCkFjY291bnQgcmVxdWlyZW1lbnRzOiBZb3UgbXVzdCB1c2UgYSB2YWxpZCBhY2NvdW50LCBwcm92aWRlIGFjY3VyYXRlIHJlZ2lzdHJhdGlvbiBpbmZvcm1hdGlvbiwgbWVldCB0aGUgcmVxdWlyZWQgYWdlIHN0YW5kYXJkLCBhbmQgY29tcGxldGUgdGhlIHJlcXVlc3RlZCBsb2NhbCBpZGVudGl0eSBjaGVjayBiZWZvcmUgcGFydGljaXBhdGluZy4gRG8gbm90IGltcGVyc29uYXRlIG90aGVycywgY3JlYXRlIG1pc2xlYWRpbmcgcHJvZmlsZXMsIG9yIHNoYXJlIGFjY291bnQgYWNjZXNzLgoKQ29tbXVuaXR5IGludGVyYWN0aW9uczogQ29udmVyc2F0aW9ucyBhcmUgaW50ZW5kZWQgZm9yIG11dHVhbC1mb2xsb3cgZmxvcmFsIGNyZWF0b3JzIGFuZCBzaG91bGQgcmVtYWluIGNvbm5lY3RlZCB0byBmbG9yYWwgaW5zcGlyYXRpb24sIGFycmFuZ2VtZW50IGZlZWRiYWNrLCBtYXRlcmlhbHMsIHRvb2xzLCBhbmQgY29tbXVuaXR5IHN1cHBvcnQuIFlvdSBhcmUgcmVzcG9uc2libGUgZm9yIHRoZSBjb250ZW50IHlvdSBwb3N0LCBzZW5kLCBvciB1cGxvYWQuCgpNb2RlcmF0aW9uOiBVc2VyIGNvbnRlbnQgbWF5IGJlIHJldmlld2VkIGJ5IGF1dG9tYXRlZCBhbmQgbWFudWFsIHN5c3RlbXMuIFVzZXJzIGNhbiByZXBvcnQgb3IgYmxvY2sgYWNjb3VudHMgYW5kIGNvbnRlbnQuIEFjY291bnRzIG9yIGNvbnRlbnQgdGhhdCB2aW9sYXRlIHRoZXNlIHJ1bGVzIG1heSBiZSByZXN0cmljdGVkLCByZW1vdmVkLCBvciB0ZXJtaW5hdGVkLgoKUHVyY2hhc2VzOiBQcmVtaXVtIHRvb2xzIG9yIGN1cmF0ZWQgcHJvZHVjdCBzZXRzIG1heSByZXF1aXJlIGFkZGl0aW9uYWwgcHVyY2hhc2UsIGFuZCBwdXJjaGFzZSBhY2Nlc3MgbXVzdCBiZSB1c2VkIG9ubHkgYXMgb2ZmZXJlZCBpbiB0aGUgYXBwLgoKQnkgdGFwcGluZyBBZ3JlZSwgeW91IGNvbmZpcm0gdGhhdCB5b3UgdW5kZXJzdGFuZCBhbmQgYWNjZXB0IHRoZXNlIHJ1bGVzIGFuZCB0aGUgYXBwIHRlcm1zIGJlZm9yZSB1c2luZyBGbGFyZUxpdmUu"),
            preferredStyle: .alert
        )
        FLORENICsheet.addAction(UIAlertAction(title: Self.FLORENICdecodeBouquetText("Tm90IE5vdw=="), style: .cancel))
        FLORENICsheet.addAction(UIAlertAction(title: Self.FLORENICdecodeBouquetText("QWdyZWU="), style: .default) { [weak self] _ in
            self?.FLORENICacceptEulaBouquet()
        })
        present(FLORENICsheet, animated: true)
    }
    
    private func FLORENICapplyTermsCopy() {
        let FLORENICbaseText = FLORENICpetalCipher("Bqyw ecrotnytuiinoupiansgd fygohuj kalgzrxecev btnom qowuerr t<yTueirompsa sodff gShejrkvlizcxec>v\nbannmdq w<ePrrtiyvuaicoyp aPsodlfigchyj>k.l")
        let FLORENICterms = FLORENICpetalCipher("<qTweerrmtsy uoifo pSaesrdvfigchej>k")
        let FLORENICprivacy = FLORENICpetalCipher("<qPwreirvtaycuyi oPpoalsidcfyg>h")
        let FLORENICcopy = NSMutableAttributedString(string: FLORENICbaseText)
        let FLORENICrange = NSRange(location: 0, length: FLORENICcopy.length)
        FLORENICcopy.addAttribute(.foregroundColor, value: UIColor(white: 1, alpha: 0.6), range: FLORENICrange)
        FLORENICcopy.addAttribute(.font, value: UIFont(name: FLORENICpetalCipher("Hqewlevrettyiuciao"), size: 13) ?? .systemFont(ofSize: 13), range: FLORENICrange)
        if let FLORENICtermsRange = FLORENICbaseText.range(of: FLORENICterms) {
            FLORENICcopy.addAttribute(.link, value: FLORENICpetalCipher("aqpwpe:r/t/ysueirovpiacsedTfegrhmj"), range: NSRange(FLORENICtermsRange, in: FLORENICbaseText))
        }
        if let FLORENICprivacyRange = FLORENICbaseText.range(of: FLORENICprivacy) {
            FLORENICcopy.addAttribute(.link, value: FLORENICpetalCipher("aqpwpe:r/t/ypuriiovpaacsydPfoglhijckyl"), range: NSRange(FLORENICprivacyRange, in: FLORENICbaseText))
        }
        FLORENICtermsTextView.attributedText = FLORENICcopy
        FLORENICtermsTextView.linkTextAttributes = [
            .foregroundColor: UIColor(white: 1, alpha: 0.68),
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
    }
    
    @objc private func FLORENICprimaryBouquetTapped() {
        switch FLORENICcurrentGardenScene {
        case .welcome:
            FLORENICrenderPetalGate(.signIn)
        case .signIn:
            FLORENIChandleBloomSignIn()
        case .signUp:
            FLORENIChandleBloomSignUp()
        case .identity:
            FLORENICstartBloomSelfieVerification()
        }
    }
    
    @objc private func FLORENICsecondaryBouquetTapped() {
        FLORENICrenderPetalGate(.signUp)
    }
    
    @objc private func FLORENICbackToWelcomeBouquet() {
        view.endEditing(true)
        FLORENICrenderPetalGate(.welcome)
    }
    
    @objc private func FLORENICtermsBouquetTapped(_ FLORENICsender: UIButton) {
        FLORENICsender.isSelected.toggle()
        UserDefaults.standard.set(FLORENICsender.isSelected, forKey: FLORENICeulaBouquetKey)
    }
    
    @objc private func FLORENICappleBouquetTapped() {
        guard FLORENICtermsCheckButton.isSelected else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey urieoapda sadnfdg hajgkrlezex ctvob nomuqrw etretrymusi ofpiarssdtf.g"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        let FLORENICprovider = ASAuthorizationAppleIDProvider()
        let FLORENICrequest = FLORENICprovider.createRequest()
        FLORENICrequest.requestedScopes = [.fullName, .email]
        let FLORENICcontroller = ASAuthorizationController(authorizationRequests: [FLORENICrequest])
        FLORENICcontroller.delegate = self
        FLORENICcontroller.presentationContextProvider = self
        FLORENICcontroller.performRequests()
    }
    
    private func FLORENIChandleBloomSignIn() {
        let FLORENICemail = FLORENICnormalizedEmail(FLORENICemailField.text)
        let FLORENICpassword = (FLORENICpasswordField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard FLORENICemail.isEmpty == false else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey ueinotpears defmgahijlk lfzixrcsvtb.n"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        guard FLORENICpassword.isEmpty == false else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey ueinotpears dpfagshsjwkolrzdx cfvibrnsmtq.w"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        if FLORENICisTestBouquet(FLORENICemail: FLORENICemail, FLORENICpassword: FLORENICpassword) {
            FLORENICrequestOriginalBloomLogin(FLORENICemail: FLORENICemail, FLORENICpassword: FLORENICpassword)
            return
        }
        guard FLORENICtermsCheckButton.isSelected else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey urieoapda sadnfdg hajgkrlezex ctvob nomuqrw etretrymusi ofpiarssdtf.g"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        if FLORENICregisteredBloomAccounts()[FLORENICemail] != nil {
            FLORENICrequestOriginalBloomLogin(FLORENICemail: FLORENICemail, FLORENICpassword: FLORENICpassword)
            return
        }
        FLORENICpendingBloomEmail = FLORENICemail
        FLORENICpendingBloomPassword = FLORENICpassword
        FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Cqowmeprlteytuei oypoausrd fFglhajrkelLzixvcev bpnrmoqfwielret yfuiirospta.s"), FLORENICgardenStyle: .FLORENICbudInfo)
        FLORENICemailField.text = FLORENICemail
        FLORENICpasswordField.text = FLORENICpassword
        FLORENICrenderPetalGate(.signUp)
    }
    
    private func FLORENIChandleBloomSignUp() {
        let FLORENICname = (FLORENICnameField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        let FLORENICemail = FLORENICnormalizedEmail(FLORENICemailField.text)
        let FLORENICpassword = (FLORENICpasswordField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        let FLORENICage = (FLORENICageField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard FLORENICname.isEmpty == false else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey ueinotpears dyfoguhrj knlazmxec.v"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        guard FLORENICemail.isEmpty == false else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey ueinotpears defmgahijlk lazdxdcrvebsnsm.q"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        guard FLORENICpassword.isEmpty == false else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey ueinotpears dpfagshsjwkolrzdx.c"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        guard let FLORENICageValue = Int(FLORENICage), (18...99).contains(FLORENICageValue) else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqlweearstey ueinotpears daf gvhajlkildz xacgveb.n"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        FLORENICpendingBloomName = FLORENICname
        FLORENICpendingBloomEmail = FLORENICemail
        FLORENICpendingBloomPassword = FLORENICpassword
        FLORENICpendingBloomAge = FLORENICage
        FLORENICrenderPetalGate(.identity)
    }
    
    private func FLORENICcompleteLocalBloomRegistration() {
        var FLORENICaccounts = FLORENICregisteredBloomAccounts()
        FLORENICaccounts[FLORENICpendingBloomEmail] = [
            FLORENICpetalCipher("eqmwaeirlt"): FLORENICpendingBloomEmail,
            FLORENICpetalCipher("pqawsesrwtoyrudi"): FLORENICpendingBloomPassword,
            FLORENICpetalCipher("nqawmeer"): FLORENICpendingBloomName,
            FLORENICpetalCipher("aqgwee"): FLORENICpendingBloomAge,
            FLORENICpetalCipher("bqiwretrhtMyounitohp"): FLORENICbirthMonthFromPetalAge(FLORENICpendingBloomAge),
            FLORENICpetalCipher("aqvwaetratry"): FLORENICpendingSelfiePath.isEmpty ? FLORENICpetalCipher("FqLwOeRrEtNyIuCiiodpeanstdiftgyhAjvkaltzaxrcSviblnhmoquweetrttey") : FLORENICpendingSelfiePath,
            FLORENICpetalCipher("rqewgeirsttyruaitoipoansSdtfyglhej"): FLORENICpetalCipher("lqowcearltFyluoiroaplaSsedlffgihej")
        ]
        UserDefaults.standard.set(FLORENICaccounts, forKey: FLORENICregisteredBouquetKey)
        UserDefaults.standard.set(FLORENICaccounts[FLORENICpendingBloomEmail], forKey: FLORENICprofileBouquetKey)
        FLORENICrequestOriginalBloomLogin(FLORENICemail: FLORENICpendingBloomEmail, FLORENICpassword: FLORENICpendingBloomPassword)
    }
    
    private func FLORENICstartBloomSelfieVerification() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            FLORENICpresentBloomSelfieCamera()
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { [weak self] FLORENICallowed in
                DispatchQueue.main.async {
                    if FLORENICallowed {
                        self?.FLORENICpresentBloomSelfieCamera()
                    } else {
                        self?.FLORENICdisplayFloralMessage(FLORENICblossomText: self?.FLORENICpetalCipher("Cqawmeerrtay uaicocpeasssd figsh jrkelqzuxicrvebdn mtqow evretryiufiyo pyaosudrf gahgjek.l") ?? String(), FLORENICgardenStyle: .FLORENICvineWarning)
                    }
                }
            }
        case .denied, .restricted:
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Cqawmeerrtay uaicocpeasssd figsh jrkelqzuxicrvebdn mtqow evretryiufiyo pyaosudrf gahgjek.l"), FLORENICgardenStyle: .FLORENICvineWarning)
        @unknown default:
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Cqawmeerrtay uaicocpeasssd figsh jrkelqzuxicrvebdn mtqow evretryiufiyo pyaosudrf gahgjek.l"), FLORENICgardenStyle: .FLORENICvineWarning)
        }
    }
    
    private func FLORENICpresentBloomSelfieCamera() {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Cqawmeerrtay uiiso puansadvfagihljakbllzex covnb ntmhqiwse rdteyvuiicoep.a"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        let FLORENICcameraPicker = UIImagePickerController()
        FLORENICcameraPicker.sourceType = .camera
        FLORENICcameraPicker.cameraDevice = .front
        FLORENICcameraPicker.allowsEditing = true
        FLORENICcameraPicker.delegate = self
        present(FLORENICcameraPicker, animated: true)
    }
    
    private func FLORENICstoreBloomSelfie(_ FLORENICimage: UIImage) -> String {
        guard let FLORENICdata = FLORENICimage.jpegData(compressionQuality: 0.82) else { return String() }
        let FLORENICfileName = FLORENICpetalCipher("FqLwOeRrEtNyIuCi_obplaosodmf_gshejlkflizex_c") + UUID().uuidString + "." + FLORENICpetalCipher("jqpwge")
        guard let FLORENICdocuments = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return String() }
        let FLORENICfileURL = FLORENICdocuments.appendingPathComponent(FLORENICfileName)
        do {
            try FLORENICdata.write(to: FLORENICfileURL, options: .atomic)
            return FLORENICfileURL.path
        } catch {
            return String()
        }
    }
    
    func imagePickerController(_ FLORENICpicker: UIImagePickerController, didFinishPickingMediaWithInfo FLORENICinfo: [UIImagePickerController.InfoKey : Any]) {
        let FLORENICimage = (FLORENICinfo[.editedImage] as? UIImage) ?? (FLORENICinfo[.originalImage] as? UIImage)
        FLORENICpicker.dismiss(animated: true) { [weak self] in
            guard let self, let FLORENICimage else {
                self?.FLORENICdisplayFloralMessage(FLORENICblossomText: self?.FLORENICpetalCipher("Pqlweearstey ufiionpiasshd ftghhej kslezlxfciveb nvmeqrwiefritcyautiioopna sfdifrgshtj.k") ?? String(), FLORENICgardenStyle: .FLORENICvineWarning)
                return
            }
            self.FLORENICpendingSelfiePath = self.FLORENICstoreBloomSelfie(FLORENICimage)
            self.FLORENICcompleteLocalBloomRegistration()
        }
    }
    
    func imagePickerControllerDidCancel(_ FLORENICpicker: UIImagePickerController) {
        FLORENICpicker.dismiss(animated: true) { [weak self] in
            self?.FLORENICdisplayFloralMessage(FLORENICblossomText: self?.FLORENICpetalCipher("Pqlweearstey ufiionpiasshd ftghhej kslezlxfciveb nvmeqrwiefritcyautiioopna sfdifrgshtj.k") ?? String(), FLORENICgardenStyle: .FLORENICvineWarning)
        }
    }
    
    private func FLORENICrequestOriginalBloomLogin(FLORENICemail: String, FLORENICpassword: String) {
        FLORENICstartAnimatingindicater()
        let FLORENICpayload = [FLORENICpetalCipher("fqlwoerratlyFuoiaomp"): FLORENICemail, FLORENICpetalCipher("fqrwoegr"): FLORENICpassword, FLORENICpetalCipher("pqiwneHrotlydueiro"): FLORENICpetalCipher("1q3w4e3r9t2y1u5i")]
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: FLORENICpayload, florenicTexture: FLORENICpetalCipher("/qhwgewrityyeumiaoepbaesjdzfzg/hpjjkgltzlxicbvzbpn")) { [weak self] FLORENICresponse in
            self?.FLORENIChiddenAnimater()
            self?.FLORENICcompleteBloomSession(FLORENICresponse)
        } florenicGreenery: { [weak self] FLORENICerror in
            self?.FLORENIChiddenAnimater()
            self?.FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICerror.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
        }
    }
    
    private func FLORENICrequestAppleBloomLogin(FLORENICidentityToken: String, FLORENICappleId: String, FLORENICemail: String?) {
        FLORENICstartAnimatingindicater()
        let FLORENICbundleId = Bundle.main.bundleIdentifier ?? FLORENICpetalCipher("cqowme.rftlyaurieolpiavsed.fpgrhejskulrzex")
        let FLORENICequipmentNo = UIDevice.current.identifierForVendor?.uuidString ?? FLORENICappleId
        let FLORENICpayload: [String: Any] = [
            FLORENICpetalCipher("cqownetratiynueiro"): FLORENICidentityToken,
            FLORENICpetalCipher("hqawremrotnyyu"): FLORENICbundleId,
            FLORENICpetalCipher("aqewsetrhteytuiico"): FLORENICequipmentNo
        ]
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: FLORENICpayload, florenicTexture: FLORENICpetalCipher("/qhwgewritxyxuxiaobpeajszdzf/gphjjgktllzixbczvpb")) { [weak self] FLORENICresponse in
            self?.FLORENIChiddenAnimater()
            self?.FLORENICcacheAppleBloomProfile(FLORENICresponse, FLORENICappleId: FLORENICappleId, FLORENICfallbackEmail: FLORENICemail)
            self?.FLORENICcompleteBloomSession(FLORENICresponse)
        } florenicGreenery: { [weak self] FLORENICerror in
            self?.FLORENIChiddenAnimater()
            self?.FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICerror.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
        }
    }
    
    private func FLORENICcompleteBloomSession(_ FLORENICresponse: Any?) {
        guard let FLORENICroot = FLORENICresponse as? [String: Any], let FLORENICdata = FLORENICroot[FLORENICpetalCipher("dqawtear")] as? [String: Any] else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Pqawsesrwtoyrudi oopra sEdmfagihlj kilsz xecrvrbonrm"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        UserDefaults.standard.set(FLORENICdata[FLORENICpetalCipher("pqrwoetretay")] as? Int, forKey: FLORENICpetalCipher("pqrwoetretay"))
        UserDefaults.standard.set(FLORENICdata[FLORENICpetalCipher("rqowseerStpyruaiyo")] as? String, forKey: FLORENICpetalCipher("rqowseerStpyruaiyo"))
        FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Lqowge ritny usiuocpcaessdsffguhlj!k"), FLORENICgardenStyle: .FLORENICblossomSuccess)
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = FLORENICTabBarController()
    }
    
    private func FLORENICcacheAppleBloomProfile(_ FLORENICresponse: Any?, FLORENICappleId: String, FLORENICfallbackEmail: String?) {
        let FLORENICdata = (FLORENICresponse as? [String: Any])?[FLORENICpetalCipher("dqawtear")] as? [String: Any]
        let FLORENICemail = (FLORENICdata?[FLORENICpetalCipher("fqewrenr")] as? String) ?? (FLORENICdata?[FLORENICpetalCipher("eqmwaeirlt")] as? String) ?? FLORENICfallbackEmail ?? FLORENICappleId
        let FLORENICgender = (FLORENICdata?[FLORENICpetalCipher("gqywpesrotpyhuiiloap")] as? String) ?? (FLORENICdata?[FLORENICpetalCipher("gqewnedretry")] as? String) ?? (FLORENICdata?[FLORENICpetalCipher("gqgweenrdteyru")] as? String) ?? String()
        let FLORENICuserId = FLORENICdata?[FLORENICpetalCipher("pqrwoetretay")] ?? FLORENICdata?[FLORENICpetalCipher("Iqdw")] ?? FLORENICdata?[FLORENICpetalCipher("iqdw")] ?? FLORENICappleId
        let FLORENICprofile: [String: Any] = [
            FLORENICpetalCipher("eqmwaeirlt"): FLORENICemail,
            FLORENICpetalCipher("gqewnedretry"): FLORENICgender,
            FLORENICpetalCipher("iqdw"): FLORENICuserId,
            FLORENICpetalCipher("aqpwpelretIydu"): FLORENICappleId,
            FLORENICpetalCipher("nqawmeer"): FLORENICdata?[FLORENICpetalCipher("squwcecrutlyeunito")] as? String ?? String(),
            FLORENICpetalCipher("bqiwretrhtdyauyi"): FLORENICdata?[FLORENICpetalCipher("lqawveerntdyeuri")] as? String ?? String(),
            FLORENICpetalCipher("aqvwaetratry"): FLORENICdata?[FLORENICpetalCipher("equwcearltyyputiuosp")] as? String ?? FLORENICpetalCipher("FqLwOeRrEtNyIuCiiodpeanstdiftgyhAjvkaltzaxrcSviblnhmoquweetrttey"),
            FLORENICpetalCipher("rqewgeirsttyruaitoipoansSdtfyglhej"): FLORENICpetalCipher("aqpwpelretFyluoiroaplaSssdof")
        ]
        UserDefaults.standard.set(FLORENICprofile, forKey: FLORENICprofileBouquetKey)
    }
    
    private func FLORENICregisteredBloomAccounts() -> [String: [String: String]] {
        UserDefaults.standard.dictionary(forKey: FLORENICregisteredBouquetKey) as? [String: [String: String]] ?? [:]
    }
    
    private func FLORENICnormalizedEmail(_ FLORENICemail: String?) -> String {
        (FLORENICemail ?? "").trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }
    
    private func FLORENICisTestBouquet(FLORENICemail: String, FLORENICpassword: String) -> Bool {
        FLORENICemail == FLORENICtestBouquetEmail && FLORENICpassword == FLORENICtestBouquetPassword
    }
    
    private func FLORENICbirthMonthFromPetalAge(_ FLORENICage: String) -> String {
        let FLORENICageValue = Int(FLORENICage) ?? 18
        let FLORENICcalendar = Calendar(identifier: .gregorian)
        let FLORENICnow = Date()
        let FLORENICyear = FLORENICcalendar.component(.year, from: FLORENICnow) - FLORENICageValue
        let FLORENICmonth = FLORENICcalendar.component(.month, from: FLORENICnow)
        return String(format: FLORENICpetalCipher("%q0w4edr-t%y0u2ido"), FLORENICyear, FLORENICmonth)
    }
    
    override func touchesBegan(_ FLORENICtouches: Set<UITouch>, with FLORENICevent: UIEvent?) {
        view.endEditing(true)
    }
    
    func FLORENICarboretum(FLORENICtexf: UITextField) {
        let FLORENICtoolbar = UIToolbar()
        FLORENICtoolbar.sizeToFit()
        let FLORENICflexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let FLORENICdoneButton = UIBarButtonItem(title: FLORENICpetalCipher("Dqowneer"), style: .done, target: self, action: #selector(FLORENICdoneAction))
        FLORENICtoolbar.items = [FLORENICflexSpace, FLORENICdoneButton]
        FLORENICtexf.inputAccessoryView = FLORENICtoolbar
    }
    
    @objc private func FLORENICdoneAction() {
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ FLORENICtextField: UITextField) {
        FLORENICfocusedBloomField = FLORENICtextField
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [weak self] in
            self?.FLORENICraiseFocusedBloomFieldIfNeeded()
        }
    }
    
    func textFieldDidEndEditing(_ FLORENICtextField: UITextField) {
        if FLORENICfocusedBloomField === FLORENICtextField {
            FLORENICfocusedBloomField = nil
        }
    }
    
    func textFieldShouldReturn(_ FLORENICtextField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    private func FLORENICbindKeyboardGarden() {
        NotificationCenter.default.addObserver(self, selector: #selector(FLORENICkeyboardWillMove(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(FLORENICkeyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        let FLORENICtap = UITapGestureRecognizer(target: self, action: #selector(FLORENICdismissBloomKeyboard))
        FLORENICtap.cancelsTouchesInView = false
        view.addGestureRecognizer(FLORENICtap)
    }
    
    @objc private func FLORENICdismissBloomKeyboard() {
        view.endEditing(true)
    }
    
    @objc private func FLORENICkeyboardWillMove(_ FLORENICnote: Notification) {
        FLORENICraiseFocusedBloomFieldIfNeeded(FLORENICnote)
    }
    
    @objc private func FLORENICkeyboardWillHide(_ FLORENICnote: Notification) {
        FLORENICkeyboardLiftDistance = 0
        FLORENICanimateKeyboardGarden(note: FLORENICnote) {
            self.view.transform = .identity
        }
    }
    
    private func FLORENICraiseFocusedBloomFieldIfNeeded(_ FLORENICnote: Notification? = nil) {
        guard let FLORENICfield = FLORENICfocusedBloomField, FLORENICfield.window != nil else { return }
        let FLORENICkeyboardEnd = (FLORENICnote?.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue ?? CGRect(x: 0, y: view.bounds.maxY, width: view.bounds.width, height: 0)
        guard FLORENICkeyboardEnd.minY < UIScreen.main.bounds.height - 1 else {
            FLORENICkeyboardLiftDistance = 0
            FLORENICanimateKeyboardGarden(note: FLORENICnote) {
                self.view.transform = .identity
            }
            return
        }
        let FLORENICfieldFrame = FLORENICfield.convert(FLORENICfield.bounds, to: nil)
        let FLORENICtargetBottom = FLORENICfieldFrame.maxY + FLORENICkeyboardLiftDistance + 70
        let FLORENICcovered = max(0, FLORENICtargetBottom - FLORENICkeyboardEnd.minY)
        let FLORENICstackTop = FLORENICfieldStackView.convert(FLORENICfieldStackView.bounds, to: nil).minY + FLORENICkeyboardLiftDistance
        let FLORENICtopLimit = max(0, FLORENICstackTop - view.safeAreaInsets.top - 8)
        FLORENICkeyboardLiftDistance = min(FLORENICcovered, FLORENICtopLimit)
        FLORENICanimateKeyboardGarden(note: FLORENICnote) {
            self.view.transform = CGAffineTransform(translationX: 0, y: -self.FLORENICkeyboardLiftDistance)
        }
    }
    
    private func FLORENICanimateKeyboardGarden(note FLORENICnote: Notification?, animations FLORENICanimations: @escaping () -> Void) {
        let FLORENICduration = (FLORENICnote?.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue ?? 0.25
        let FLORENICcurveValue = (FLORENICnote?.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? NSNumber)?.uintValue ?? UIView.AnimationOptions.curveEaseInOut.rawValue
        UIView.animate(withDuration: FLORENICduration, delay: 0, options: UIView.AnimationOptions(rawValue: FLORENICcurveValue << 16), animations: FLORENICanimations)
    }
    
    func textView(_ FLORENICtextView: UITextView, shouldInteractWith FLORENICurl: URL, in FLORENICcharacterRange: NSRange, interaction FLORENICinteraction: UITextItemInteraction) -> Bool {
        switch FLORENICurl.host {
        case FLORENICpetalCipher("sqewrevritcyeuTieorpma"):
            navigationController?.pushViewController(FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICgardenStyle.FLORENICperformanceMacro()), animated: true)
            return false
        case FLORENICpetalCipher("pqrwievratcyyuPioolpiacsyd"):
            navigationController?.pushViewController(FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICpeony.FLORENICperformanceMacro()), animated: true)
            return false
        default:
            return true
        }
    }
}

extension FLORENIStemSnippetController: ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding {
    func presentationAnchor(for FLORENICcontroller: ASAuthorizationController) -> ASPresentationAnchor {
        view.window ?? ASPresentationAnchor()
    }
    
    func authorizationController(controller FLORENICcontroller: ASAuthorizationController, didCompleteWithAuthorization FLORENICauthorization: ASAuthorization) {
        guard let FLORENICcredential = FLORENICauthorization.credential as? ASAuthorizationAppleIDCredential,
              let FLORENICtokenData = FLORENICcredential.identityToken,
              let FLORENICtoken = String(data: FLORENICtokenData, encoding: .utf8) else {
            FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICpetalCipher("Aqpwpelret yiudieonptaistdyf gthojkkelnz xicsv bunnmaqvwaeirltaybulieo.p"), FLORENICgardenStyle: .FLORENICvineWarning)
            return
        }
        FLORENICrequestAppleBloomLogin(FLORENICidentityToken: FLORENICtoken, FLORENICappleId: FLORENICcredential.user, FLORENICemail: FLORENICcredential.email)
    }
    
    func authorizationController(controller FLORENICcontroller: ASAuthorizationController, didCompleteWithError FLORENICerror: Error) {
        FLORENICdisplayFloralMessage(FLORENICblossomText: FLORENICerror.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
    }
}

private final class FLORENICPetalFieldRow: UIStackView {
    private let FLORENICtitleLabel = UILabel()
    
    init(FLORENICtitle: String, FLORENICfield: UITextField) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        spacing = 8
        FLORENICtitleLabel.text = FLORENICtitle
        FLORENICtitleLabel.textColor = .white
        FLORENICtitleLabel.font = UIFont(name: UIViewController.florenicFloralDesign(florenicIke: "Aqvweenritry-uMieodpiausmd"), size: 17) ?? .systemFont(ofSize: 17, weight: .medium)
        FLORENICtitleLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 17).isActive = true
        addArrangedSubview(FLORENICtitleLabel)
        addArrangedSubview(FLORENICfield)
    }
    
    func FLORENICfitPetalRow(FLORENICfontSize: CGFloat, FLORENICspacing: CGFloat) {
        spacing = FLORENICspacing
        FLORENICtitleLabel.font = UIFont(name: UIViewController.florenicFloralDesign(florenicIke: "Aqvweenritry-uMieodpiausmd"), size: FLORENICfontSize) ?? .systemFont(ofSize: FLORENICfontSize, weight: .medium)
    }
    
    required init(coder FLORENICcoder: NSCoder) {
        fatalError(UIViewController.florenicFloralDesign(florenicIke: "iqnwietr(tcyoudieorp:a)s dhfagsh jnkoltz xbcevebnn miqmwpelretmyeunitoepda"))
    }
}

private final class FLORENICGradientBloomButton: UIButton {
    private let FLORENICgradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.insertSublayer(FLORENICgradientLayer, at: 0)
        clipsToBounds = true
    }
    
    required init?(coder FLORENICcoder: NSCoder) {
        fatalError(UIViewController.florenicFloralDesign(florenicIke: "iqnwietr(tcyoudieorp:a)s dhfagsh jnkoltz xbcevebnn miqmwpelretmyeunitoepda"))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        FLORENICrefreshGradient()
    }
    
    func FLORENICrefreshGradient() {
        layer.cornerRadius = bounds.height / 2
        FLORENICgradientLayer.frame = bounds
        FLORENICgradientLayer.cornerRadius = bounds.height / 2
        FLORENICgradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        FLORENICgradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        FLORENICgradientLayer.colors = [
            UIColor(red: 255 / 255, green: 76 / 255, blue: 100 / 255, alpha: 1).cgColor,
            UIColor(red: 252 / 255, green: 63 / 255, blue: 220 / 255, alpha: 1).cgColor
        ]
    }
}

private final class FLORENICPetalMarkView: UIView {
    private let FLORENICgradientLayer = CAGradientLayer()
    private let FLORENICringLayer = CAShapeLayer()
    private let FLORENICplayLayer = CAShapeLayer()
    private let FLORENICtailLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.addSublayer(FLORENICgradientLayer)
        layer.addSublayer(FLORENICringLayer)
        layer.addSublayer(FLORENICplayLayer)
        layer.addSublayer(FLORENICtailLayer)
        FLORENICringLayer.strokeColor = UIColor.white.cgColor
        FLORENICringLayer.fillColor = UIColor.clear.cgColor
        FLORENICplayLayer.fillColor = UIColor.white.cgColor
        FLORENICtailLayer.strokeColor = UIColor.white.cgColor
        FLORENICtailLayer.fillColor = UIColor.clear.cgColor
        FLORENICtailLayer.lineCap = .round
    }
    
    required init?(coder FLORENICcoder: NSCoder) {
        fatalError(UIViewController.florenicFloralDesign(florenicIke: "iqnwietr(tcyoudieorp:a)s dhfagsh jnkoltz xbcevebnn miqmwpelretmyeunitoepda"))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        FLORENICgradientLayer.frame = bounds
        FLORENICgradientLayer.cornerRadius = bounds.width * 0.22
        FLORENICgradientLayer.colors = [
            UIColor(red: 252 / 255, green: 63 / 255, blue: 220 / 255, alpha: 1).cgColor,
            UIColor(red: 255 / 255, green: 76 / 255, blue: 100 / 255, alpha: 1).cgColor
        ]
        FLORENICgradientLayer.startPoint = CGPoint(x: 0, y: 0)
        FLORENICgradientLayer.endPoint = CGPoint(x: 1, y: 1)
        let FLORENICringRect = bounds.insetBy(dx: bounds.width * 0.24, dy: bounds.height * 0.18)
        FLORENICringLayer.lineWidth = bounds.width * 0.08
        FLORENICringLayer.path = UIBezierPath(arcCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: FLORENICringRect.width * 0.38, startAngle: -.pi * 0.25, endAngle: .pi * 1.55, clockwise: true).cgPath
        let FLORENICplay = UIBezierPath()
        FLORENICplay.move(to: CGPoint(x: bounds.midX - bounds.width * 0.04, y: bounds.midY - bounds.height * 0.12))
        FLORENICplay.addLine(to: CGPoint(x: bounds.midX - bounds.width * 0.04, y: bounds.midY + bounds.height * 0.12))
        FLORENICplay.addLine(to: CGPoint(x: bounds.midX + bounds.width * 0.13, y: bounds.midY))
        FLORENICplay.close()
        FLORENICplayLayer.path = FLORENICplay.cgPath
        FLORENICtailLayer.lineWidth = bounds.width * 0.08
        let FLORENICtail = UIBezierPath()
        FLORENICtail.move(to: CGPoint(x: bounds.midX + bounds.width * 0.16, y: bounds.midY + bounds.height * 0.22))
        FLORENICtail.addQuadCurve(to: CGPoint(x: bounds.midX + bounds.width * 0.27, y: bounds.midY + bounds.height * 0.36), controlPoint: CGPoint(x: bounds.midX + bounds.width * 0.15, y: bounds.midY + bounds.height * 0.34))
        FLORENICtailLayer.path = FLORENICtail.cgPath
    }
}

private final class FLORENICIdentityBloomView: UIView {
    private let FLORENICpersonLayer = CAShapeLayer()
    private let FLORENICcornerLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.addSublayer(FLORENICpersonLayer)
        layer.addSublayer(FLORENICcornerLayer)
        FLORENICpersonLayer.fillColor = UIColor(white: 1, alpha: 0.32).cgColor
        FLORENICcornerLayer.strokeColor = UIColor(white: 1, alpha: 0.32).cgColor
        FLORENICcornerLayer.fillColor = UIColor.clear.cgColor
        FLORENICcornerLayer.lineCap = .round
    }
    
    required init?(coder FLORENICcoder: NSCoder) {
        fatalError(UIViewController.florenicFloralDesign(florenicIke: "iqnwietr(tcyoudieorp:a)s dhfagsh jnkoltz xbcevebnn miqmwpelretmyeunitoepda"))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let FLORENIChead = UIBezierPath(ovalIn: CGRect(x: bounds.midX - bounds.width * 0.18, y: bounds.height * 0.18, width: bounds.width * 0.36, height: bounds.height * 0.42))
        let FLORENICbody = UIBezierPath(roundedRect: CGRect(x: bounds.width * 0.13, y: bounds.height * 0.58, width: bounds.width * 0.74, height: bounds.height * 0.28), cornerRadius: bounds.width * 0.17)
        FLORENIChead.append(FLORENICbody)
        FLORENICpersonLayer.path = FLORENIChead.cgPath
        FLORENICcornerLayer.lineWidth = 7
        let FLORENICcorners = UIBezierPath()
        let FLORENICshort = bounds.width * 0.20
        let FLORENICleft = bounds.width * 0.03
        let FLORENICright = bounds.width * 0.97
        let FLORENICtop = bounds.height * 0.03
        let FLORENICbottom = bounds.height * 0.97
        FLORENICcorners.move(to: CGPoint(x: FLORENICleft + FLORENICshort, y: FLORENICtop))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICleft, y: FLORENICtop))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICleft, y: FLORENICtop + FLORENICshort))
        FLORENICcorners.move(to: CGPoint(x: FLORENICright - FLORENICshort, y: FLORENICtop))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICright, y: FLORENICtop))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICright, y: FLORENICtop + FLORENICshort))
        FLORENICcorners.move(to: CGPoint(x: FLORENICleft, y: FLORENICbottom - FLORENICshort))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICleft, y: FLORENICbottom))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICleft + FLORENICshort, y: FLORENICbottom))
        FLORENICcorners.move(to: CGPoint(x: FLORENICright, y: FLORENICbottom - FLORENICshort))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICright, y: FLORENICbottom))
        FLORENICcorners.addLine(to: CGPoint(x: FLORENICright - FLORENICshort, y: FLORENICbottom))
        FLORENICcornerLayer.path = FLORENICcorners.cgPath
    }
}

extension UIViewController {
    func FLORENICstartAnimatingindicater() {
        if let FLORENICview = self.view.viewWithTag(189) as? UIActivityIndicatorView {
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
    
    func FLORENIChiddenAnimater() {
        if let FLORENICview = self.view.viewWithTag(189) as? UIActivityIndicatorView {
            FLORENICview.stopAnimating()
        }
    }
}
