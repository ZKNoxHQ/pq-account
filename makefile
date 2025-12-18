CORES := $(shell nproc)

install: 
	foundryup
	forge install ZKNOXHQ/ETHDILITHIUM ./lib/ETHDILITHIUM
	forge install eth-infinitism/account-abstraction ./lib/account-abstraction
	forge install OpenZeppelin/openzeppelin-contracts ./lib/openzeppelin-contracts

test_opt:
	forge test -j$(CORES) -vv

test_not_opt:
	FOUNDRY_PROFILE=lite forge test -j$(CORES) -vv

