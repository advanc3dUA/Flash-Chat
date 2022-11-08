//
//  ChatVC+TableViewDataSource.swift
//  Flash Chat iOS13
//
//  Created by Yuriy Gudimov on 08.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = messages[indexPath.row].body
        return cell
    }
    
    
}
