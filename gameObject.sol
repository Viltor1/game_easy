pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;
import "IIO.sol";
contract gameObject is IIO {
    uint public Armor;
    uint public Damage;
    uint public Health;

    function getArmor(uint value) virtual public  returns(uint) {  
        tvm.accept();
        Armor= value;
        return(Armor);
    }


    function getAttacked(uint value) virtual external override {
        tvm.accept();
        Health = Health-(value-Armor);
        if (checkIfKilled()){
            sendMoneyAndDestroy(msg.sender);
        }
    }



    function checkIfKilled() private returns (bool) {
        tvm.accept();
        if (Health <= 0 ){
            return true;
        }
        else {
            return false;
        }
    }
    
    function sendMoneyAndDestroy(address _attacker) public{
        tvm.accept();
        _attacker.transfer(1, true, 160);
    }
}
  