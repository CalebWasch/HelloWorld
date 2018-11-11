public class MyApp : Gtk.Application {

    // makes it possiable to comunicate with github
    public MyApp () {
        Object (
            application_id: "com.github.CalebWasch.HelloWorld" ,
            flags: ApplicationFlags.FLAGS_NONE

        );

    }

    // method creates a new Gtk.ApplicationWindow called main_window. 
    // The fourth line sets the window title that you see at the top of the window. 
    // We also must give our window a default size so that is does not appear too small for the user to interact with it. 
    
    protected override void activate() {
        var button_hello = new Gtk.Button.with_label ("Click me!");
        button_hello.margin = 12;
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello World";
            button_hello.sensitive = false;
        });
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        main_window.add (button_hello);
        main_window.show_all();

    }
    // Then in our main () method we create a new instance of our Gtk.Application and run it.
    public static int main(string[] args) {
        var app = new MyApp();
        return app.run (args);
    }

}