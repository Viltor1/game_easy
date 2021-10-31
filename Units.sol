pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;
import "gameObject.sol";

contract Units is gameObject {
    function getArmor(uint value) virtual public override returns(uint) { 
        tvm.accept(); 
        Armor= value;
        return(Armor);
    }


    function getDamage(uint value) virtual public  returns(uint){
        tvm.accept();
        Damage = value;
        return(Damage);
    }

    function showHealth() public returns(uint){
        return(Health);
    }
    function getHealth(uint value) virtual public returns(uint){
        tvm.accept();
        Health = value;
        return(Health);
        }

    function death(address attacker) public{
        tvm.accept();
        sendMoneyAndDestroy(msg.sender);

    }
    function attackUnit(IIO addIIO) public{ 
        tvm.accept();
        addIIO.getAttacked(Damage);
    }
}