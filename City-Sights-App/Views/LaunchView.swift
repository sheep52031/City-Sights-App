//
//  ContentView.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/12.
//

import SwiftUI
import CoreLocation

struct LaunchView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        //Detect the authorization status of geolocating the user
        
        if model.authorizationState == .notDetermined{
            //If undetermind, show onboarding
            OnboardingView()
        }
        else if model.authorizationState == CLAuthorizationStatus.authorizedAlways||model.authorizationState == CLAuthorizationStatus.authorizedWhenInUse{
            //If approved , show home view
            HomeView()
        }
        else{
            //If  denied show denied view
            LocationDeniedView()
        }
        
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
