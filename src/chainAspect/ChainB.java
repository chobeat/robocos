package chainAspect;

public class ChainB implements Chain {

	@Override
	public void handle(String request) {
		System.out.println("B");
	}

}
