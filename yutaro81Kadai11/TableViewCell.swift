//
//  TableViewCell.swift
//  yutaro81Kadai11
//
//  Created by 橋元雄太郎 on 2021/12/02.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak private var label: UILabel!

    func configure(name: String) {
        label.text = name
    }
}
