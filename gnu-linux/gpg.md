Gnu Privacy Guard ❤️

### generating key 
``` shell
gpg --full-generate-key
```

just follow instruction to make the key you want, choose algorithm and key size wisely, also choose a good comment for your key alongside your full name and email. **note** that if you use this key for any of your accounts (GitHub etc), you must verify that email used for generating the key.

### listing existing keys on machine
``` shell
gpg --list-secret-keys
```
this lists every key on machine **but dose not show key-id**. for listing keys with their associated key-ids you should add `--keyid-format <FORMAT>`. some formats are listed below for more details:
- none: (default) dose not show the key-id
- short: 8-character id
- long: 16-character id (good one to use if you ask me)

### verification key
a public key will be used for verification and can be exported using below command:
``` shell
gpg gpg --armor --export <KEY>
```

> the `<KEY>` argument can be the associated **email** or the specific **key-id**

