//
//  ListViewModel.swift
//  TodoList
//
//  Created by Lorenzo Von Matterhorn on 2022/12/04.
//

import Foundation

class ListViewModel: ObservableObject {
	@Published var items: [ItemModel] = []
	
	init() {
		getItems()
	}
	
	func getItems() {
		let newItems = [
			ItemModel(title: "This is the first title!", isCompleted: false),
		 ItemModel(title: "This is the second!", isCompleted: true),
		 ItemModel(title: "Third", isCompleted: false),
	 ]
		items.append(contentsOf: newItems)
	}
	
	func deleteItem(indexSet: IndexSet) {
		items.remove(atOffsets: indexSet)
	}
	
	func moveItem(from: IndexSet, to: Int) {
		items.move(fromOffsets: from, toOffset: to)
	}
	func addItem(title: String) {
		let newItem = ItemModel(title: title, isCompleted: false)
		items.append(newItem)
	}
}
