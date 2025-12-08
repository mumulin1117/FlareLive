//
//  BloodDreamCell.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/17.
//

import UIKit

class FLORENICBloodDreamCell: UITableViewCell {

    private lazy var FLORENICLushImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill // contentMode="scaleAspectFill"
        imageView.clipsToBounds = true          // clipsSubviews="YES"
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
   
    private lazy var FLORENICGardenImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit // contentMode="scaleAspectFit"
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
   
    private lazy var FLORENICSeasonalLabel: UILabel = {
        let label = UILabel()
   
        label.font = UIFont.systemFont(ofSize: 16, weight: .heavy) // weight="heavy" pointSize="16"
        // textColor: RGB 0.078, 0.078, 0.078 (深灰色)
        label.textColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var FLORENICComplementaryLabel: UILabel = {
        let label = UILabel()
        label.text = "+1 joined" // Default text
        label.font = UIFont.systemFont(ofSize: 10, weight: .heavy) // weight="heavy" pointSize="10"
        // textColor: Black with 0.518 alpha (半透明黑色)
        label.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5188337)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    private lazy var FLORENICRecutImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "recut") // image="recut"
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
        // 参考 XIB 中的布局约束
        NSLayoutConstraint.activate([
            // 1. FLORENICLushImageView (ID: Z5a-hL-eQw, Avatar)
            FLORENICLushImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15), // leading="15"
            FLORENICLushImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor), // centerY
            FLORENICLushImageView.widthAnchor.constraint(equalToConstant: 64), // width="64"
            FLORENICLushImageView.heightAnchor.constraint(equalToConstant: 64), // height="64"

            // 2. FLORENICRecutImageView (ID: Pkj-6a-Q3h, Recut Icon)
            FLORENICRecutImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15), // trailing="-15"
            FLORENICRecutImageView.centerYAnchor.constraint(equalTo: FLORENICLushImageView.centerYAnchor), // centerY to Avatar
            FLORENICRecutImageView.widthAnchor.constraint(equalToConstant: 61), // width="61"
            FLORENICRecutImageView.heightAnchor.constraint(equalToConstant: 30), // height="30"

            // 3. FLORENICSeasonalLabel (ID: IH8-b9-C1i, Title)
            // leading: Avatar right + 5
            FLORENICSeasonalLabel.leadingAnchor.constraint(equalTo: FLORENICLushImageView.trailingAnchor, constant: 5),
            // top: Avatar top + 9 (Avatar top = Label top - 9)
            FLORENICLushImageView.topAnchor.constraint(equalTo: FLORENICSeasonalLabel.topAnchor, constant: -9),
            
            // 4. FLORENICGardenImageView (ID: DlW-F6-yeb, Icon next to Title)
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
