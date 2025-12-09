//
//  FLORENICBloomStreamController.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/17.
//

import UIKit

class FLORENICBloomStreamController: UIViewController, FLORENICBloomStreamCellDelegate {
    func FLORENICChipstickes(information: Dictionary<String, Any>) {
  
        let FLORENICpikingStatus = information["hydration"] as? Int ?? 0
        
        let pikingIDROOM = information["knife"] as? Int ?? 0
        let pikingIDUID = information["waterTube"] as? Int ?? 0
        
        if FLORENICpikingStatus == 0 {
            let sctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.florenicCottageCore.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(pikingIDROOM)" ))
            sctive.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(sctive, animated: true)
            return
        }
        
        
        let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.florenicNativeSpecies.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(pikingIDROOM)&userId=\(pikingIDUID)" ))
        FLORENICsctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(FLORENICsctive, animated: true)
    }
    
    func FLORENICcreateActive(){
        let sctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICpollination.FLORENICperformanceMacro())
        sctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(sctive, animated: true)
    }
    
    private var FLORENICswiftuSiaki:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    private var FLORENICearthiness:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    // 对应 Storyboard 中的 image="FLORENICupcycle"
        private lazy var FLORENIClogoImageView: UIImageView = {
            let FLORENICimageView = UIImageView()
            FLORENICimageView.image = UIImage(named: "FLORENICupcycle")
            FLORENICimageView.contentMode = .scaleAspectFit
            FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
            return FLORENICimageView
        }()
        
        // 对应 Storyboard 中的 image="FLORENICgluing"
        // 对应 Storyboard 中的 action="gypsophila:"
        private lazy var FLORENICactionButton: UIButton = {
            let FLORENICbutton = UIButton(type: .custom)
            FLORENICbutton.setImage(UIImage(named: "FLORENICgluing"), for: .normal)
            FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
            FLORENICbutton.addTarget(self, action: #selector(FLORENICgypsophila(_:)), for: .touchUpInside)
            return FLORENICbutton
        }()
        
        // 对应 Storyboard 中的 outlet property="solidago"
        private lazy var FLORENICsolidago: UITableView = {
            let FLORENICtableView = UITableView(frame: .zero, style: .plain)
            FLORENICtableView.backgroundColor = .clear // [cite: 126]
            FLORENICtableView.separatorStyle = .singleLine
            FLORENICtableView.translatesAutoresizingMaskIntoConstraints = false
            return FLORENICtableView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FLORENICsetupUI()
               
        setupConstraints()
        FLORENICfragranceFree()
        FLORENICcoolChain()
        FLORENICjoice()
    }
    private func FLORENICsetupUI() {
            // 设置背景颜色，RGB: 0.078, 0.078, 0.078
            self.view.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
            
            // 添加子视图
            self.view.addSubview(FLORENIClogoImageView)
            self.view.addSubview(FLORENICactionButton)
            self.view.addSubview(FLORENICsolidago)
        }
        
        private func setupConstraints() {
            let safeArea = self.view.safeAreaLayoutGuide
            
            NSLayoutConstraint.activate([
                // --- Logo Image View Constraints [cite: 120, 130] ---
                // Top: Safe Area Top (constant 0)
                FLORENIClogoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor),
                // Leading: Safe Area Leading + 16
                FLORENIClogoImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
                // Width: 155
                FLORENIClogoImageView.widthAnchor.constraint(equalToConstant: 155),
                // Height: 44
                FLORENIClogoImageView.heightAnchor.constraint(equalToConstant: 44),
                
                // --- Action Button Constraints [cite: 122, 128, 130] ---
                // Trailing: Safe Area Trailing - 20
                FLORENICactionButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
                // CenterY: 对齐 Logo Image 的中心
                FLORENICactionButton.centerYAnchor.constraint(equalTo: FLORENIClogoImageView.centerYAnchor),
                // Width: 32
                FLORENICactionButton.widthAnchor.constraint(equalToConstant: 32),
                // Height: 32
                FLORENICactionButton.heightAnchor.constraint(equalToConstant: 32),
                
                // --- TableView (solidago) Constraints [cite: 128, 129] ---
                // Top: Logo Image Bottom + 22
                FLORENICsolidago.topAnchor.constraint(equalTo: FLORENIClogoImageView.bottomAnchor, constant: 22),
                // Leading: Safe Area Leading + 16
                FLORENICsolidago.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
                // Trailing: Safe Area Trailing - 16
                FLORENICsolidago.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16),
                // Bottom: Superview Bottom (0)
                FLORENICsolidago.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
        }

    @objc func FLORENICgypsophila(_ sender: UIButton) {
        let sctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.florenicRikka.FLORENICperformanceMacro())
        sctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(sctive, animated: true)
       
    }
    
    
    private func FLORENICfragranceFree()  {
        FLORENICsolidago.register(FLORENICBloomStreamCell.self, forCellReuseIdentifier: "FLORENICBloomStreamCell")
        FLORENICsolidago.register(FLORENICBloodDreamCell.self, forCellReuseIdentifier: "FLORENICBloodDreamCell")
        
        
    }
    
    private func FLORENICcoolChain()  {
        FLORENICsolidago.separatorStyle = .none
        FLORENICsolidago.delegate = self
        FLORENICsolidago.dataSource = self
    }

}


