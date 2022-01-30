***Settings***
Documentation  A test case for buying a product
Resource  ../Resources/common.robot 
Resource  ../Resources/variables.robot
Resource  ../Resources/buyresource.robot 
Force Tags  Buying
Suite Setup  Run Keywords  Open Page
...          Enter Information
Suite Teardown  Finish TestCase 

***Test Cases***
Buy A Product
  Choose Product
  Buy Product