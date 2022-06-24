import React, {Component} from 'react';
import { ImageBackground, StyleSheet, Text, View, Image, Animated } from 'react-native';

 class Splash extends Component {
  constructor(props){
    super(props);
    this.state = {}
}
componentDidMount(){
  setTimeout(() => {
  this.props.navigation.replace('TabStack')
  }, 1500)
}
 render(){
  return(
    <ImageBackground source={require('firstApp/assets/Rectangle.png')} style={styles.backgroundPhoto}>
      <View style={styles.container}>
       <View/>
          <Image source={require('firstApp/assets/HomePage/bugin.kz.png')} style={styles.logoImage}/>
          <Text style={{color:'#fff'}}>FROM BUGINHOLDING</Text>
      </View>
    </ImageBackground>

  )
  }
 }

const styles = StyleSheet.create({
 backgroundPhoto: {
   flex: 1,
 },
 logoImage: {
  width: 71.9,
  height: 71.9,
},
container:{
  justifyContent:'space-between',
   alignItems:'center',
   paddingVertical: 60,
   flex:1,
   backgroundColor:'rgba(29, 50, 168, 0.4)',
}

});

export default Splash;