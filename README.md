# grakn_musicbrainz_sample_migration
A sample script to migrate some musical entities from musicbrainz.org to grakn graph databases. 

PS: In this example, we only used the first 100 artist,recording and release_group entities from the musicbrainz.org database.
For scrapping data from musicbrainz database there are set of functions available in the following repository if you have direct access to the database.https://github.com/albincorreya/musicbrainz_queries

Refer to https://musicbrainz.org/doc/MusicBrainz_Server/Setup for server setup.


Screenshot of Grakn web interface

https://user-images.githubusercontent.com/14850001/29896461-6345a31e-8ddd-11e7-8b9f-d49db56b7c69.png


Note : 

Please go through the basic documentation of Grakn database and Graql query language.
https://grakn.ai/pages/documentation/get-started/quickstart-tutorial.html

Also go thorugh basic details of musicbrainz.org schema representation.
https://musicbrainz.org/doc/MusicBrainz_Database/Schema

__________________________________________________________________

## Setup

1. Download and setup Grakn database from https://grakn.ai/pages/documentation/get-started/setup-guide.html

2. Downoad or clone this repo to the Grakn folder that you had previously downloaded.

3. Navigate to your Grakn directory and run the following commands.       
         
         $ cd "your_directory"

         $ ./bin/grakn.sh start
         
         $ ./bin/graql.sh -f ./simplebrainz_ontology/ontology.gql
    
4. For command-line graql interface, run the following. 
         
         $ ./bin/grakn.sh start

5. Go to http://0.0.0.0:4567 for the interactive web interface

------------------------------------------------------------------
CSV Migration

1. Run the shell script "migrate_loader.sh" from home directory

   ./migrate_loader.sh '''your grakn directory'''


 
