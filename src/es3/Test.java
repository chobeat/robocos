package es3;

@Singleton
public class Test implements Interfaccia {
	private int a;
	

	public Test(){
		a=1;
	}
	
	public Test(int a){
		this.a=a;
	}
	
	public int a(int b){
		return b+1;
	}
	public int a(int b,int c){
		return b;
	}
	
	public String toString(){
		return String.valueOf(a);
	}
	
	public static void main(String[] args) {
		Test t=new Test(2);
		System.out.println(t.a(5,3));
		System.out.println(t);
		Interfaccia tt=new Test();
		System.out.println(tt);
	}
	
	/* (non-Javadoc)
	 * @see es3.Interfaccia#interfaccia()
	 */
	@Override
	public void interfaccia(){
		System.out.println("faccia");
	}
}
