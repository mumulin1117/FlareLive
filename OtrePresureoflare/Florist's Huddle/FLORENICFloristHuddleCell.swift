import UIKit

class FLORENICFloristHuddleCell: UICollectionViewCell {

    let FLORENICKnifeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()

  
    let FLORENICBiodegradableView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // Corresponds to the color: R: 0.176, G: 0.176, B: 0.176
        view.backgroundColor = UIColor(red: 0.176, green: 0.176, blue: 0.176, alpha: 1.0)
        return view
    }()

    // 3. Title Label (waterTube) - White, bold, 15pt font
    let FLORENICWaterTubeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
    
        label.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        label.textColor = .white
        return label
    }()

    // 4. Subtitle/Time Label (mechanic) - Light grey, 12pt font
    let FLORENICMechanicLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Time"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray // Corresponds to white 0.666 alpha 1
        return label
    }()

    // 5. Structure Label (structure) - Bottom label, white, bold 13pt font
    let FLORENICStructureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
     
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = .white
        return label
    }()

    // 6. Button (colorant) - The image button on the right
    let FLORENICColorantButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        // Assuming 'caldioVIoe' is an image asset
        button.setImage(UIImage(named: "caldioVIoe"), for: .normal)
        return button
    }()


    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFLORENICViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code (usually empty for programmatic cells)
    }

    // MARK: - Setup and Constraints

    private func setupFLORENICViews() {
        // 1. Add views to the contentView
        contentView.addSubview(FLORENICBiodegradableView)
        contentView.addSubview(FLORENICKnifeImageView)

        // Add subviews to the container view (BiodegradableView)
        FLORENICBiodegradableView.addSubview(FLORENICColorantButton)
        FLORENICBiodegradableView.addSubview(FLORENICWaterTubeLabel)
        FLORENICBiodegradableView.addSubview(FLORENICMechanicLabel)
        FLORENICBiodegradableView.addSubview(FLORENICStructureLabel)

        // Set the background color of the cell itself (not the container view)
        self.backgroundColor = .clear // Matches XIB setting: white 0.0 alpha 0.0

        // 2. Activate Constraints
        NSLayoutConstraint.activate([
            
            FLORENICBiodegradableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            FLORENICBiodegradableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            FLORENICBiodegradableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            FLORENICBiodegradableView.heightAnchor.constraint(equalToConstant: 106),
            
            // FLORENICKnifeImageView (80x80 Image) Constraints
            FLORENICKnifeImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            FLORENICKnifeImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            FLORENICKnifeImageView.widthAnchor.constraint(equalToConstant: 80),
            FLORENICKnifeImageView.heightAnchor.constraint(equalToConstant: 80),
            
            // FLORENICColorantButton (Button) Constraints
            FLORENICColorantButton.topAnchor.constraint(equalTo: FLORENICBiodegradableView.topAnchor, constant: 12),
            FLORENICColorantButton.trailingAnchor.constraint(equalTo: FLORENICBiodegradableView.trailingAnchor, constant: -20),
            FLORENICColorantButton.widthAnchor.constraint(equalToConstant: 61),
            FLORENICColorantButton.heightAnchor.constraint(equalToConstant: 36),
            
       
            FLORENICWaterTubeLabel.topAnchor.constraint(equalTo: FLORENICBiodegradableView.topAnchor, constant: 12),
            FLORENICWaterTubeLabel.leadingAnchor.constraint(equalTo: FLORENICKnifeImageView.trailingAnchor, constant: 13),
      
            FLORENICWaterTubeLabel.trailingAnchor.constraint(equalTo: FLORENICColorantButton.leadingAnchor, constant: -8),
            
           
            FLORENICMechanicLabel.leadingAnchor.constraint(equalTo: FLORENICWaterTubeLabel.leadingAnchor),

            FLORENICMechanicLabel.bottomAnchor.constraint(equalTo: FLORENICKnifeImageView.bottomAnchor),
      
            FLORENICMechanicLabel.trailingAnchor.constraint(equalTo: FLORENICColorantButton.leadingAnchor, constant: -8),

            FLORENICStructureLabel.leadingAnchor.constraint(equalTo: FLORENICBiodegradableView.leadingAnchor, constant: 20),
            FLORENICStructureLabel.trailingAnchor.constraint(equalTo: FLORENICBiodegradableView.trailingAnchor, constant: -20),
            FLORENICStructureLabel.bottomAnchor.constraint(equalTo: FLORENICBiodegradableView.bottomAnchor, constant: -15)
        ])
    }
}
