package vmtranslatorgui;

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
import javafx.stage.FileChooser;
import javafx.stage.FileChooser.ExtensionFilter;
import javafx.stage.Stage;


public class VMTranslatorGUI extends Application {
    
    @Override
    public void start(Stage primaryStage) throws FileNotFoundException {
        GridPane root = new GridPane();
        root.setHgap(10);
        root.setVgap(10);
        
        //Szene erstellen
        Scene scene = new Scene(root, 900, 600);
        Label vm = new Label("VM-Code");
        Label assembler = new Label("Assembler-Code");
        Button saveButton = new Button("Save as ASM File");
        
        TextArea vmText = new TextArea();
        TextArea asmText = new TextArea();
        vmText.setPrefHeight(500);
        
        root.add(vm, 0, 0);
        root.add(assembler, 1, 0);
        root.add(vmText, 0, 1);
        root.add(asmText, 1, 1);
        root.add(saveButton, 1, 2);
        
        //Datei angeben
        FileChooser fc = new FileChooser();
        fc.setTitle("Open VM File");
        fc.getExtensionFilters().addAll(new ExtensionFilter("VM Files", "*.vm"));
        File f = fc.showOpenDialog(primaryStage);
        
        //Parsen
        Parser p = new Parser(f);
        
        //vmFile anzeigen 
        Scanner scanner = new Scanner(f);
        String ao = "";
        while(scanner.hasNext()){
            String line = scanner.nextLine();
            ao += line + "\n";
        }
        vmText.setText(ao);
        //AssemblerCode anzeigen
        asmText.setText(p.getOut());
        //Save Button Action
        saveButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                //FileChooser tfc = new FileChooser();
                //tfc.getExtensionFilters().add(new ExtensionFilter("ASM File", "*.asm"));
                //File tf = tfc.showSaveDialog(primaryStage);
                //if(tf != null){
                    PrintWriter writer;
                    try {
                        String name = f.getName().replace(".vm", "");
                        writer = new PrintWriter(name + ".asm");
                        writer.println(p.getOut());
                        writer.close();
                    } catch (FileNotFoundException ex) {
                        Logger.getLogger(VMTranslatorGUI.class.getName()).log(Level.SEVERE, null, ex);
                    }
                //}
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
