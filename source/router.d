module router;
import vibe.d;
import database;

@rootPathFromName
interface API
{

    @path("auth")       @method(HTTPMethod.GET)    Json getAuth(); 
    @path("quotes")      @method(HTTPMethod.GET)    Json getQuotes();

}

class MyRouter : API
{
   Database db;
   this(Database db)
   {
    this.db = db;
   }
   
    override:
        Json getAuth() // auth not implemented
        {
           return Json.emptyObject;
        }

        Json getQuotes()
        {
            return db.getQuotes();
        }

}



