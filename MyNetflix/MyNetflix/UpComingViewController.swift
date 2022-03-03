//
//  UpComingViewController.swift
//  MyNetflix
//
//  Created by 이승후 on 2022/03/03.
//  Copyright © 2022 com.joonwon. All rights reserved.
//

import UIKit

class UpComingViewController: UIViewController {
    
    var awardRecommendListViewController: RecommendListViewController!
    var hotRecommendListViewController: RecommendListViewController!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "award" {
            let destinationVC = segue.destination as? RecommendListViewController
            awardRecommendListViewController = destinationVC
            awardRecommendListViewController.viewModel.updateType(.award)
            awardRecommendListViewController.viewModel.fetchItems()
        } else if segue.identifier == "hot" {
            let destinationVC = segue.destination as? RecommendListViewController
            hotRecommendListViewController = destinationVC
            hotRecommendListViewController.viewModel.updateType(.hot)
            hotRecommendListViewController.viewModel.fetchItems()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
