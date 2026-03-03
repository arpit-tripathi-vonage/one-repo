# Basics

***table of contents***
- TOC
{:toc}

---

- [Http](http)


# Encoding vs Hashing vs Encryption

## Encoding

```
what is encoding?
>> what%20is%20encoding%3F
```

URLs are allowed to have limited number of characters, ` ` (space) and `?` are not one of that.  
This transformation of data to another form for the purpose of storage or transmission is called encoding.  
Many other options for encoding - binary, hexadecimal, base64, UTF-8 

> Encoding is reversible, anyone can decode %20 to space (' ')
> It is about data representation and not security

**Other usecases**
- color names is css as Hexadecimal instead of rgb

## Hashing

A Process to convert data into another irreversible form by using a Hashing Algorithm.

- Passwords are never stored in DB in plaintext
- They are converted to other form using `Hashing`
- It is impossible to revert from hashed value to plaintext.
- Entered password is hashed again and compared with the stored hashed value.
- Examples : SHA-256, BCrypt, Argon2

Main Features of Hashing
- Irreversible : Hashing is one-way
- Deterministic : Same input always produces the same hash
- Fixed Length : Output is always of the same size

Other Usecases
- Store password in DB
- Downloaded file validation - corrupted file will have different hash value

## Encryption

- Two way conversion only if user has the key
- otherwise some junk data is presented
- Example : AES, RSA
- Famous example from history - Caesar's Cipher/Shift Cipher
  - shift each alphabet by fixed position, say 3 (A -> D)


# Encryption
Essentially an art of hiding information

- Hashing (SHA 2): 
- Symmetric Encryption - Same key used for encryption and decryption of data (AES)
- Asymmetric Encryption - Private key used for encryption, but public key used for decryption of data (RSA 256)

## SHA 2
Hashing is a one-way transformation
SHA 256 - 256 bits
- same input results in same output everytime
- hashing used when you download software by using SHA 256 checksum
- also used to save passsword in database instead of plain text
- 

# Symmetric Encryption - AES
- components
  - key
  - IV (initialization vector) : makes sure every encryption looks different even if same key and message is used, usecase: messaging app in case someone sends same message twice
  - Mode : AES works on chunks of data, mode decides how to handle messages longer than 1 block.
    - CBC : Cyber Blockchaining - each block of data mixed with previous block to hide patterns
    - EBC : encrypts each block separately, meaning identical plain text equals identical cipher text. Attackers can spot pattern easily so it's outdated and not used much.
    - CTR : used in Network traffic
    - GCM : popular for web encryption
  - 


# API Protocols Explained: When to Use HTTP, WebSockets, gRPC & More

- [API Protocols Explained: When to Use HTTP, WebSockets, gRPC & More](https://www.youtube.com/watch?v=lcPcyNAEZgo){:target="_blank"}