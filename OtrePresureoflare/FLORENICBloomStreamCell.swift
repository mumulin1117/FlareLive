
import UIKit

// MARK: - FLORENIC Protocol

protocol FLORENICBloomStreamCellDelegate: AnyObject {
    func FLORENICChipstickes(information: Dictionary<String, Any>)
    
    func FLORENICcreateActive()
    
}

// MARK: - FLORENIC Cell Class

class FLORENICBloomStreamCell: UITableViewCell {

    weak var FLORENICDelegate: FLORENICBloomStreamCellDelegate?
  
    var FLORENICSwiftuSiaki: [Dictionary<String, Any>] = [] {
        didSet {
        
            FLORENICAsparagusFernCollectionView.reloadData()
            FLORENICLavenderPageControl.numberOfPages = FLORENICSwiftuSiaki.count
        }
    }

    private lazy var FLORENICAsparagusFernCollectionView: UICollectionView = {
        let FLORENIClayout = UICollectionViewFlowLayout()
        FLORENIClayout.minimumLineSpacing = 10
        FLORENIClayout.minimumInteritemSpacing = 10
        FLORENIClayout.scrollDirection = .horizontal
        FLORENIClayout.itemSize = CGSize(width: 130, height: 180)
        let FLORENICcollectionView = UICollectionView(frame: .zero, collectionViewLayout: FLORENIClayout)
        FLORENICcollectionView.backgroundColor = .clear // backgroundColor="systemBackgroundColor"
        FLORENICcollectionView.clipsToBounds = true
        FLORENICcollectionView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICcollectionView.register(FLORENICNiceLivaerCell.self, forCellWithReuseIdentifier: "FLORENICNiceLivaerCell")
        return FLORENICcollectionView
    }()
    
    // 2. Page Control (ID: HnA-Yy-YAj, 对应 IBOutlet: lavender)
    private lazy var FLORENICLavenderPageControl: UIPageControl = {
        let FLORENICpageControl = UIPageControl()
       
        FLORENICpageControl.currentPageIndicatorTintColor = UIColor(red: 1.0, green: 0.643, blue: 0.882, alpha: 1.0)
        FLORENICpageControl.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICpageControl
    }()
    
    // 3. FLORENICSubtract Background Image (ID: tB3-IM-OAZ)
    private lazy var FLORENICSubtractImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICSubtract") // image="FLORENICSubtract"
        FLORENICimageView.contentMode = .scaleToFill // contentMode="scaleToFill"
        FLORENICimageView.clipsToBounds = true
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
    
    // 4. FLORENICVectorxch Image (ID: K6j-bO-qoL)
    private lazy var FLORENICVectorxchImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICVectorxch") // image="FLORENICVectorxch"
        FLORENICimageView.contentMode = .scaleToFill
        FLORENICimageView.clipsToBounds = true
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
    
    // 5. FLORENICroseSpray Image (ID: As1-sX-jl7)
    private lazy var FLORENICRoseSprayImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICroseSpray")  // image="FLORENICroseSpray"
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.clipsToBounds = true
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()

    // 6. Bottom Container View (ID: YWj-55-nQR)
    private lazy var FLORENICBottomContainerView: UIView = {
        let FLORENICview = UIView()
        FLORENICview.backgroundColor = .systemBackground // backgroundColor="systemBackgroundColor"
        FLORENICview.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICview
    }()
    
    // 7. Bloom & Bond Label (ID: xhj-By-0h9)
    private lazy var FLORENICBloomBondLabel: UILabel = {
        let FLORENIClabel = UILabel()
        FLORENIClabel.text = self.florenicFloralDesign(florenicIke: "Bqluodoumt a&p kByocnvd")//"Bloom & Bond"
        FLORENIClabel.font = UIFont.systemFont(ofSize: 14, weight: .medium) // type="system" weight="medium" pointSize="14"
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()
    
    // 8. Create Button (ID: JXA-0V-3z3)
     lazy var FLORENICCreateButton: UIButton = {
        let FLORENICbutton = UIButton(type: .system)
         FLORENICbutton.setTitle(self.florenicFloralDesign(florenicIke: "Cprseyahtee"), for: .normal) // title="Create"
        FLORENICbutton.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .medium) // font size="10"
        // titleColor: RGB 0.078, 0.078, 0.078, alpha 0.824
        FLORENICbutton.setTitleColor(UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 0.824), for: .normal)
        // Add an action if needed, based on typical button use
         FLORENICbutton.addTarget(self, action: #selector(FLORENIChandleCreateButton), for: .touchUpInside)
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICbutton.layer.borderColor = UIColor.lightGray.cgColor
        FLORENICbutton.layer.borderWidth = 1
        FLORENICbutton.layer.cornerRadius = 10
        FLORENICbutton.layer.masksToBounds = true
        return FLORENICbutton
    }()
    
