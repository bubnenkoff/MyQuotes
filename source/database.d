import std.stdio;
import std.string;
import mysql;
import vibe.d;
import core.thread;

import config;

class Database
{
	Config config;
	MySqlPool mydb;
	Connection connection;

	this(Config config)
	{
		this.config = config;
		mydb = new MySqlPool(config.dbhost, config.dbuser, config.dbpassword, config.dbname, config.dbport);	
	}

	bool connect()
	{
		if(connection is null)
		{
			scope(failure) reconnect();
			this.connection = mydb.lockConnection();
			return true;
		}
		else
			return false; 

	}


	void reconnect()
	{
		if(connection is null)
		{
			while(!connect) // continue till connection will not be established
			{
				Thread.sleep(3.seconds);
				logError("Connection to DB is not active...");
				connect();
			}
		if(connection !is null)
		{
			logWarn("Reconnection to DB server done");
		}

		}

	}

	Json getQuotes()
	{
		struct Quote
		{
			int id;
			string quote;
		}

		Quote quote;
		Quote [] quotes;

        try
        {    
            Prepared prepared = prepare(connection, `SELECT id, quote from quotes`);
            ResultSet result = prepared.querySet();

            if (result.empty)
            {
                logWarn(`No quotes in DataBase`);
                return Json.emptyObject; 
            }
                
            else
            {
                foreach (row; result)
                {
                    quote.id = row[0].coerce!(int);
                    quote.quote = row[1].coerce!string;
                    quotes ~= quote;
                }
				return quotes.serializeToJson();
            }
        }

        catch(MySQLException e)
        {
            logCritical(`Error in SELECT query`);
            logWarn(e.msg);
            return Json.emptyObject; 
        }

	}




}