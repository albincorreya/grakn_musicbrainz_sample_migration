# grakn_musicbrainz_sample_migration
A sample script and ontology to migrate musical entities from musicbrainz.org to grakn graph databases


Note : 

Please go through the basic documentation of Grakn database and Graql query language.
https://grakn.ai/pages/documentation/get-started/quickstart-tutorial.html

Also go thorugh basic details of musicbrainz.org schema representation.
https://musicbrainz.org/doc/MusicBrainz_Database/Schema

__________________________________________________________________

Setup

1. Download and setup Grakn database from https://grakn.ai/pages/documentation/get-started/setup-guide.html

2. cd "your grakn directory"

3. copy or clone the repo to this directory

4. Navigate to your Grakn directory and run the following commands.       
         
         $ cd "your_directory"

         $ ./bin/grakn.sh start
         
         $ ./bin/graql.sh -f ./simplebrainz_ontology/ontology.gql
    
5. For command-line graql interface, run the following. 
         
         $ ./bin/grakn.sh start

6. Go to http://0.0.0.0:4567 for the interactive web interface

------------------------------------------------------------------
CSV Migration

1. Run the shell script "migrate_loader.sh" from home directory

   ./migrate_loader.sh '''your grakn directory'''


 
