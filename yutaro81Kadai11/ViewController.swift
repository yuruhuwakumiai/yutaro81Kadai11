//
//  ViewController.swift
//  yutaro81Kadai11
//
//  Created by 橋元雄太郎 on 2021/12/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var resultLabel: UILabel!

    @IBAction private func exit(segue: UIStoryboardSegue) {
    }

    @IBAction private func exitDone(segue: UIStoryboardSegue) {
        let nextVC = segue.source as? NextViewController
        resultLabel.text = nextVC?.selectedPrefectureName
    }
}
