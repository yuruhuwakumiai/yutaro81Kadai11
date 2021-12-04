//
//  NextViewController.swift
//  yutaro81Kadai11
//
//  Created by 橋元雄太郎 on 2021/12/02.
//

import UIKit

class NextViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private (set) var selectedPrefectureName: String?
    private let placeData = ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                             "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                             "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
                             "富山県", "石川県", "福井県", "山梨県", "長野県",
                             "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                             "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                             "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                             "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                             "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                             "鹿児島県", "沖縄県"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        placeData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable:next force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath ) as! TableViewCell
        cell.configure(name: placeData[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        exitBySegue(prefectureName: placeData[indexPath.row])
    }

    private func exitBySegue(prefectureName: String) {
        selectedPrefectureName = prefectureName
        performSegue(withIdentifier: "first", sender: self)
    }
}
