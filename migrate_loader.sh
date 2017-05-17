#!/bin/bash

if [ -n "$1" ]
then
	echo "Migrating artist.csv"
	$1/bin/migration.sh csv -i $PWD/simplebrainz_ontology/artist.csv -t $PWD/simplebrainz_ontology/artist.gql -k grakn
	echo "Migrating release_group.csv"
	$1/bin/migration.sh csv -i $PWD/simplebrainz_ontology/release_group.csv -t $PWD/simplebrainz_ontology/release_group.gql -k grakn
	echo "Migrating recording_group.csv"
	$1/bin/migration.sh csv -i $PWD/simplebrainz_ontology/recording_group.csv -t $PWD/simplebrainz_ontology/recording.gql -k grakn
	echo "Migrating artist_recording_group.csv"
	$1/bin/migration.sh csv -i $PWD/simplebrainz_ontology/artist_recording.csv -t $PWD/simplebrainz_ontology//artist_recording.gql -k grakn
	echo "Migrating release_group_recording.csv"
	$1/bin/migration.sh csv -i $PWD/simplebrainz_ontology/release_group_recording.csv -t $PWD/simplebrainz_ontology/release_recording.gql -k grakn
	echo "Migrating artist_release_group.csv"
	$1/bin/migration.sh csv -i $PWD/simplebrainz_ontology/artist_release_group.csv -t $PWD/simplebrainz_ontology/artist_release_group.gql -k grakn
	echo "Done migrating data"
else
	echo "Usage: ./loader.sh <Grakn-bin-directory>"
fi