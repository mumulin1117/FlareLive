//
//  FLORENICBloomStreamController.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/17.
//

import UIKit

class FLORENICBloomStreamController: UIViewController, FLORENICBloomStreamCellDelegate {
    func FLORENICChipstickes(information: Dictionary<String, Any>) {
        //Live
    }
    
  
    
    private var FLORENICswiftuSiaki:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    private var FLORENICearthiness:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    // 对应 Storyboard 中的 image="upcycle"
        private lazy var FLORENIClogoImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "upcycle")
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
        
        // 对应 Storyboard 中的 image="gluing"
        // 对应 Storyboard 中的 action="gypsophila:"
        private lazy var FLORENICactionButton: UIButton = {
            let button = UIButton(type: .custom)
            button.setImage(UIImage(named: "gluing"), for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(FLORENICgypsophila(_:)), for: .touchUpInside)
            return button
        }()
        
        // 对应 Storyboard 中的 outlet property="solidago"
        private lazy var FLORENICsolidago: UITableView = {
            let tableView = UITableView(frame: .zero, style: .plain)
            tableView.backgroundColor = .systemBackground // [cite: 126]
            tableView.separatorStyle = .singleLine
            tableView.translatesAutoresizingMaskIntoConstraints = false
            return tableView
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
            // Storyboard 中关联的 Action
            print("gypsophila action triggered")
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
        return FLORENICswiftuSiaki.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let coldComeing = tableView.dequeueReusableCell(withIdentifier: "FLORENICBloomStreamCell", for: indexPath) as! FLORENICBloomStreamCell
            coldComeing.FLORENICDelegate = self
            return coldComeing
            
        }
        let pikingData = FLORENICswiftuSiaki[indexPath.row - 1]
        let coldComeingMAin = tableView.dequeueReusableCell(withIdentifier: "FLORENICBloodDreamCell", for: indexPath) as! FLORENICBloodDreamCell
        return coldComeingMAin
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pikingData = FLORENICswiftuSiaki[indexPath.row - 1]
        
        
    }
    
    private func FLORENICjoice() {
        
       
        startAnimatingindicater()
        let sopranoSax = ["pruner":10,"ribbon":1,"scissors":"13439215"] as [String : Any]
        
        FLORENICDreatorsController.FLORENICrhythmSyncEngine(FLORENICaudioComponents: sopranoSax, FLORENICbaseFrequency: "/xbdvafoaz/ilxuy") { vocalAlign in
            self.hiddenAnimater()
            guard
                   let zoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                    let midiLearn = zoomInOut["data"] as? Array<Dictionary<String,Any>>
                    
            else {
               
            
                return
            }
            
            self.FLORENICswiftuSiaki = midiLearn
            self.FLORENICsolidago.reloadRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
        } FLORENIConInterference: { bimama in
            self.hiddenAnimater()
            self.FLORENICdisplayFloralMessage(FLORENICblossomText: bimama.localizedDescription, FLORENICgardenStyle: .vineWarning)
        }
        
        
      
        FLORENICDreatorsController.FLORENICrhythmSyncEngine(FLORENICaudioComponents: ["tip":"13439215"], FLORENICbaseFrequency: "/zwezbexaytapmhlz/jjqte") { vocalAlign in
          
            guard
                   let zoomInOut = vocalAlign as? Dictionary<String,Any> ,
                 
                    let midiLearn = zoomInOut["data"] as? Array<Dictionary<String,Any>>
                    
            else {
               
            
                return
            }
            
            self.FLORENICearthiness = midiLearn
            self.FLORENICsolidago.reloadData()
        } FLORENIConInterference: { bimama in
        }
        
        
    }
}
