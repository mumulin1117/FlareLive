//
//  BloodDreamCell.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/17.
//

import UIKit

class FLORENICBloodDreamCell: UITableViewCell {

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
        
        FLORENIClabel.font = UIFont.systemFont(ofSize: 16, weight: .heavy) // weight="heavy" pointSize="16"
        // textColor: RGB 0.078, 0.078, 0.078 (深灰色)
        FLORENIClabel.textColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()
    
    
     lazy var FLORENICComplementaryLabel: UILabel = {
        let FLORENIClabel = UILabel()
       
        FLORENIClabel.font = UIFont.systemFont(ofSize: 10, weight: .heavy) // weight="heavy" pointSize="10"
        // textColor: Black with 0.518 alpha (半透明黑色)
        FLORENIClabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5188337)
        FLORENIClabel.translatesAutoresizingMaskIntoConstraints = false
        return FLORENIClabel
    }()
    
   
     lazy var FLORENICRecutImageView: UIImageView = {
        let FLORENICimageView = UIImageView()
        FLORENICimageView.image = UIImage(named: "FLORENICrecut") // image="FLORENICrecut"
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
            FLORENICComplementaryLabel.centerYAnchor.constraint(equalTo: FLORENICGardenImageView.centerYAnchor) // centerY to Icon centerY
        ])
    }
    
    private func applyFLORENICStyle() {
        // 还原 awakeFromNib 中的设置
        self.selectionStyle = .none
        
        // 通常头像需要设置为圆形
        FLORENICLushImageView.layer.cornerRadius = 64 / 2
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
