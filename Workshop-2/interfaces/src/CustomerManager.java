public class CustomerManager {

    private ICostomerDal costomerDal;
    public CustomerManager (ICostomerDal costomerDal){
        this.costomerDal = costomerDal;
    }
    public void add(){
        costomerDal.add();
    }
}
