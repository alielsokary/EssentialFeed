//
//  ImageCommentsCellController.swift
//  EssentialFeediOS
//
//  Created by Ali Elsokary on 09/10/2023.
//

import UIKit
import EssentialFeed

public class ImageCommentCellController: CellController {

    private let model: ImageCommentViewModel

    public init(model: ImageCommentViewModel) {
        self.model = model
    }

    public func view(in tableView: UITableView) -> UITableViewCell {
        let cell: ImageCommentCell = tableView.dequeueReusableCell()
        cell.messageLabel.text = model.message
        cell.dateLabel.text = model.date
        cell.usernameLabel.text = model.username
        return cell
    }
    
    public func preload() {
        
    }
    
    public func cancelLoad() {
        
    }
    
    
}