    // 9. FLORENICshadowing Image (ID: OpY-Uh-quY)
    private lazy var FLORENICShadowingImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICshadowing")  // image="FLORENICshadowing"
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.clipsToBounds = true
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()

    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupFLORENICUI()
        setupFLORENICConstraints()
        applyFLORENICStyleAndDelegate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Methods
    
    private func setupFLORENICUI() {
        // Set cell background color from XIB
        self.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        
        // Add all subviews to contentView
        contentView.addSubview(FLORENICSubtractImageView)
        contentView.addSubview(FLORENICVectorxchImageView)
        contentView.addSubview(FLORENICLavenderPageControl)
        contentView.addSubview(FLORENICRoseSprayImageView)
        contentView.addSubview(FLORENICAsparagusFernCollectionView)
        contentView.addSubview(FLORENICBottomContainerView)
        contentView.addSubview(FLORENICShadowingImageView)
        
        // Add subviews to the container view
        FLORENICBottomContainerView.addSubview(FLORENICBloomBondLabel)
        FLORENICBottomContainerView.addSubview(FLORENICCreateButton)
    }

    private func setupFLORENICConstraints() {
        NSLayoutConstraint.activate([
            // 1. FLORENICSubtractImageView (ID: tB3-IM-OAZ, Main Background)
            FLORENICSubtractImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            FLORENICSubtractImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            FLORENICSubtractImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            FLORENICSubtractImageView.heightAnchor.constraint(equalToConstant: 311), // height="311"
            
            // 2. FLORENICVectorxchImageView (ID: K6j-bO-qoL, Center Top Connector)
            FLORENICVectorxchImageView.topAnchor.constraint(equalTo: FLORENICSubtractImageView.bottomAnchor, constant: -2), // bottom + -2
            FLORENICVectorxchImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 1), // centerX + 1
            FLORENICVectorxchImageView.widthAnchor.constraint(equalToConstant: 10), // width="10"
            FLORENICVectorxchImageView.heightAnchor.constraint(equalToConstant: 23), // height="23"
            
            // 3. FLORENICLavenderPageControl (ID: HnA-Yy-YAj, Top Trailing)
            FLORENICLavenderPageControl.topAnchor.constraint(equalTo: contentView.topAnchor),
            FLORENICLavenderPageControl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            FLORENICLavenderPageControl.widthAnchor.constraint(equalToConstant: 161), // width="161"
            FLORENICLavenderPageControl.heightAnchor.constraint(equalToConstant: 26), // height="26"

            // 4. FLORENICRoseSprayImageView (ID: As1-sX-jl7, Top Leading Icon)
            FLORENICRoseSprayImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25), // top="25"
            FLORENICRoseSprayImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15), // leading="15"
            FLORENICRoseSprayImageView.widthAnchor.constraint(equalToConstant: 305), // width="305"
            FLORENICRoseSprayImageView.heightAnchor.constraint(equalToConstant: 57), // height="57"

