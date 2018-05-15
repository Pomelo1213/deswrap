import CryptoJS from 'crypto-js'

# DES加解密
export default (password, key)=> 
  keyHex = CryptoJS.enc.Utf8.parse key
  newpassword = CryptoJS.DES.encrypt password, keyHex, {
    mode: CryptoJS.mode.ECB
    padding: CryptoJS.pad.Pkcs7
  }
  newpassword.ciphertext.toString()
