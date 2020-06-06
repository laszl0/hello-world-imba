const _ = require 'lodash'
import {hello} from './style.css'

const store = {
	msg: "Hello world imba"
}

tag App
	def computeMsg msg
		return _.join([msg, '!!!'], ' ')

	def render
		<self.hello>
			<div> computeMsg(data:msg)

Imba.mount <App[store]>