
ruleset HelloWorldApp {
  meta {
    name "Hello World"
    description <<
      Hello World
    >>
    author ""
    logging off


    use module a169x701 alias CloudRain
    use module a41x196  alias SquareTag
  }
  global {
   
  }
  rule HelloWorld {
    select when web cloudAppSelected

    pre {
     my_html = <<
      <h5>Hello, Cruel World!</h5>
     >>;
    }
    {
    SquareTag:inject_styling();
    CloudRain:createLoadPanel("Hello World!", {}, my_html);
    notify("Hello", "Just a test");
    alert("Foo!!");
    }

  }
}