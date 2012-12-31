
public class Test {
	private int a;
	private int b;
	private String c;
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	public static void main(String[] args){
		Test t=new Test();
		t.getA();
		t.getB();
		t.getC();
	}
}
