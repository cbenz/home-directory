#!/usr/bin/env bash
#
# From http://stackoverflow.com/questions/8949335/mongo-export-all-fields-data-from-collection-without-specifying-fields


OIFS=$IFS;
IFS=",";

dbname=$1 #put "database name" here if you don't want to pass it as an argument

collections=`mongo $dbname --eval "rs.slaveOk();db.getCollectionNames();" --quiet`;
collectionArray=($collections);

for ((i=0; i<${#collectionArray[@]}; ++i));
do
    keys=`mongo $dbname --eval "rs.slaveOk();var keys = []; for(var key in db.${collectionArray[$i]}.findOne()) { keys.push(key); }; keys;" --quiet`;
    mongoexport --db $dbname --collection ${collectionArray[$i]} --fields "$keys" --csv --out $dbname.${collectionArray[$i]}.csv;
done

IFS=$OIFS;
