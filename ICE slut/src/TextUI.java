import java.util.Scanner;
import static java.sql.DriverManager.println;

public class TextUI {
    public Scanner keyboard = new Scanner(System.in);

    //Sets header, choices and footer on standardmenu
    public int standardMenu(String header, String[] choices, String footer){
        System.out.println(header);
        int count = 0;
        for(String s : choices){
            ++count;
            System.out.println(count + " : " + s);
        }
        System.out.println(footer);
        return getInteger(1, count)-1;
    }

    //Makes sure that you pick correct number in day menu
    public int getInteger(int min, int max)
    {
        if(min > max)
        {
            throw new IllegalArgumentException("min > max, min: " + min + " max:" + max);
        }
        while(true)
        {
            int res = getInteger();
            if(res >= min && res <= max)
            {
                return res;
            }
            println("You must enter an integer between " + min + " and " + max + ", both inclusive.");
        }
    }

    //Makes sure that you pick a number in day menu
    public int getInteger()
    {
        while(true)
        {
            String input = get();
            try
            {
                return Integer.parseInt(input);
            }
            catch(NumberFormatException exp)
            {
                println("You must enter an integer!");
            }
        }
    }

    //Makes the insert line after the menu
    public String get()
    {
        System.out.print("\n>");
        return keyboard.nextLine();
    }
}

