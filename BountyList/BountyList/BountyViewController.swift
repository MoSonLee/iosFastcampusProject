//
//  BountyViewController.swift
//  BountyList
//
//  Created by 이승후 on 2022/01/13.
//

import UIKit

class BountyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let viewModel = BountyViewModel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController 데이터 줄꺼에요
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.viewModel.update(model: bountyInfo)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // UICollectionCiewDataSource.
    // 몇개를 보여줄까요?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
        
    }
    // 셸은 어떻게 표현할까요?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as?
                GridCell else {
                    return UICollectionViewCell()
                    
                }
        let bountyInfo = viewModel.bountyInfo(at: indexPath.item)
        cell.update(info: bountyInfo)
        //cell.update(info: bountyInfo)
        return cell
    }
    
    
    //UICollectionViewDelegate,
    // 셸이 클릭되었을때 어떨까요?
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("--> \(indexPath.item)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}
    
    // UICollectionViewDelegateFlowLayout
    // cell size를 계산할거다. (목표: 다양한 디바이스에서 일관적인 디자인을 보여주기 위해)
    
    
    
    //    // UITableViewDataSource
    //
    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        //return bountyList.count
    //        //        return bountyInfoList.count
    //        return viewModel.numOfBountyInfoList
    //
    //    }
    //
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else{
    //            return UITableViewCell()
    //        }
    
    //        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
    //        cell.update(info: bountyInfo)
    //        return cell
    //    }
    
    // UITableViewDelegate
    
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    //        print("--> \(indexPath.row)")
    //        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    //    }
    //
    //







class BountyViewModel {
    
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 300000000),
        BountyInfo(name: "nami", bounty: 16000000),
        BountyInfo(name: "robin", bounty: 80000000),
        BountyInfo(name: "sanji", bounty: 77000000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted{ prev, next in
            return prev.bounty > next.bounty
        }
        return sortedList
    }
    
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo{
        return sortedList[index]
    }
}



class GridCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func update(info: BountyInfo) {
        imageView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}

