import CryptoJS from 'crypto-js'

# DES加密
export encryptByDES = (password, key)=> 
  keyHex = CryptoJS.enc.Utf8.parse key
  newpassword = CryptoJS.DES.encrypt password, keyHex, {
    mode: CryptoJS.mode.ECB
    padding: CryptoJS.pad.Pkcs7
  }
  newpassword.ciphertext.toString()

#DES解密
export decryptByDES = (encryptString, key) =>
  keyHex = CryptoJS.enc.Utf8.parse key
  originpassword = CryptoJS.DES.decrypt {
    ciphertext: CryptoJS.enc.Hex.parse encryptString
  }
  , keyHex
  , {
    mode: CryptoJS.mode.ECB
    padding: CryptoJS.pad.Pkcs7
  }
  originpassword.toString CryptoJS.enc.Utf8
