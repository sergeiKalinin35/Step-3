//
//  CourseTableViewCell.swift
//  Step 3
//
//  Created by Sergey on 14.09.2021.
//

import UIKit


class CourseTableViewCell: UITableViewCell {
    
    var viewModel: TableViewCellViewModelProtocol! {
        
        didSet {
            var content = defaultContentConfiguration()
            content.text = viewModel.courseName
            
            guard let imageData = viewModel.imageData else { return }
            content.image = UIImage(data: imageData)
            contentConfiguration = content
        }
    }
    
}
