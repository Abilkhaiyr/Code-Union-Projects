import React, { Component } from 'react';
import { View, Text, Image, StyleSheet } from 'react-native';
import Tab1 from '../screens/FolderTab1/Tab1'
import Tab2 from '../screens/FolderTab2/Tab2'
import Tab3 from '../screens/FolderTab3/Tab3'
import Tab4 from '../screens/FolderTab4/Tab4'
import Tab5 from '../screens/FolderTab5/Tab5'

import Splash from '../screens/Splash'
import { NavigationContainer } from '@react-navigation/native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { createStackNavigator } from '@react-navigation/stack';

const Bottom = createBottomTabNavigator();

function TabStack(){
 return(
   <Bottom.Navigator  screenOptions={{
     showLabel: false,
     tabBarStyle:[{
       position: 'absolute',
     borderTopLeftRadius: 25,
     borderTopRightRadius: 25,
     elevation: 0,
     height: 75,
     }]
   }}>
    <Bottom.Screen name="Tab1" component={Tab1} options={{
      headerShown: false,
      tabBarShowLabel: false,
      tabBarIcon: ({focused}) => (
     <View>
       <Image source={require('../assets/icons/home.png')}/>
         
     </View>
      ),
      }}/>
    <Bottom.Screen name="Tab2" component={Tab2} options={{
      headerShown: false,
      tabBarShowLabel: false,
      tabBarIcon: ({focused}) => (
        <View>
          <Image source={require('../assets/icons/search.png')}/>
            
        </View>
         ),
    }}/>
   <Bottom.Screen name="Tab3" component={Tab3} options={{
      headerShown: false,
      tabBarShowLabel: false,
      tabBarIcon: ({focused}) => (
        <View>
          <Image source={require('../assets/icons/plus-border.png')}/>
            
        </View>
         ),
    }}/>
    <Bottom.Screen name="Tab4" component={Tab4} options={{
      headerShown: false,
      tabBarShowLabel: false,
      tabBarIcon: ({focused}) => (
        <View>
          <Image source={require('../assets/icons/notification.png')}/>
            
        </View>
         ),
    }}/>
    <Bottom.Screen name="Tab5" component={Tab5} options={{
      headerShown: false,
      tabBarShowLabel: false,
      tabBarIcon: ({focused}) => (
        <View>
          <Image style={styles.profile} source={require('../assets/icons/profile.png')}/>
            
        </View>
         ),
    }}/>
   </Bottom.Navigator>
 )
}

const Stack = createStackNavigator();

function Index() {
  return (
    <NavigationContainer>
     <Stack.Navigator>
     <Stack.Screen options={{headerShown: false}} name="Splash" component={Splash}/>
      <Stack.Screen options={{headerShown: false}} name="TabStack" component={TabStack}/>
     </Stack.Navigator>
    </NavigationContainer>
  );
}
const styles = StyleSheet.create({
  profile:{
  width: 30,
  height: 30,
  }
});


export default Index;