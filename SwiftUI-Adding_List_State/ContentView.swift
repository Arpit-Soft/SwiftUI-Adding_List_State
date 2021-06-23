//
//  ContentView.swift
//  SwiftUI-Adding_List_State
//
//  Created by Arpit Dixit on 23/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks = [Task]()
    private func addTask() {
        tasks.append(Task(name: "Buy Groceries"))
    }
    var body: some View {
        VStack {
            Button(action: addTask, label: {
                Text("Add Task")
            })
            List(tasks, id: \.id) { task in
                Text(task.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
