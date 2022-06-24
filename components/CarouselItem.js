import React from 'react-native'
import { View, StyleSheet, Text, Image, Dimensions } from 'react-native'

const { width, height } = Dimensions.get('window')

const CarouselItem = ({item}) => {
return(
    <View>
        <Image style={styles.images} />
        <View style={styles.textblock}>
            <Text style={styles.text}>
                NewsNewsNewsNewsNews
            </Text>
        </View>

    </View>
)

}