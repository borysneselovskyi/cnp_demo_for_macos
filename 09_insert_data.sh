#!/bin/bash
clear
. ./config.sh

printf "${green}echo \"create table test (id integer, description text);\"${reset}\n" 
printf "${green}echo \"insert into test values (1, 'TEST1');\"${reset}\n"
printf "${green}echo \"select * from test;\"${reset}\n"

cat create_data.sql | kubectl-cnpg psql  ${cluster_name}
