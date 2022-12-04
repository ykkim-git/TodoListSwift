//
//  TodoListApp.swift
//  TodoList
//
//  Created by Lorenzo Von Matterhorn on 2022/12/03.
//

import SwiftUI

@main
struct TodoListApp: App {
	
	@StateObject var listViewModel: ListViewModel = ListViewModel()
	
	var body: some Scene {
		WindowGroup {
			NavigationView {
				ListView()
			}
			.environmentObject(listViewModel)
		}
	}
}
