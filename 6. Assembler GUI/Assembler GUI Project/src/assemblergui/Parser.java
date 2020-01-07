package assemblergui;
    
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Parser {
    private File assemblerFile;
    private String binaryCode;
    private SymbolTable st;
    
    public Parser(File file) throws FileNotFoundException{
        st = new SymbolTable();
        assemblerFile = file;
        binaryCode = "";
        fillSymbolTable();
        translateAssemblerToBinary();
    }
    
    public void fillSymbolTable() throws FileNotFoundException{
        int n = 0;
        Scanner scanner = new Scanner(assemblerFile);
        while(scanner.hasNext()){
            String aLine = scanner.nextLine().replaceAll(" ", "");
            aLine = aLine.split("//")[0];
            //System.out.println(aLine +"  "+ n);
            if(!aLine.equals("")){
                if(aLine.contains("(") && aLine.contains(")")){
                    aLine = aLine.replaceAll("[(]", "");
                    aLine = aLine.replaceAll("[)]", "");
                    if(!st.contains(aLine)){
                        st.addEntry(aLine, n);
                    }
                }else{
                    n++;
                }
            }
        }
    }
    
    public void translateAssemblerToBinary() throws FileNotFoundException{
        int n = 16;
        Scanner scanner = new Scanner(assemblerFile);
        while(scanner.hasNext()){
            String aLine = scanner.nextLine();
            aLine = aLine.split("//")[0].replaceAll(" ", "");
            if(aLine.contains("(") || aLine.equals("")){
            }else{
                if(aLine.contains("@")){
                    Code t = new Code(aLine, st);
                    if(!st.contains(aLine) && !Character.isDigit(aLine.charAt(1))){
                        st.addEntry(aLine, n);
                        n++;
                    }
                    binaryCode += t.aInstr() + "\n";
                }else{
                    Code t = new Code(aLine, st);
                    binaryCode += t.comp() + t.dest() + t.jump() + "\n";
                }
            }
        }
        scanner.close();
    }
    
    public String getBinaryCode(){
        return binaryCode;
    }
    public SymbolTable getSymbolTable(){
        return st;
    }
    public void print(){
        System.out.println(binaryCode);
    }
}
