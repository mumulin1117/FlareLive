import UIKit

class FLORENICFloristHuddleCell: UICollectionViewCell {

    let FLORENICKnifeImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.clipsToBounds = true
        return FLORENICimageView
    }()

  
    let FLORENICBiodegradableView: UIView = {
        let FLORENICview = UIView()
        FLORENICview.translatesAutoresizingMaskIntoConstraints = false
        // Corresponds to the color: R: 0.176, G: 0.176, B: 0.176
        FLORENICview.backgroundColor = UIColor(red: 0.176, green: 0.176, blue: 0.176, alpha: 1.0)
        return FLORENICview
    }()

    // 3. Title Label (waterTube) - White, bold, 15pt font
    let FLORENICWaterTubeLabel: UILabel = {
        let FLORENIClabel = UILabel()
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
    
        FLORENIClabel.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        FLORENIClabel.textColor = .white
        return FLORENIClabel
    }()

    // 4. Subtitle/Time Label (mechanic) - Light grey, 12pt font
    let FLORENICMechanicLabel: UILabel = {
        let FLORENIClabel = UILabel()
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENIClabel.text = UIViewController.florenicFloralDesign(florenicIke: "Twismje")
        FLORENIClabel.font = UIFont.systemFont(ofSize: 12)
        FLORENIClabel.textColor = .lightGray // Corresponds to white 0.666 alpha 1
        return FLORENIClabel
    }()

    // 5. Structure Label (structure) - Bottom label, white, bold 13pt font
    let FLORENICStructureLabel: UILabel = {
        let FLORENIClabel = UILabel()
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
     
        FLORENIClabel.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        FLORENIClabel.textColor = .white
        return FLORENIClabel
    }()

    // 6. Button (colorant) - The image button on the right
    let FLORENICColorantButton: UIButton = {
        let FLORENICbutton = UIButton(type: .custom)
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        // Assuming 'FLORENICcaldioVIoe' is an image asset
        FLORENICbutton.setImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICcaldioVIoe"), for: .normal)
        return FLORENICbutton
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
