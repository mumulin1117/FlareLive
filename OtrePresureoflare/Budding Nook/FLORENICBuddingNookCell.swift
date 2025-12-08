import UIKit

class FLORENICBuddingNookCell: UICollectionViewCell {

    // 1. Declare the UI components (no @IBOutlet needed)
    let FLORENIClacquer: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true // Corresponds to 'clipsSubviews="YES"'
        // Optional: Set a placeholder or background color for testing
        // imageView.backgroundColor = .lightGray
        return imageView
    }()

    let FLORENICepoxy: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        // The XIB uses an image literal, you'd load the image from your asset catalog
        button.setImage(UIImage(named: "ethylene"), for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        return button
    }()

    let FLORENICseasonal: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Label" // Placeholder text from XIB
        label.font = UIFont.systemFont(ofSize: 17) // Default system font size
        label.textAlignment = .natural
        label.numberOfLines = 1 // Corresponds to single-line setup
        return label
    }()

    // The XIB also includes a separate image (techniqueAdvanced) which isn't connected
    // to an IBOutlet, but we should include it for a complete UI recreation.
    let FLORENICtechniqueAdvancedImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "techniqueAdvanced")
        return imageView
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
        // 2. Add subviews to the cell's contentView
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

