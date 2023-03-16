# Run tests
## Swanky (WASM)
Initialize swanky project:
```sh
swanky init flipper
```

Then answer as following for the prompts:  
```sh
? Which contract language should we use? ink  
? Which contract template should we use initially? flipper  
? What should we name your initial contract? flipper  
? What is your name?  
? What is your email?  
? Do you want to download Swanky node? Yes  
```

After that, go into the flipper directory:  
```sh
cd flipper
```

Compile contracts:  
```sh
swanky contract compile flipper
```

Start swanky node:  
```sh
swanky node start
```

Now we can test the contract with by launching new terminal and typing:  
```sh
swanky contract test flipper
```

Done! You should see something like  

```sh
flipper test  
  ✔ Sets the initial state  
  ✔ Can flip the state  

2 passing (573ms)  
```
## Hardhat (EVM)
Create hardhat project directory:  
```sh
mkdir hardhat && cd hardhat
```

Initiate test hardhat project:  

```sh
npx hardhat init
```

Then answer for the following prompts with  

```sh
888    888                      888 888               888
888    888                      888 888               888
888    888                      888 888               888
8888888888  8888b.  888d888 .d88888 88888b.   8888b.  888888
888    888     "88b 888P"  d88" 888 888 "88b     "88b 888
888    888 .d888888 888    888  888 888  888 .d888888 888
888    888 888  888 888    Y88b 888 888  888 888  888 Y88b.
888    888 "Y888888 888     "Y88888 888  888 "Y888888  "Y888

👷 Welcome to Hardhat v2.13.0 👷‍  

✔ What do you want to do? · Create a TypeScript project  
✔ Hardhat project root: · ./  
✔ Do you want to add a .gitignore? (Y/n) · y  
✔ Do you want to install this sample project's dependencies with npm (hardhat @nomicfoundation/hardhat-toolbox)? (Y/n) · y  
```

Now let&rsquo;s test it!  
```sh
npx hardhat test
```

You should see something like  
```sh
Downloading compiler 0.8.18  
Compiled 1 Solidity file successfully  

Lock  
  Deployment  
    ✔ Should set the right unlockTime (637ms)  
    ✔ Should set the right owner  
    ✔ Should receive and store the funds to lock  
    ✔ Should fail if the unlockTime is not in the future  
  Withdrawals  
    Validations  
      ✔ Should revert with the right error if called too soon  
      ✔ Should revert with the right error if called from another account  
      ✔ Shouldn't fail if the unlockTime has arrived and the owner calls it  
    Events  
      ✔ Should emit an event on withdrawals  
    Transfers  
      ✔ Should transfer the funds to the owner  

9 passing (724ms)  
```
