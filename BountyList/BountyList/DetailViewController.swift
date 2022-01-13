//
//  DetailViewController.swift
//  BountyList
//
//  Created by 이승후 on 2022/01/13.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MVVM
    
    // Model
    // -BountyInfo
    // > BountyInfo 만들기
    
    // View
    // - imgView, nameLabel, bountyLabel
    // > view들은 viewModel을 통해서 구성되기 ?
    
    // ViewModel
    // - DetailViewModel
    // > 뷰레이어에서 필요한 메서드 만들기
    // > 모델 가지고 있기,, BountyInfo들
    
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    //    var name: String?
    //    var bounty: Int?
    
    //    var bountyInfo: BountyInfo?
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
        
        //        if let bountyInfo = self.bountyInfo {
        //            imgView.image = bountyInfo.image
        //            nameLabel.text = bountyInfo.name
        //            bountyLabel.text = "\(bountyInfo.bounty)"
        //        }
        
        //        if let name = self.name, let bounty = self.bounty {
        //            imgView.image = UIImage(named: "\(name).jpg")
        //            nameLabel.text = name
        //            bountyLabel.text = "\(bounty)"
        //        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
}
