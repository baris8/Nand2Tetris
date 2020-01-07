package assemblergui;

import java.util.HashMap;
import java.util.Map;

public class SymbolTable {
    private HashMap<String, Integer> symbolTable;
    
    public SymbolTable(){
        symbolTable = new HashMap<String, Integer>();
        for(int i = 0; i < 16; i++){
            symbolTable.put("R"+i, i);
        }
        symbolTable.put("SCREEN", 16384);
        symbolTable.put("KBD", 24576);
        symbolTable.put("SP", 0);
        symbolTable.put("LCL", 1);
        symbolTable.put("ARG", 2);
        symbolTable.put("THIS", 3);
        symbolTable.put("THAT", 4);
    }
    
    public void addEntry(String symbol, int n){
        symbol = symbol.replaceAll("@", "");
        symbolTable.put(symbol, n);
    }
    public boolean contains(String symbol){
        symbol = symbol.replaceAll("@", "");
        return symbolTable.containsKey(symbol);
        
    }
    public int getAddress(String symbol){
        symbol = symbol.replaceAll("@", "");
        for(Map.Entry m:symbolTable.entrySet()){ 
            if(m.getKey().equals(symbol)){
                return (int)m.getValue();
            }
        }
        return 0;
    }
    public String getHashMap(){
        String out = "";
        for(Map.Entry m:symbolTable.entrySet()){ 
            String key = (String) m.getKey();
            int value = (int) m.getValue();
            out += key + ", " + value + "\n";
        }
        return out;
    }
}
