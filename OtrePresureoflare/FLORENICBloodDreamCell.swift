//
//  BloodDreamCell.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/17.
//

import UIKit

class FLORENICBloodDreamCell: UITableViewCell {
    
    var FLORENICdaisyConcernTap: (() -> Void)?

     lazy var FLORENICLushImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.contentMode = .scaleAspectFill // contentMode="scaleAspectFill"
        FLORENICimageView.clipsToBounds = true          // clipsSubviews="YES"
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
    
   
     lazy var FLORENICGardenImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.contentMode = .scaleAspectFit // contentMode="scaleAspectFit"
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
    
   
     lazy var FLORENICSeasonalLabel: UILabel = {
        let FLORENIClabel = UILabel()
        
        FLORENIClabel.font = UIFont.systemFont(ofSize: 16, weight: .heavy) 
        FLORENIClabel.textColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()
    
    
     lazy var FLORENICComplementaryLabel: UILabel = {
        let FLORENIClabel = UILabel()
       
        FLORENIClabel.font = UIFont.systemFont(ofSize: 10, weight: .heavy)
        FLORENIClabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5188337)
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()
    
   
     lazy var FLORENICRecutImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
         FLORENICimageView.image = FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICrecut") // image="FLORENICrecut"
        FLORENICimageView.contentMode = .scaleAspectFit
        FLORENICimageView.clipsToBounds = true
        FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
        return FLORENICimageView
    }()
    
    lazy var FLORENICDaisyButton: UIButton = {
        let FLORENICbutton = UIButton(type: .custom)
        FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICbutton.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 0.78)
        FLORENICbutton.tintColor = .white
        FLORENICbutton.setImage(UIImage(systemName: "exclamationmark.bubble.fill"), for: .normal)
        FLORENICbutton.layer.cornerRadius = 14
        FLORENICbutton.layer.masksToBounds = true
        FLORENICbutton.addTarget(self, action: #selector(FLORENICdaisyConcernPressed), for: .touchUpInside)
        return FLORENICbutton
    }()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupFLORENICUI()
        setupFLORENICConstraints()
        applyFLORENICStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Methods
    
    private func setupFLORENICUI() {
        contentView.addSubview(FLORENICLushImageView)
        contentView.addSubview(FLORENICGardenImageView)
        contentView.addSubview(FLORENICSeasonalLabel)
        contentView.addSubview(FLORENICComplementaryLabel)
        contentView.addSubview(FLORENICRecutImageView)
        contentView.addSubview(FLORENICDaisyButton)
    }
    
    private func setupFLORENICConstraints() {
    
        NSLayoutConstraint.activate([
      
            FLORENICLushImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15), // leading="15"
            FLORENICLushImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor), // centerY
            FLORENICLushImageView.widthAnchor.constraint(equalToConstant: 64),
            FLORENICLushImageView.heightAnchor.constraint(equalToConstant: 64),

            FLORENICRecutImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15), // trailing="-15"
            FLORENICRecutImageView.centerYAnchor.constraint(equalTo: FLORENICLushImageView.centerYAnchor), // centerY to Avatar
            FLORENICRecutImageView.widthAnchor.constraint(equalToConstant: 61),
            FLORENICRecutImageView.heightAnchor.constraint(equalToConstant: 30),

        
            FLORENICSeasonalLabel.leadingAnchor.constraint(equalTo: FLORENICLushImageView.trailingAnchor, constant: 5),
         
            FLORENICLushImageView.topAnchor.constraint(equalTo: FLORENICSeasonalLabel.topAnchor, constant: -9),
           
            FLORENICGardenImageView.widthAnchor.constraint(equalToConstant: 24), // width="24"
            FLORENICGardenImageView.heightAnchor.constraint(equalToConstant: 24), // height="24"
            FLORENICGardenImageView.bottomAnchor.constraint(equalTo: FLORENICLushImageView.bottomAnchor), // bottom to Avatar bottom
            FLORENICGardenImageView.leadingAnchor.constraint(equalTo: FLORENICSeasonalLabel.leadingAnchor), // leading to Title leading

            // 5. FLORENICComplementaryLabel (ID: kJ0-Tl-4PS, Subtitle/Joined)
            FLORENICComplementaryLabel.leadingAnchor.constraint(equalTo: FLORENICGardenImageView.trailingAnchor, constant: 8), // leading: Icon right + 8
            FLORENICComplementaryLabel.centerYAnchor.constraint(equalTo: FLORENICGardenImageView.centerYAnchor), // centerY to Icon centerY
            
            FLORENICDaisyButton.topAnchor.constraint(equalTo: contentView.topAnchor),
            FLORENICDaisyButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            FLORENICDaisyButton.widthAnchor.constraint(equalToConstant: 25),
            FLORENICDaisyButton.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    private func applyFLORENICStyle() {
        
        self.selectionStyle = .none
        
        
        FLORENICLushImageView.layer.cornerRadius = 64 / 2
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        FLORENICdaisyConcernTap = nil
    }
    
    @objc private func FLORENICdaisyConcernPressed() {
        FLORENICdaisyConcernTap?()
    }
}


extension NSObject{
     func florenicFloralDesign(florenicIke: String) -> String {
            return String(florenicIke.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element })
     }
    
   class func florenicFloralDesign(florenicIke: String) -> String {
           return String(florenicIke.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element })
    }
}
