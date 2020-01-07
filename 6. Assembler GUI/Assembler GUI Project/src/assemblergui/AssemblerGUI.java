package assemblergui;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.StackPane;
import javafx.stage.FileChooser;
import javafx.stage.FileChooser.ExtensionFilter;
import javafx.stage.Stage;

public class AssemblerGUI extends Application {
    
    @Override
    public void start(Stage primaryStage) throws FileNotFoundException {
        GridPane root = new GridPane();
        root.setHgap(10);
        root.setVgap(10);
        
        //Szene erstellen
        Scene scene = new Scene(root, 900, 600);
        Label assembly = new Label("Assembler");
        Label symbolTable = new Label("Symbol Table");
        Label binary = new Label("Binary Representation");
        Button saveButton = new Button("Save as Hack File");
        
        
        TextArea assemblerText = new TextArea();
        TextArea symbolTableText = new TextArea();
        TextArea binaryText = new TextArea();
        assemblerText.setPrefHeight(500);
        
        root.add(assembly, 0, 0);
        root.add(symbolTable, 1, 0);
        root.add(binary, 2, 0);
        root.add(assemblerText, 0, 1);
        root.add(symbolTableText, 1, 1);
        root.add(binaryText, 2, 1);
        root.add(saveButton, 2, 2);
        
        //Datei angeben
        FileChooser fc = new FileChooser();
        fc.setTitle("Open ASM File");
        fc.getExtensionFilters().addAll(new ExtensionFilter("ASM Files", "*.asm"));
        File f = fc.showOpenDialog(primaryStage);
        
        //Parsen
        Parser p = new Parser(f);
        p.print();
        //AssemblerFile anzeigen 
        Scanner scanner = new Scanner(f);
        String ao = "";
        while(scanner.hasNext()){
            String line = scanner.nextLine();
            ao += line + "\n";
        }
        assemblerText.setText(ao);
        //SymbolTable anzeigen
        symbolTableText.setText(p.getSymbolTable().getHashMap());
        //BinaryCode anzeigen
        binaryText.setText(p.getBinaryCode());
        //Save Button Action
        saveButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                FileChooser tfc = new FileChooser();
                tfc.getExtensionFilters().add(new ExtensionFilter("Hack File", "*.hack"));
            
                File tf = tfc.showSaveDialog(primaryStage);
                if(tf != null){
                    PrintWriter writer;
                    try {
                        writer = new PrintWriter(tf);
                        writer.println(p.getBinaryCode());
                        writer.close();
                    } catch (FileNotFoundException ex) {
                        Logger.getLogger(AssemblerGUI.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        });
        
        
        
        primaryStage.setTitle("Project 6 - by Baris Üctas");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
    
}
