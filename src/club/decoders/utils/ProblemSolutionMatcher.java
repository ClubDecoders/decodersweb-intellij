package club.decoders.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ProblemSolutionMatcher {
	
	private File originalSolution;
	private File submittedSolution;
	
	
	/**
	 * @param originalSolution
	 * @param submittedSolution
	 */
	private ProblemSolutionMatcher(File originalSolution, File submittedSolution) {
		this.originalSolution = originalSolution;
		this.submittedSolution = submittedSolution;
	}


	public static ProblemSolutionMatcher getPSMatcherInstance(File original,File submitted)
	{
		ProblemSolutionMatcher pm = new ProblemSolutionMatcher(original, submitted);
		return pm;
	}
	@SuppressWarnings("resource")
	public String matchSolutions()
	{
		try {
			Scanner scanOrig = new Scanner(originalSolution);
			Scanner scanSubm = new Scanner(submittedSolution);
			while(scanOrig.hasNextLine())
			{
				if(scanOrig.nextLine().equals(scanSubm.nextLine()))
				{
					
				}else
				{
					return "Incorrect";
				}
			}
			if(scanSubm.hasNextLine())
			{
				return "Incorrect";
			}
			return "Correct";
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			return "File Not Found on server!";
		}
	}

}
