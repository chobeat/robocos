package chainAspect;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Chain a=new ChainA(),b=new ChainB(),c=new ChainC();
		a.init("a", b);
		b.init("b", c);
		c.init("c");
		a.handle("b");
	}

}
