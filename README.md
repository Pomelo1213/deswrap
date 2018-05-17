### des加密/解密
--------------------------
install as project dependency
```
yarn add deswrap
```

Then you can use like this
```
const { encryptByDES, decryptByDES } = require('deswrap')

var message = "hello"
var key = "123"

var encrypt = encryptByDES(message, key)

var decrypt = decryptByDES(encrypt, key)

console.log(encrypt)
console.log(decrypt)

```


