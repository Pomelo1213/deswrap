import dd from 'ddeyes'
import 'shelljs/make'
import {encryptByDES, decryptByDES} from '../src'

target.all = =>
  dd 'Hello World!!!'

target.enc = =>
  data = encryptByDES 'hello', '123123'
  dd data
 
target.dec = =>
  enc = encryptByDES 'hello', '123123'
  data = decryptByDES enc, '123123'
  dd data