            // 5. FLORENICAsparagusFernCollectionView (ID: hnY-45-F4i)
            FLORENICAsparagusFernCollectionView.topAnchor.constraint(equalTo: FLORENICRoseSprayImageView.bottomAnchor, constant: 10), // bottom + 10
            FLORENICAsparagusFernCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15), // leading="15"
            FLORENICAsparagusFernCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor), // trailing="0"
            FLORENICAsparagusFernCollectionView.heightAnchor.constraint(equalToConstant: 184), // height="184"
            
            // 6. FLORENICBottomContainerView (ID: YWj-55-nQR)
            FLORENICBottomContainerView.topAnchor.constraint(equalTo: FLORENICVectorxchImageView.bottomAnchor, constant: -2), // FLORENICVectorxch bottom + -2
            FLORENICBottomContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            FLORENICBottomContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            FLORENICBottomContainerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor), // bottom="0"
            
            // 7. FLORENICBloomBondLabel (ID: xhj-By-0h9, inside Bottom Container)
            FLORENICBloomBondLabel.topAnchor.constraint(equalTo: FLORENICBottomContainerView.topAnchor, constant: 16), // top="16"
            FLORENICBloomBondLabel.leadingAnchor.constraint(equalTo: FLORENICBottomContainerView.leadingAnchor, constant: 15), // leading="15"
            
            // 8. FLORENICCreateButton (ID: JXA-0V-3z3, inside Bottom Container)
            FLORENICCreateButton.trailingAnchor.constraint(equalTo: FLORENICBottomContainerView.trailingAnchor, constant: -15), // trailing="-15"
            FLORENICCreateButton.centerYAnchor.constraint(equalTo: FLORENICBloomBondLabel.centerYAnchor), // centerY
            FLORENICCreateButton.widthAnchor.constraint(equalToConstant: 39), // width="39"
            FLORENICCreateButton.heightAnchor.constraint(equalToConstant: 18), // height="18"
          
            FLORENICShadowingImageView.centerXAnchor.constraint(equalTo: FLORENICVectorxchImageView.centerXAnchor, constant: 6), // Center slightly offset
            FLORENICShadowingImageView.bottomAnchor.constraint(equalTo: FLORENICBottomContainerView.topAnchor, constant: 3), // Just above the bottom container
            FLORENICShadowingImageView.widthAnchor.constraint(equalToConstant: 18), // width="18"
            FLORENICShadowingImageView.heightAnchor.constraint(equalToConstant: 61.2) // height="61.2"
        ])
    }
    
    private func applyFLORENICStyleAndDelegate() {
        // 还原 awakeFromNib 中的设置
        self.selectionStyle = .none
        
        // 还原 FLORENICfragranceFree 和 FLORENICcoolChain 的逻辑
        FLORENICfragranceFree()
    }
    
    // 对应 FLORENICfragranceFree()
    private func FLORENICfragranceFree() {
   
        FLORENICcoolChain()
    }
    
    // 对应 FLORENICcoolChain()
    private func FLORENICcoolChain() {

        FLORENICAsparagusFernCollectionView.delegate = self
        FLORENICAsparagusFernCollectionView.dataSource = self
    }
    
    // MARK: - Lifecycle Overrides
    
    // Kept the original structure of setSelected for completeness
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
   
}

// MARK: - UICollectionViewDelegate & UICollectionViewDataSource

extension FLORENICBloomStreamCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FLORENICSwiftuSiaki.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
 
        guard let deleterFeverFLORENIC = collectionView.dequeueReusableCell(withReuseIdentifier: "FLORENICNiceLivaerCell", for: indexPath) as? FLORENICNiceLivaerCell else {
             fatalError("Could not dequeue NiceLivaerCell")
        }
        
        let FLORENICdata = FLORENICSwiftuSiaki[indexPath.row]
        
        deleterFeverFLORENIC.FLORENICMonsteraImageView.FLORENICloadImage(from: FLORENICdata["cage"] as? String ?? "")
        deleterFeverFLORENIC.FLORENICAsparagusFernLabel.text = (FLORENICdata["mechanic"] as? String)
        deleterFeverFLORENIC.FLORENICPittosporumImageView.isHidden = ((FLORENICdata["hydration"] as? Int) == 0)
        return deleterFeverFLORENIC
    }
    
    
   @objc func FLORENIChandleCreateButton() {
       self.FLORENICDelegate?.FLORENICcreateActive()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        FLORENICDelegate?.FLORENICChipstickes(information: FLORENICSwiftuSiaki[indexPath.row])
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let FLORENICpageDot = scrollView.contentOffset
        
        
    }
}


extension UIImageView{


    func FLORENICloadImage(from FLORENICurlString: String) {
        guard let FLORENICurl = URL(string: FLORENICurlString) else {
          
            return
        }
        
        let FLORENICtask = URLSession.shared.dataTask(with: FLORENICurl) { data, response, error in
            guard let FLORENICdata = data, error == nil else {
               
                return
            }
            
            DispatchQueue.main.async {
                self.image = (UIImage(data: FLORENICdata))
            }
        }
        FLORENICtask.resume()
    }

   
}
