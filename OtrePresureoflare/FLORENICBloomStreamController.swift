//
//  FLORENICBloomStreamController.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/17.
//

import UIKit

class FLORENICBloomStreamController: UIViewController, FLORENICBloomStreamCellDelegate {
    func FLORENICChipstickes(information: Dictionary<String, Any>) {
  
        let FLORENICpikingStatus = information[self.florenicFloralDesign(florenicIke: "hqywderrattyiuoino")] as? Int ?? 0
        
        let pikingIDROOM = information[self.florenicFloralDesign(florenicIke: "kqnwiefret")] as? Int ?? 0
        let pikingIDUID = information[self.florenicFloralDesign(florenicIke: "wqawteerrtTyuubieo")] as? Int ?? 0
        
        if FLORENICpikingStatus == 0 {
            FLORENICaskBloomRoomPassword { [weak self] in
                let sctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.florenicCottageCore.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(pikingIDROOM)" ))
                sctive.hidesBottomBarWhenPushed = true
                self?.navigationController?.pushViewController(sctive, animated: true)
            }
            return
        }
        
        
        FLORENICaskBloomRoomPassword { [weak self] in
            let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.florenicNativeSpecies.FLORENICperformanceMacro(FLORENICmacAutodesc: "\(pikingIDROOM)&userId=\(pikingIDUID)" ))
            FLORENICsctive.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(FLORENICsctive, animated: true)
        }
    }
    
    private func FLORENICaskBloomRoomPassword(FLORENICaccepted: @escaping () -> Void) {
        let FLORENICveilView = UIControl(frame: view.bounds)
        FLORENICveilView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICveilView.backgroundColor = UIColor.black.withAlphaComponent(0.55)
        FLORENICveilView.alpha = 0
        
        let FLORENICcardView = UIView()
        FLORENICcardView.translatesAutoresizingMaskIntoConstraints = false
        FLORENICcardView.backgroundColor = UIColor(red: 1, green: 148 / 255, blue: 218 / 255, alpha: 1)
        FLORENICcardView.layer.cornerRadius = 24
        FLORENICcardView.clipsToBounds = true
        
        let FLORENICtitleLabel = UILabel()
        FLORENICtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENICtitleLabel.text = self.florenicFloralDesign(florenicIke: "EqNwTeErRt yRuOiOoMp aPsAdSfSgWhOjRkDl")
        FLORENICtitleLabel.textAlignment = .center
        FLORENICtitleLabel.textColor = UIColor(red: 137 / 255, green: 8 / 255, blue: 88 / 255, alpha: 1)
        FLORENICtitleLabel.font = .systemFont(ofSize: 24, weight: .heavy)
        FLORENICtitleLabel.adjustsFontSizeToFitWidth = true
        FLORENICtitleLabel.minimumScaleFactor = 0.72
        
        let FLORENICtextField = UITextField()
        FLORENICtextField.translatesAutoresizingMaskIntoConstraints = false
        FLORENICtextField.backgroundColor = .white
        FLORENICtextField.textColor = .black
        FLORENICtextField.tintColor = UIColor(red: 137 / 255, green: 8 / 255, blue: 88 / 255, alpha: 1)
        FLORENICtextField.font = .systemFont(ofSize: 17, weight: .regular)
        FLORENICtextField.keyboardType = .numberPad
        FLORENICtextField.textAlignment = .left
        FLORENICtextField.layer.cornerRadius = 26
        FLORENICtextField.clipsToBounds = true
        FLORENICtextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 28, height: 1))
        FLORENICtextField.leftViewMode = .always
        
        let FLORENICerrorLabel = UILabel()
        FLORENICerrorLabel.translatesAutoresizingMaskIntoConstraints = false
        FLORENICerrorLabel.text = self.florenicFloralDesign(florenicIke: "Iqnwceorrtryeucito ppaassdsfwgohrjdk.l zPxlcevabsnem qewnetretry uiito paagsadifng.h")
        FLORENICerrorLabel.textAlignment = .center
        FLORENICerrorLabel.textColor = UIColor(red: 80 / 255, green: 0, blue: 42 / 255, alpha: 1)
        FLORENICerrorLabel.font = .systemFont(ofSize: 17, weight: .semibold)
        FLORENICerrorLabel.adjustsFontSizeToFitWidth = true
        FLORENICerrorLabel.minimumScaleFactor = 0.75
        FLORENICerrorLabel.isHidden = true
        
        let FLORENICjoinButton = UIButton(type: .custom)
        FLORENICjoinButton.translatesAutoresizingMaskIntoConstraints = false
        FLORENICjoinButton.backgroundColor = UIColor(red: 20 / 255, green: 20 / 255, blue: 20 / 255, alpha: 1)
        FLORENICjoinButton.setTitle(self.florenicFloralDesign(florenicIke: "JqOwIeNr"), for: .normal)
        FLORENICjoinButton.setTitleColor(UIColor(red: 1, green: 148 / 255, blue: 218 / 255, alpha: 1), for: .normal)
        FLORENICjoinButton.titleLabel?.font = .systemFont(ofSize: 25, weight: .heavy)
        FLORENICjoinButton.layer.cornerRadius = 28
        FLORENICjoinButton.clipsToBounds = true
        
        view.addSubview(FLORENICveilView)
        FLORENICveilView.addSubview(FLORENICcardView)
        FLORENICcardView.addSubview(FLORENICtitleLabel)
        FLORENICcardView.addSubview(FLORENICtextField)
        FLORENICcardView.addSubview(FLORENICerrorLabel)
        FLORENICcardView.addSubview(FLORENICjoinButton)
        
        let FLORENICcardCenter = FLORENICcardView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -18)
        NSLayoutConstraint.activate([
            FLORENICveilView.topAnchor.constraint(equalTo: view.topAnchor),
            FLORENICveilView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            FLORENICveilView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            FLORENICveilView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            FLORENICcardView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            FLORENICcardView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            FLORENICcardView.heightAnchor.constraint(equalToConstant: 280),
            FLORENICcardCenter,
            FLORENICtitleLabel.topAnchor.constraint(equalTo: FLORENICcardView.topAnchor, constant: 34),
            FLORENICtitleLabel.leadingAnchor.constraint(equalTo: FLORENICcardView.leadingAnchor, constant: 24),
            FLORENICtitleLabel.trailingAnchor.constraint(equalTo: FLORENICcardView.trailingAnchor, constant: -24),
            FLORENICtextField.topAnchor.constraint(equalTo: FLORENICtitleLabel.bottomAnchor, constant: 28),
            FLORENICtextField.leadingAnchor.constraint(equalTo: FLORENICcardView.leadingAnchor, constant: 40),
            FLORENICtextField.trailingAnchor.constraint(equalTo: FLORENICcardView.trailingAnchor, constant: -40),
            FLORENICtextField.heightAnchor.constraint(equalToConstant: 52),
            FLORENICerrorLabel.topAnchor.constraint(equalTo: FLORENICtextField.bottomAnchor, constant: 8),
            FLORENICerrorLabel.leadingAnchor.constraint(equalTo: FLORENICcardView.leadingAnchor, constant: 26),
            FLORENICerrorLabel.trailingAnchor.constraint(equalTo: FLORENICcardView.trailingAnchor, constant: -26),
            FLORENICjoinButton.leadingAnchor.constraint(equalTo: FLORENICcardView.leadingAnchor, constant: 40),
            FLORENICjoinButton.trailingAnchor.constraint(equalTo: FLORENICcardView.trailingAnchor, constant: -40),
            FLORENICjoinButton.topAnchor.constraint(greaterThanOrEqualTo: FLORENICerrorLabel.bottomAnchor, constant: 14),
            FLORENICjoinButton.bottomAnchor.constraint(equalTo: FLORENICcardView.bottomAnchor, constant: -28),
            FLORENICjoinButton.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        var FLORENICkeyboardToken: NSObjectProtocol?
        let FLORENICdismissBloom = {
            FLORENICtextField.resignFirstResponder()
            if let FLORENICkeyboardToken {
                NotificationCenter.default.removeObserver(FLORENICkeyboardToken)
            }
            UIView.animate(withDuration: 0.18, animations: {
                FLORENICveilView.alpha = 0
            }, completion: { _ in
                FLORENICveilView.removeFromSuperview()
            })
        }
        
        FLORENICveilView.addAction(UIAction { _ in
            FLORENICdismissBloom()
        }, for: .touchUpInside)
        
        FLORENICjoinButton.addAction(UIAction { [weak self] _ in
            guard let self else { return }
            let FLORENICtypedText = (FLORENICtextField.text ?? String()).trimmingCharacters(in: .whitespacesAndNewlines)
            if FLORENICtypedText == self.florenicFloralDesign(florenicIke: "0q1w2e3r") {
                FLORENICdismissBloom()
                FLORENICaccepted()
            } else {
                FLORENICerrorLabel.isHidden = false
            }
        }, for: .touchUpInside)
        
        FLORENICkeyboardToken = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillChangeFrameNotification, object: nil, queue: .main) { [weak view] FLORENICnote in
            guard let FLORENIChostView = view,
                  FLORENICveilView.superview != nil,
                  let FLORENICkeyboardFrame = (FLORENICnote.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else { return }
            let FLORENICoverlap = max(0, FLORENIChostView.bounds.maxY - FLORENIChostView.convert(FLORENICkeyboardFrame, from: nil).minY)
            FLORENICcardCenter.constant = FLORENICoverlap > 0 ? -FLORENICoverlap * 0.45 : -18
            FLORENIChostView.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 0.2) {
            FLORENICveilView.alpha = 1
        } completion: { _ in
            FLORENICtextField.becomeFirstResponder()
        }
    }
    
    func FLORENICcreateActive(){
        let sctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICpollination.FLORENICperformanceMacro())
        sctive.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(sctive, animated: true)
    }
    
    func FLORENICorchidConcern(information: Dictionary<String, Any>) {
        FLORENICshowConcernBloom(FLORENICkind: .FLORENICorchidRoom(information))
    }
    
    private enum FLORENICConcernKind {
        case FLORENICorchidRoom(Dictionary<String, Any>)
        case FLORENICdaisyActivity(Int)
    }
    
    private func FLORENICshowConcernBloom(FLORENICkind: FLORENICConcernKind) {
        let FLORENICsheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        FLORENICsheet.addAction(UIAlertAction(title: self.florenicFloralDesign(florenicIke: "Bxlyoxcxk"), style: .destructive) { [weak self] _ in
            self?.FLORENICblockConcernBloom(FLORENICkind)
        })
        FLORENICsheet.addAction(UIAlertAction(title: self.florenicFloralDesign(florenicIke: "Rxeypuoirpt"), style: .default) { [weak self] _ in
            self?.FLORENICrouteConcernReport()
        })
        FLORENICsheet.addAction(UIAlertAction(title: self.florenicFloralDesign(florenicIke: "Cxaynucweql"), style: .cancel))
        if let FLORENICpopover = FLORENICsheet.popoverPresentationController {
            FLORENICpopover.sourceView = view
            FLORENICpopover.sourceRect = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: 1, height: 1)
            FLORENICpopover.permittedArrowDirections = []
        }
        present(FLORENICsheet, animated: true)
    }
    
    private func FLORENICblockConcernBloom(_ FLORENICkind: FLORENICConcernKind) {
        switch FLORENICkind {
        case .FLORENICorchidRoom(let FLORENICinformation):
            let FLORENICroomId = FLORENICinformation[self.florenicFloralDesign(florenicIke: "kqnwiefret")] as? Int ?? 0
            let FLORENICuserId = FLORENICinformation[self.florenicFloralDesign(florenicIke: "wqawteerrtTyuubieo")] as? Int ?? 0
            FLORENICswiftuSiaki.removeAll { FLORENICitem in
                let FLORENICitemRoomId = FLORENICitem[self.florenicFloralDesign(florenicIke: "kqnwiefret")] as? Int ?? 0
                let FLORENICitemUserId = FLORENICitem[self.florenicFloralDesign(florenicIke: "wqawteerrtTyuubieo")] as? Int ?? 0
                return (FLORENICroomId > 0 && FLORENICitemRoomId == FLORENICroomId) || (FLORENICuserId > 0 && FLORENICitemUserId == FLORENICuserId)
            }
            FLORENICsolidago.reloadRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)
        case .FLORENICdaisyActivity(let FLORENICindex):
            guard FLORENICearthiness.indices.contains(FLORENICindex) else { return }
            FLORENICearthiness.remove(at: FLORENICindex)
            FLORENICsolidago.reloadData()
        }
    }
    
    private func FLORENICrouteConcernReport() {
        let FLORENICsctive = FLORENICDreatorsController.init(_florenicBotanical: FLORENICSaturationTape.FLORENICpattern.FLORENICperformanceMacro())
        FLORENICsctive.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(FLORENICsctive, animated: true)
    }
    
    private var FLORENICswiftuSiaki:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    private var FLORENICearthiness:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
        private lazy var FLORENIClogoImageView: UIImageView = {
            let FLORENICimageView = UIImageView()
            FLORENICimageView.image =  FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICupcycle")
            FLORENICimageView.contentMode = .scaleAspectFit
            FLORENICimageView.translatesAutoresizingMaskIntoConstraints = false
            return FLORENICimageView
        }()
        
        private lazy var FLORENICactionButton: UIButton = {
            let FLORENICbutton = UIButton(type: .custom)
            FLORENICbutton.setImage(FLORENICResourceLoader.shared.FLORENICImage(named: "FLORENICgluing"), for: .normal)
            FLORENICbutton.translatesAutoresizingMaskIntoConstraints = false
            FLORENICbutton.addTarget(self, action: #selector(FLORENICgypsophila(_:)), for: .touchUpInside)
            return FLORENICbutton
        }()
        
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
           
            self.view.backgroundColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1.0)
            
           
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
                
                FLORENICactionButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
                // CenterY: 对齐 Logo Image 的中心
                FLORENICactionButton.centerYAnchor.constraint(equalTo: FLORENIClogoImageView.centerYAnchor),
                // Width: 32
                FLORENICactionButton.widthAnchor.constraint(equalToConstant: 32),
                // Height: 32
                FLORENICactionButton.heightAnchor.constraint(equalToConstant: 32),
                
               
                FLORENICsolidago.topAnchor.constraint(equalTo: FLORENIClogoImageView.bottomAnchor, constant: 22),
              
                FLORENICsolidago.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
              
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
        coldComeingMAin.FLORENICdaisyConcernTap = { [weak self] in
            self?.FLORENICshowConcernBloom(FLORENICkind: .FLORENICdaisyActivity(indexPath.row - 1))
        }
      
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
