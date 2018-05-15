import dd from 'ddeyes'
import 'shelljs/make'
import des from '../src'

target.all = =>
  dd 'Hello World!!!'

target.des = =>
  data = des 'hello', '123123'
  dd data
 