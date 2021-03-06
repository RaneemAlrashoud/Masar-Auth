//
//  noView.swift
//  Masar
//
//  Created by Raneem AlRashoud on 15/12/1443 AH.
//

import SwiftUI


struct TestView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
    
  
      
            
          
            ZStack {
                HStack {
                    Spacer()
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                                        withAnimation(.easeInOut){
                                          
                                        }
                                    }, label: {
                                        Image(systemName: "chevron.right")
                                             .foregroundColor(.white)
                                             .padding(.vertical,10)
                                             .padding(.horizontal)
                                            // .background(Color.black.opacity(0.4))
                                             .background(Color("Kcolor"))
                                             .cornerRadius(10)
                                }).padding(.horizontal,25)
                }
                .padding(.top,-375)
              //  Color("AppIcon").edgesIgnoringSafeArea(.all) // THIS
              Image("Masar-1").resizable().aspectRatio( contentMode: .fit)
                    .padding(.top, -100)
          
                HStack{
                    
                    Text("الموقع الحالي ليس بقائمة المواقع المسجلة لدينا")
                          .font(Font.custom("Almarai-Bold", size: 20))
                   
                   
                        
                          .foregroundColor(Color.black.opacity(0.6))
                          .padding(.top,350)
                }
                 
                     
                      
              
              
            }
            
            
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
                .navigationBarHidden(true)
        
        
    }
}

struct NoLocation_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
      
    }
}

