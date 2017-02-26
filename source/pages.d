module pages;
import vibe.d;
import database;
import vibe.web.web;

interface Pages
{
    @path("/page1")       @method(HTTPMethod.GET)    Json getPage(); 
}

//// http://vibed.org/docs#http-routing
class MyPages : Pages 
{
  @path("/page1")  void getPage()
    {
        render!("page1.dt");
    }
}
