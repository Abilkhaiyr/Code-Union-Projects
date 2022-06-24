import { genericTypeAnnotation } from '@babel/types';
import clone from 'clone';
import React, { Component } from 'react';
import { View, Text, Dimensions, ImageBackground, StyleSheet, Image, FlatList, Button, ScrollView } from 'react-native';
import { TouchableOpacity } from 'react-native-gesture-handler';
import Carousel from 'react-native-snap-carousel';

const {width, height}=Dimensions.get('window')




export default class Tab1 extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }

  

  renderItem=({item,index})=>(
    <View style={{flex:1, }}>
      <ImageBackground source={require('../../assets/HomePage/bg.png')} style={styles.backgroundPhoto}>

    </ImageBackground>
    </View>
  )

  renderStories=({item,index})=>(
    <View style={{marginLeft: 35}}>
     
      <View style={{width:70,aspectRatio:1, borderRadius:40,backgroundColor:'#fff', alignItems: 'center', justifyContent: 'center'}}> 
         <View>
          <Image source={require('../../assets/Stories/Ellipse.png')}/>
         </View>
      </View>
    
        <View style={{alignItems: 'center'}}>
          <Text style={{color: '#fff'}}>John Doe</Text>
        </View>
    </View>
  )

  render() {
    return (
      <View style={{flex:1,backgroundColor:'#fff'}}>
        <ScrollView>
        <Carousel
        data={[1,2,3]}
        horizontal
        showsHorizontalScrollIndicator={false}
        itemWidth={width}
        sliderWidth={width}
        itemHeight={height/2}
        sliderHeight={height/2}
        renderItem={this.renderItem}
        />
        <View style={{    position: 'absolute'}}>
{/* string */}
    <View style={styles.container}>
          <View style={{width: 30, height: 30}}>
              <Image source={require('firstApp/assets/HomePage/cats.png')}/>
          </View>
      <View/>
      <View/>
          <View style={{width: 30, height: 30}}>
              <Image source={require('firstApp/assets/HomePage/bugin.kz.png')}/>
          </View>
      <View/>
      <View/>
          <View style={{width: 30, height: 30}}>
              <Image source={require('firstApp/assets/HomePage/phone.png')}/>
          </View>
    </View>
{/* string */}
           <View style={styles.storiesList}>
              <FlatList 
              data={[1,2,3,4,5,6,7,8,9]}
              horizontal
              showsHorizontalScrollIndicator={false}
              keyExtractor={(item,index)=>index.toString()}
              renderItem={this.renderStories}
              />
              
        </View>
           </View>
           <View style={styles.recs}>
             <View style={styles.rec1}/>
             <View style={styles.rec2}/>
             <View style={styles.rec3}/>
           </View>
{/* newnewnewnew */}
<View style={{flex:1}}>
     <View style={{justifyContent:'space-around', flexDirection: 'row', alignItems: 'center'}}>
  <View style={{flexDirection: 'row', justifyContent: 'center', alignItems: 'center'}}>  
           <View style={{backgroundColor: '#F0F1F7', width: 67, height: 30, borderRadius: 10,paddingTop:5, marginRight: 6}}>
             <Text style={{textAlign: 'center', lineHeight: 18, fontSize: 14}}>Barlyq</Text>
           </View>
           <View>
           <TouchableOpacity style={{backgroundColor: 'blue', height: 18}}>
             <Text style={{fontSize: 18, lineHeight: 18}}>Menin tandauym</Text>
             </TouchableOpacity>
           </View>
  </View>
      <View/><View/><View/>
           <View>
           <Image source={require('../../assets/icons/Settings.png')} style={{width: 24, height: 24}}/>
           </View>
      </View>
      </View>
      <FlatList
      data={[{name:"Alish",id:1},{name:"Arman",id:2},{name:"Muha",id:3}]}
      keyExtractor={(item,index)=>index.toString()}
      renderItem={({item,index})=>(
      <View style={{ paddingTop: 20}}>
              <ImageBackground source={require('../../assets/NewsPhoto/bg.png')} style={{height: 200}}/>
          <View style={{padding: 15}}>
             <View>
                <Text style={{fontSize: 25, letterSpacing: 0.3}}>{item.name}</Text>
             </View>
             <View style={{flexDirection: 'row', alignItems: 'center'}}>

               <View>
                  <Text style={{fontSize: 14, color: '#8D8F9B'}}>Keshe</Text>
               </View>

                  <Image source={require('../../assets/icons/line.png')} style={{marginLeft: 17}}/>
                  <Image source={require('../../assets/icons/Vector.png')} style={{marginLeft: 17}}/>
                  <Text style={{color: '#8D8F9B', marginLeft: 8}}>0</Text>
                  <Image style={{marginLeft: 25}} source={require('../../assets/icons/Followers.png')}/>

               <View>
                  <Text style={{color: '#8D8F9B', marginLeft: 4}}>12452</Text>
               </View>
             </View>
          </View>
      </View>
      )}
      />
        <View style={{ paddingLeft: 20, paddingTop: 30, paddingBottom: 30}}>
              <TouchableOpacity style={{width: 345, height: 60, backgroundColor: '#E5E5E5', alignItems: 'center', flexDirection:'row', justifyContent: 'space-evenly'}}>
                <View style={{}}>
                     <Text style={{fontSize: 20, marginLeft: 50}}>Kobirek Zhukteniz</Text>
                </View>
                 <View>
                    <Image source={require('../../assets/icons/refresh.png')} style={{width: 22, height: 22}}/>
                </View>        
              </TouchableOpacity>
              <View style={{height: 100}}/>
        </View>
      </ScrollView>
  </View>
   
    
    );
  }
}

const styles = StyleSheet.create({
  backgroundPhoto: {
    height: height / 2,
  },
  container:{
    width: '100%',
    height: 105,
    alignItems: 'center',
    justifyContent: 'space-evenly',
    flexDirection: 'row'
  },
  storiesList:{
   
  },
  recs:{
    position: 'absolute',
    height: height / 2,
    width: '100%',
    justifyContent: 'flex-end',
  }, 
  rec1: {
    height: 5,
    width: 315,
    left: 30,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderTopLeftRadius: 15,
    borderTopRightRadius: 15, 
  },
  rec2: {
    height: 5,
    width: 345,
    left: 15,
    backgroundColor: 'rgba(255, 255, 255, 0.2)',
    borderTopLeftRadius: 15,
    borderTopRightRadius: 15,
  },
  rec3:{
    height: 15,
    width: '100%',
    backgroundColor: '#FFFFFF',
    borderTopLeftRadius: 15,
    borderTopRightRadius: 15,
  },

 
 });