extension FLORENICBloomStreamController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FLORENICearthiness.count + 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 380
        }
        
        return 84
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let FLORENICcoldComeing = tableView.dequeueReusableCell(withIdentifier: "FLORENICBloomStreamCell", for: indexPath) as! FLORENICBloomStreamCell
            FLORENICcoldComeing.FLORENICSwiftuSiaki = FLORENICswiftuSiaki
            FLORENICcoldComeing.FLORENICDelegate = self
            return FLORENICcoldComeing
            
        }
        let pikingData = FLORENICearthiness[indexPath.row - 1]
        let coldComeingMAin = tableView.dequeueReusableCell(withIdentifier: "FLORENICBloodDreamCell", for: indexPath) as! FLORENICBloodDreamCell
        coldComeingMAin.FLORENICLushImageView.FLORENICloadImage(from: pikingData["preparation"] as? String ?? "")
        let acuser = pikingData["activityUserVoList"] as? Array<Dictionary<String,Any>>
        
        coldComeingMAin.FLORENICGardenImageView.FLORENICloadImage(from:acuser?.first?["care"] as? String ?? "" )
        coldComeingMAin.FLORENICComplementaryLabel.text = "\(acuser?.count ?? 0) " + self.florenicFloralDesign(florenicIke: "Jsomiunvekd")
        coldComeingMAin.FLORENICSeasonalLabel.text = pikingData["proposal"] as? String ?? ""
      
        return coldComeingMAin
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        if indexPath.row == 0 {
            return
        }
        if FLORENICswiftuSiaki.count <= 0 {
            return
        }
       
        let FLORENICpikingData = FLORENICearthiness[indexPath.row - 1]//active
        let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICornamental.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(FLORENICpikingData["concept"] as? Int ?? 0)" ))
        FLORENICsctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(FLORENICsctive, animated: true)
        
    }
    
    private func FLORENICjoice() {
        
       
        FLORENICstartAnimatingindicater()
        let FLORENICsopranoSax = ["pruner":10,"ribbon":1,"scissors":"13439215"] as [String : Any]
        
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: FLORENICsopranoSax, florenicTexture: "/xbdvafoaz/ilxuy") { vocalAlign in
            self.FLORENIChiddenAnimater()
            guard
                   let FLORENICzoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                    let FLORENICmidiLearn = FLORENICzoomInOut[self.florenicFloralDesign(florenicIke: "dyaetaa")] as? Array<Dictionary<String,Any>>
                    
            else {
               
            
                return
            }
            
            self.FLORENICswiftuSiaki = FLORENICmidiLearn
            self.FLORENICsolidago.reloadRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
        } florenicGreenery: { bimama in
            self.FLORENIChiddenAnimater()
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: bimama.localizedDescription, FLORENICgardenStyle: .FLORENICvineWarning)
        }
        
        
      
        FLORENICDreatorsController.florenicAesthetic(florenicColorPalette: ["shop":"13439215"], florenicTexture: "/rjhnoqceflbz/uovkoc") { vocalAlign in
          
            guard
                   let FLORENICzoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                    let FLORENICmidiLearn = FLORENICzoomInOut[self.florenicFloralDesign(florenicIke: "dyaetaa")] as? Array<Dictionary<String,Any>>
                    
            else {
               
            
                return
            }
            
            self.FLORENICearthiness = FLORENICmidiLearn
            self.FLORENICsolidago.reloadData()
        } florenicGreenery: { bimama in
        }
        
        
    }
}
