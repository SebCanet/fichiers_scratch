package arduinoIHM.tool;

import processing.app.Editor;
//import processing.app.tools.Tool;
import java.io.File;
import java.io.IOException;
import java.net.URL;

public class ArduinoIHM implements Tool {
   
  Editor arg0;
  
   public String getMenuTitle() {
        return "Arduino IHM";
    }

    public void init(Editor arg0) {
      this.arg0 = arg0;
    }

    public void run() {
        Runtime rt = Runtime.getRuntime();
        try {
            String dir = this.getClass().getClassLoader().getResource(".").getFile();
            Process ps = rt.exec(String.valueOf(dir.replaceAll("%20", " ")) + "..\\tools\\ArduinoIHM\\tool\\Arduino IHM\\Arduino IHM.exe", null, new File(String.valueOf(dir.replaceAll("%20", " ")) + "..\\tools\\ArduinoIHM\\tool\\Arduino IHM"));
            ps.waitFor();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
