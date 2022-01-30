***Settings***
Documentation  A test case for deleting a product
Resource  ../Resources/common.robot 
Resource  ../Resources/variables.robot
Resource  ../Resources/buyresource.robot 
Force Tags  Deleting
Suite Setup  Run Keywords  Open Page
...          Enter Information
Suite Teardown  Finish TestCase 

***Test Cases***
Delete A Product
  Choose Product
  Delete Product