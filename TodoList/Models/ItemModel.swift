//
//  ItemModel.swift
//  TodoList
//
//  Created by Lorenzo Von Matterhorn on 2022/12/04.
//

import Foundation

struct ItemModel: Identifiable {
	let id: String = UUID().uuidString // rendom id
	let title: String
	let isCompleted: Bool
}
