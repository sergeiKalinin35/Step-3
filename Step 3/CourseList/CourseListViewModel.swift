//
//  CourseListViewModel.swift
//  Step 3
//
//  Created by Sergey on 14.09.2021.
//

import Foundation

protocol CourseListViewModelProtocol: AnyObject {
    
    var courses: [Course] { get }
    func fetchCourses(completion: @escaping() -> Void)
    func numberOfRows() -> Int
    func cellViewModel(at indexPath: IndexPath) -> TableViewCellViewModelProtocol?
    
}

class CourseListViewModel: CourseListViewModelProtocol {
    var courses: [Course] = []
    
    func fetchCourses(completion: @escaping () -> Void) {
        NetworkManager.shared.fetchData { courses in
            self.courses = courses
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    func numberOfRows() -> Int {
        courses.count
    }
    
    func cellViewModel(at indexPath: IndexPath) -> TableViewCellViewModelProtocol? {
        let course = courses[indexPath.row]
        return TableViewCellViewModel(course: course)
    }
}


