//
//  TaskController.swift
//  Task
//
//  Created by Diego Aguirre on 2/16/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class TaskController {
    
    static let sharedController = TaskController()
    
    private var task: [Task] = []
    
    init () {
        task = mockTasks
    }
    
    var completedTasks: [Task] {
        return task.filter({$0.isComplete.boolValue
        })
    }
    
    var incompleteTasks: [Task] {
        return task.filter({!$0.isComplete.boolValue})
    }
    
    func addTask(newTask: Task) {
        task.append(newTask)
    }
    
    func removeTask(indexPath: NSIndexPath) {
        task.removeAtIndex(indexPath.row)
    }
    
    var mockTasks: [Task] {
        
        let task1 = Task(name: "Retika", notes: "from India", due: NSDate(), isComplete: false)
        let task2 = Task(name: "Youcef", notes: "ladies man", due: NSDate(), isComplete: true)
        let task3 = Task(name: "Diego", notes: "making it happen", due: NSDate(), isComplete: false)
        
        let allTasks = [task1, task2, task3]
        
        return allTasks
    }
    
}



















