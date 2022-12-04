//
//  AddView.swift
//  TodoList
//
//  Created by Lorenzo Von Matterhorn on 2022/12/03.
//

import SwiftUI

struct AddView: View {
	@Environment(\.presentationMode) var presentationMode
	@EnvironmentObject var listViewModel: ListViewModel
	@State var textFieldText: String = ""
	
    var body: some View {
			ScrollView {
				VStack {
					TextField("Type something here...", text: $textFieldText)
						.background()
						.padding(.horizontal)
						.frame(height: 55)
						.cornerRadius(50)
					
					Button(action: saveButtonPressed, label : {
						Text("Save".uppercased())
							.foregroundColor(.white)
							.frame(height: 55)
							.frame(maxWidth: .infinity)
							
							.background(Color.accentColor)
							.cornerRadius(15)
					})
				}
				.padding(14)
			}
			.navigationTitle("✏️할 일 추가")
    }
	
	func saveButtonPressed() {
		listViewModel.addItem(title: textFieldText)
		presentationMode.wrappedValue.dismiss()
	}
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
			NavigationView {
				AddView()
			}
			.environmentObject(ListViewModel())
    }
}
