# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.ts
```

# Solution

I provided multiple solutions, and written gas usage for every one of it. Final solution is ->

```js
// ! 27279 - Do While
    // //////////////////////////////////////////////////////////////////////////////////////////////////////
    function loop() public pure {
        unchecked {
            uint256 i = 0;
            do {
                doStuff(i);
                ++i;
            } while (i < 100);
        }
    }
```

There are also more gas efficient solutions commented out, because I am not sure that some of them would be valid solutions for the task.
