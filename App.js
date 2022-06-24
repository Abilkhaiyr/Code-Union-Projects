import React, { Component } from 'react';
import { View, Text } from 'react-native';
import Index from './navigation/index'
import { NavigationContainer } from '@react-navigation/native';


export default class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }

  render() {
    return (
    
    <Index/>
    );
  }
}
