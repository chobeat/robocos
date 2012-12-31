package chainAspect;

public class ChainA implements Chain {

	@Override
	public void handle(String request) {
		System.out.println("A");
	}

}
