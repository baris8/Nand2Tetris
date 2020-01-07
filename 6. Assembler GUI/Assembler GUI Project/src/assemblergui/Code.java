package assemblergui;

public class Code {
    private String assemblyLine;
    SymbolTable st;
    
    
    public Code(String assembly, SymbolTable tst){
        assemblyLine = assembly;
        st = tst;
    }
    

    //Liefert Compare
    public String comp(){
        String out = "111";
        if(assemblyLine.contains("=")){
            String comp = assemblyLine.split("=")[1];
            out += compute(comp);
        }else{
            String comp = assemblyLine.split(";")[0];
            if(comp.equals("D")){   return out + "0001100";   }
            if(comp.equals("A")){   return out + "0110000";   }
            if(comp.equals("M")){   return out + "1110000";   }
            if(comp.equals("0")){   return out + "0101010";   }
        }
        return out;
    }
    
    //HartCodierte Tabelle der C-Instruktionen comp Teil
    private String compute(String comp){
        String out = "";
        if(comp.contains("M")){
                out += "1";
                if(comp.equals("M")) { return out + "110000"; }
                if(comp.equals("!M")) { return out + "110001"; }
                if(comp.equals("-M")) { return out + "110011"; } 
                if(comp.equals("M+1")) { return out + "110111"; } 
                if(comp.equals("M-1")) { return out + "110010"; } 
                if(comp.equals("D+M")) { return out + "000010"; } 
                if(comp.equals("D-M")) { return out + "010011"; } 
                if(comp.equals("M-D")) { return out + "000111"; } 
                if(comp.equals("D&M")) { return out + "000000"; }
                if(comp.equals("D|M")) { return out + "010101"; }
            }else{  
                out += "0"; //Comp-Teil enthält kein M
                if(comp.equals("0")) { return out + "101010"; }
                if(comp.equals("1")) { return out + "111111"; }
                if(comp.equals("-1")) { return out + "111010"; } 
                if(comp.equals("D")) { return out + "001100"; } 
                if(comp.equals("A")) { return out + "110000"; } 
                if(comp.equals("!D")) { return out + "001101"; } 
                if(comp.equals("!A")) { return out + "110001"; } 
                if(comp.equals("D+1")) { return out + "011111"; } 
                if(comp.equals("A+1")) { return out + "110111"; }
                if(comp.equals("D-1")) { return out + "001110"; }
                if(comp.equals("A-1")) { return out + "110010"; }
                if(comp.equals("D+A")) { return out + "000010"; } 
                if(comp.equals("D-A")) { return out + "010011"; } 
                if(comp.equals("A-D")) { return out + "000111"; } 
                if(comp.equals("D&A")) { return out + "000000"; } 
                if(comp.equals("D|A")) { return out + "010101"; }
            }
        return out;
    }
    
    //Liefert Destination-Teil
    public String dest(){
        String out = "";
        if(assemblyLine.contains("=")){
            String dest = assemblyLine.split("=")[0];
            if(dest.contains("A")){ out += "1"; } else {  out += "0";  }
            if(dest.contains("D")){ out += "1"; } else {  out += "0";  }
            if(dest.contains("M")){ out += "1"; } else {  out += "0";  }
        }else{
            return "000";
        }
        return out;
    }
    
    //liefer Jump-Teil
    public String jump(){
        if(assemblyLine.contains(";")){
            String jump = assemblyLine.split(";")[1];
            if(jump.equals("JGT")){   return "001";   }
            if(jump.equals("JEQ")){   return "010";   }
            if(jump.equals("JGE")){   return "011";   }
            if(jump.equals("JLT")){   return "100";   }
            if(jump.equals("JNE")){   return  "101";   }
            if(jump.equals("JLE")){   return "110";   }
            if(jump.equals("JMP")){   return "111";   }
        }
        return "000";
    }
 
    //liefert A-Instruktion
    public String aInstr(){
        String out = "";
        
        assemblyLine = assemblyLine.replaceAll("@", "");
        if(Character.isDigit(assemblyLine.charAt(0))){
            String aInst = Integer.toBinaryString(Integer.parseInt(assemblyLine));
            if(aInst.length() <= 15){
                int l = aInst.length()+1;
                for(int i = 0; i <= (15 - l); i++){
                    aInst = "0" + aInst;
                }
            }
            out += "0" + aInst;
        }else{
            String aInst = Integer.toBinaryString(st.getAddress(assemblyLine));
            if(aInst.length() <= 15){
                int l = aInst.length()+1;
                for(int i = 0; i <= (15 - l); i++){
                    aInst = "0" + aInst;
                }
            }
            out += "0" + aInst;
        }
        return out;
    }
    
}