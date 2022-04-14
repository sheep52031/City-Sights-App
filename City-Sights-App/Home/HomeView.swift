//
//  HomeView.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/12.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model:ContentModel
    @State var isMapShowing = false
    
    
    var body: some View {
        
        if model.restaurants.count != 0 || model.sights.count != 0 {
     
            NavigationView{
                
                //Determine if we should show list or map
                if !isMapShowing{
                    //Show list
                    
                    VStack(alignment: .leading){
                        
                        HStack{
                            Image(systemName: "location")
                            Text("TaiWan")
                            Spacer()
                            Text("Switch to map view")
                        }
                        Divider()
                        
                        BusinessList()
                       
                    }.padding([.horizontal,.top])
                     .navigationBarHidden(true)
                }
                
                
                else{
                    //Show map mode
                     
                }
            }
            
            
            
            
            
        }
        else{
            //Still waiting for data so show spinner
            ProgressView()
            
        }
        
    




    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
