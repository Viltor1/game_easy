pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;
import "Units.sol";
contract Warrior is Units {
    constructor (uint Armor,uint Damage,uint Health) public{
        getHealth(Health);
        getArmor(Armor);
        getDamage(Damage);
    }

    function getArmor(uint value)virtual public override returns(uint)  { 
        tvm.accept();
        Armor = value;
        return(Armor);
    }
    

    function getDamage(uint value)  public override returns(uint){
        tvm.accept();
        Damage = value;
        return(Damage);
    }

}