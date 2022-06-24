import React, { Component } from 'react';
import {StyleSheet, TextInput, View} from 'react-native';



export default class Tab2 extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }
  
 
  render() {
    return (
    <View style={{backgroundColor: 'red'}}>
      <TextInput style={{backgroundColor: '#F9F9FD'}} placeholder='Sizge neni izdeu kerek?'>
      
      </TextInput>
    </View>
    );
  }
  
}
const styles = StyleSheet.create({
  input: {
    height: 40,
    margin: 12,
    borderWidth: 1,
    padding: 10,
  },
});



