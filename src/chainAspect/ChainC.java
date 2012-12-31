package chainAspect;

public class ChainC implements Chain {

	@Override
	public void handle(String request) {
		System.out.println("C");
	}

}
