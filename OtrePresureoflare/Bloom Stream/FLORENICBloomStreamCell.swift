
import UIKit

// MARK: - FLORENIC Protocol

protocol FLORENICBloomStreamCellDelegate: AnyObject {
    func FLORENICChipstickes(information: Dictionary<String, Any>)
}

// MARK: - FLORENIC Cell Class

class FLORENICBloomStreamCell: UITableViewCell {

    weak var FLORENICDelegate: FLORENICBloomStreamCellDelegate?
  
    var FLORENICSwiftuSiaki: [Dictionary<String, Any>] = [] {
        didSet {
        
            FLORENICAsparagusFernCollectionView.reloadData()
        }
    }

    private lazy var FLORENICAsparagusFernCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemBackground // backgroundColor="systemBackgroundColor"
        collectionView.clipsToBounds = true
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(FLORENICNiceLivaerCell.self, forCellWithReuseIdentifier: "FLORENICNiceLivaerCell")
        return collectionView
    }()
    
    // 2. Page Control (ID: HnA-Yy-YAj, 对应 IBOutlet: lavender)
    private lazy var FLORENICLavenderPageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3 // numberOfPages="3"
        // currentPageIndicatorTintColor: RGB 1.0, 0.643, 0.882 (粉色)
        pageControl.currentPageIndicatorTintColor = UIColor(red: 1.0, green: 0.643, blue: 0.882, alpha: 1.0)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    // 3. Subtract Background Image (ID: tB3-IM-OAZ)
    private lazy var FLORENICSubtractImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Subtract") // image="Subtract"
        imageView.contentMode = .scaleToFill // contentMode="scaleToFill"
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 4. Vectorxch Image (ID: K6j-bO-qoL)
    private lazy var FLORENICVectorxchImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Vectorxch") // image="Vectorxch"
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 5. RoseSpray Image (ID: As1-sX-jl7)
    private lazy var FLORENICRoseSprayImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "roseSpray") // image="roseSpray"
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // 6. Bottom Container View (ID: YWj-55-nQR)
    private lazy var FLORENICBottomContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground // backgroundColor="systemBackgroundColor"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // 7. Bloom & Bond Label (ID: xhj-By-0h9)
    private lazy var FLORENICBloomBondLabel: UILabel = {
        let label = UILabel()
        label.text = "Bloom & Bond" // text="Bloom & Bond"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium) // type="system" weight="medium" pointSize="14"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // 8. Create Button (ID: JXA-0V-3z3)
    private lazy var FLORENICCreateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Create", for: .normal) // title="Create"
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .medium) // font size="10"
        // titleColor: RGB 0.078, 0.078, 0.078, alpha 0.824
        button.setTitleColor(UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 0.824), for: .normal)
        // Add an action if needed, based on typical button use
        // button.addTarget(self, action: #selector(handleCreateButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // 9. Shadowing Image (ID: OpY-Uh-quY)
    private lazy var FLORENICShadowingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "shadowing") // image="shadowing"
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
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
            FLORENICBottomContainerView.topAnchor.constraint(equalTo: FLORENICVectorxchImageView.bottomAnchor, constant: -2), // Vectorxch bottom + -2
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
        
        // 还原 fragranceFree 和 coolChain 的逻辑
        fragranceFree()
    }
    
    // 对应 fragranceFree()
    private func fragranceFree() {
   
        coolChain()
    }
    
    // 对应 coolChain()
    private func coolChain() {
        let power = UICollectionViewFlowLayout()
        power.itemSize = CGSize(width: 130, height: 184) // itemSize = 130x184
        power.minimumLineSpacing = 12 // minimumLineSpacing = 12
        power.minimumInteritemSpacing = 12 // minimumInteritemSpacing = 12
        
        // Apply layout to CollectionView
        FLORENICAsparagusFernCollectionView.collectionViewLayout = power
        
        // Set delegates
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
 
        guard let deleterFever = collectionView.dequeueReusableCell(withReuseIdentifier: "FLORENICNiceLivaerCell", for: indexPath) as? FLORENICNiceLivaerCell else {
             fatalError("Could not dequeue NiceLivaerCell")
        }
        return deleterFever
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        FLORENICDelegate?.FLORENICChipstickes(information: FLORENICSwiftuSiaki[indexPath.row])
    }
}
