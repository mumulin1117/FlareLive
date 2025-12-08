//
//  FLORENICNiceLivaerCell.swift
//  OtrePresureoflare
//
//  Created by mumu on 2025/12/8.
//


import UIKit

class FLORENICNiceLivaerCell: UICollectionViewCell {


    private lazy var FLORENICMonsteraImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill // contentMode="scaleAspectFill"
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
  
    private lazy var FLORENICPittosporumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "knife") // image="knife"
        imageView.contentMode = .scaleToFill // contentMode="scaleToFill"
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
  
    private lazy var FLORENICAsparagusFernLabel: UILabel = {
        let label = UILabel()
        label.text = "Label" // Default text
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium) // weight="medium" pointSize="14"
        // textColor: White
        label.textColor = .white 
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFLORENICUI()
        setupFLORENICConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupFLORENICUI() {
        contentView.addSubview(FLORENICMonsteraImageView)
        contentView.addSubview(FLORENICPittosporumImageView)
        contentView.addSubview(FLORENICAsparagusFernLabel)
    }
    
    private func setupFLORENICConstraints() {
        // 参考 XIB 中的布局约束
        NSLayoutConstraint.activate([
            // 1. FLORENICMonsteraImageView (Background, Full Cell)
            FLORENICMonsteraImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            FLORENICMonsteraImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            FLORENICMonsteraImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            FLORENICMonsteraImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            // 2. FLORENICPittosporumImageView (Top Leading)
            FLORENICPittosporumImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10), // top="10"
            FLORENICPittosporumImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10), // leading="10"
            FLORENICPittosporumImageView.widthAnchor.constraint(equalToConstant: 39), // width="39"
            FLORENICPittosporumImageView.heightAnchor.constraint(equalToConstant: 16), // height="16"

            // 3. FLORENICAsparagusFernLabel (Bottom Leading)
            FLORENICAsparagusFernLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10), // leading="10"
            FLORENICAsparagusFernLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10) // bottom="-10"
        ])
    }
    
    // MARK: - Lifecycle Overrides

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code (XIB 版本的 awakeFromNib 默认无逻辑)
    }
    
    // MARK: - Data Configuration (Optional Helper)
    
    public func FLORENICconfigure(FLORENICtitle: String, FLORENICimage: UIImage?) {
        FLORENICAsparagusFernLabel.text = FLORENICtitle
        FLORENICMonsteraImageView.image = FLORENICimage
        // 配置 FLORENICPittosporumImageView 的图片等
    }
}
