//
//  FloralGradenview.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/20.
//

import UIKit


extension UIViewController {
    
    enum FLORENICFloralAlertStyle {
        case FLORENICblossomSuccess
        case FLORENICpetalFailure
        case FLORENICbudInfo
        case FLORENICvineWarning
        case FLORENICdewNotification
        
        var FLORENICthemeColor: UIColor {
            switch self {
            case .FLORENICblossomSuccess:
                return UIColor(red: 0.38, green: 0.75, blue: 0.46, alpha: 1.0)
            case .FLORENICpetalFailure:
                return UIColor(red: 0.91, green: 0.44, blue: 0.32, alpha: 1.0)
            case .FLORENICbudInfo:
                return UIColor(red: 0.34, green: 0.57, blue: 0.85, alpha: 1.0)
            case .FLORENICvineWarning:
                return UIColor(red: 0.95, green: 0.77, blue: 0.06, alpha: 1.0)
            case .FLORENICdewNotification:
                return UIColor(red: 0.51, green: 0.48, blue: 0.82, alpha: 1.0)
            }
        }
        
        var FLORENICiconSymbol: String {
            switch self {
            case .FLORENICblossomSuccess: return "🌸"
            case .FLORENICpetalFailure: return "🥀"
            case .FLORENICbudInfo: return "💮"
            case .FLORENICvineWarning: return "🌿"
            case .FLORENICdewNotification: return "💧"
            }
        }
    }
    
    func FLORENICdisplayFloralMessage(FLORENICblossomText: String, FLORENICgardenStyle: FLORENICFloralAlertStyle, FLORENICdisplayDuration: TimeInterval = 2.5) {
        // 创建花园视图容器
        let FLORENICgardenView = FLORENICFloralGardenView(FLORENICstyle: FLORENICgardenStyle, FLORENICmessage:FLORENICblossomText)
        FLORENICgardenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(FLORENICgardenView)
        
        // 布局约束
        NSLayoutConstraint.activate([
            FLORENICgardenView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 24),
            FLORENICgardenView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -24),
            FLORENICgardenView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FLORENICgardenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32)
        ])
        
        // 入场动画 - 花瓣飘落效果
        FLORENICgardenView.transform = CGAffineTransform(translationX: 0, y: -100).scaledBy(x: 0.8, y: 0.8)
        FLORENICgardenView.alpha = 0
        
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: .curveEaseOut) {
            FLORENICgardenView.transform = .identity
            FLORENICgardenView.alpha = 1
        }
        
        // 自动消失动画 - 花瓣消散效果
        DispatchQueue.main.asyncAfter(deadline: .now() + FLORENICdisplayDuration) {
            UIView.animate(withDuration: 0.5, animations: {
                FLORENICgardenView.transform = CGAffineTransform(translationX: 0, y: -50).scaledBy(x: 0.9, y: 0.9)
                FLORENICgardenView.alpha = 0
            }) { _ in
                FLORENICgardenView.removeFromSuperview()
            }
        }
    }
}

// 自定义花园视图
private class FLORENICFloralGardenView: UIView {
    
    private let FLORENICstyle: UIViewController.FLORENICFloralAlertStyle
    private let FLORENICmessage: String
    
    init(FLORENICstyle: UIViewController.FLORENICFloralAlertStyle, FLORENICmessage: String) {
        self.FLORENICstyle = FLORENICstyle
        self.FLORENICmessage = FLORENICmessage
        super.init(frame: .zero)
        FLORENICcultivateGarden()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) ")
    }
    
    private func FLORENICcultivateGarden() {
        backgroundColor = FLORENICstyle.FLORENICthemeColor
        layer.cornerRadius = 20
        layer.cornerCurve = .continuous
        
        // 添加动态阴影
        layer.shadowColor = FLORENICstyle.FLORENICthemeColor.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 8)
        layer.shadowRadius = 16
        layer.shadowOpacity = 0.3
        
        // 创建内容堆栈
        let FLORENICblossomStack = UIStackView()
        FLORENICblossomStack.axis = .horizontal
        FLORENICblossomStack.spacing = 12
        FLORENICblossomStack.alignment = .center
        FLORENICblossomStack.translatesAutoresizingMaskIntoConstraints = false
        
        // 花朵图标标签
        let FLORENICflowerIcon = UILabel()
        FLORENICflowerIcon.text = FLORENICstyle.FLORENICiconSymbol
        FLORENICflowerIcon.font = .systemFont(ofSize: 24)
        FLORENICflowerIcon.setContentHuggingPriority(.required, for: .horizontal)
        
        // 消息标签
        let FLORENICpetalLabel = UILabel()
        FLORENICpetalLabel.text = FLORENICmessage
        FLORENICpetalLabel.textColor = .white
        FLORENICpetalLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        FLORENICpetalLabel.numberOfLines = 0
        FLORENICpetalLabel.textAlignment = .center
        
        FLORENICblossomStack.addArrangedSubview(FLORENICflowerIcon)
        FLORENICblossomStack.addArrangedSubview(FLORENICpetalLabel)
        addSubview(FLORENICblossomStack)
        
        // 布局
        NSLayoutConstraint.activate([
            FLORENICblossomStack.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            FLORENICblossomStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            FLORENICblossomStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            FLORENICblossomStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            widthAnchor.constraint(lessThanOrEqualToConstant: 280)
        ])
        
        // 添加微妙的脉动动画
        let FLORENICpulseAnimation = CABasicAnimation(keyPath:self.florenicFloralDesign(florenicIke: "tkrmawnvsjfeourwmo.hsmckaklde") )
        FLORENICpulseAnimation.duration = 2.0
        FLORENICpulseAnimation.fromValue = 1.0
        FLORENICpulseAnimation.toValue = 1.02
        FLORENICpulseAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        FLORENICpulseAnimation.autoreverses = true
        FLORENICpulseAnimation.repeatCount = .infinity
        
        layer.add(FLORENICpulseAnimation, forKey: "petalPulse")
    }
}

