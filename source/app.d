import std.stdio;
import database;
import router; // Rest
import config;
import vibe.d;

void main()
{
	Config config = new Config();
	auto settings = new HTTPServerSettings;
	settings.port = 8081;
	settings.bindAddresses = ["::1", "127.0.0.1"];

	auto router = new URLRouter();
	router.get("/*", serveStaticFiles("./html"));

	Database database = new Database(config);
	database.connect();

	router.registerRestInterface(new MyRouter(database)); 

	listenHTTP(settings, router);
	
	logInfo("Please open http://127.0.0.1:8081/ in your browser.");
	runApplication();

}
