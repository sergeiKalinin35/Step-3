//
//  TableViewCellViewModel.swift
//  Step 3
//
//  Created by Sergey on 14.09.2021.
//

import Foundation

protocol TableViewCellViewModelProtocol {
    
    var courseName: String { get }
    var imageData: Data? { get }
    
    init(course:Course)
}


class TableViewCellViewModel: TableViewCellViewModelProtocol {
    
    var courseName: String {
        
        course.name ?? ""
    }
    
    var imageData: Data? {
        
        ImageManager.shared.fetchImageData(from: course.imageUrl)
    }
    
    private let course: Course
    
    required init(course: Course) {
        self.course = course
    }
    
}






