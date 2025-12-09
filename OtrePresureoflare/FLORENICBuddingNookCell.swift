import UIKit

class FLORENICBuddingNookCell: UICollectionViewCell {

    // 1. Declare the UI components (no @IBOutlet needed)
    let FLORENIClacquer: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICimageView.contentMode = .scaleAspectFill
        FLORENICimageView.clipsToBounds = true // Corresponds to 'clipsSubviews="YES"'
       
        return FLORENICimageView
    }()

    let FLORENICepoxy: UIButton = {
        let FLORENICbutton = UIButton(type: .custom)
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        // The XIB uses an image literal, you'd load the image from your asset catalog
        FLORENICbutton.setImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICethylene"), for: .normal)
        FLORENICbutton.contentHorizontalAlignment = .center
        FLORENICbutton.contentVerticalAlignment = .center
        return FLORENICbutton
    }()

    let FLORENICseasonal: UILabel = {
        let FLORENIClabel = UILabel()
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENIClabel.textColor = UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)
        FLORENIClabel.font = UIFont.systemFont(ofSize: 17) // Default system font size
        FLORENIClabel.textAlignment = .natural
        FLORENIClabel.numberOfLines = 1 // Corresponds to single-line setup
        return FLORENIClabel
    }()

    // The XIB also includes a separate image (FLORENICtechniqueAdvanced) which isn't connected
    // to an IBOutlet, but we should include it for a complete UI recreation.
    private let FLORENICtechniqueAdvancedImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICtechniqueAdvanced")
        return FLORENICimageView
    }()

    // Required initializer for programmatic UI creation
    override init(frame: CGRect) {
        super.init(frame: frame)
        FLORENICsetupViews()
    }

    // Required initializer for Storyboard/XIB (must be present even if not used)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code (This is often empty when using programmatic UI)
    }

    private func FLORENICsetupViews() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        contentView.addSubview(FLORENIClacquer)
        contentView.addSubview(FLORENICepoxy)
        contentView.addSubview(FLORENICseasonal)
        contentView.addSubview(FLORENICtechniqueAdvancedImageView)
        
        // 3. Set up constraints
        NSLayoutConstraint.activate([
            // lacquer (UIImageView) Constraints
            FLORENIClacquer.topAnchor.constraint(equalTo: contentView.topAnchor),
            FLORENIClacquer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            FLORENIClacquer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            // Bottom constraint: 44 points from the bottom of the contentView
            FLORENIClacquer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -44),

            // epoxy (UIButton) Constraints
            FLORENICepoxy.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            FLORENICepoxy.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            FLORENICepoxy.widthAnchor.constraint(equalToConstant: 24),
            FLORENICepoxy.heightAnchor.constraint(equalToConstant: 24),

            // techniqueAdvancedImageView (The badge/icon at the bottom right) Constraints
            FLORENICtechniqueAdvancedImageView.widthAnchor.constraint(equalToConstant: 24),
            FLORENICtechniqueAdvancedImageView.heightAnchor.constraint(equalToConstant: 24),
            FLORENICtechniqueAdvancedImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            FLORENICtechniqueAdvancedImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),

            // seasonal (UILabel) Constraints
            FLORENICseasonal.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            // Vertically center the label with the image view
            FLORENICseasonal.centerYAnchor.constraint(equalTo: FLORENICtechniqueAdvancedImageView.centerYAnchor),
            // Trailing constraint: 8 points leading of the image view
            FLORENICseasonal.trailingAnchor.constraint(equalTo: FLORENICtechniqueAdvancedImageView.leadingAnchor, constant: -8),
        ])
        
        // Optional: Set background color as specified in XIB
        self.backgroundColor = .white
    }
}

