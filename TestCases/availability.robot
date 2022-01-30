***Settings***
Documentation  This test case checks the availability of a product
Resource  ../Resources/common.robot 
Resource  ../Resources/variables.robot
Resource  ../Resources/checkingresource.robot 
Force Tags  checking
Suite Setup  Run Keywords  Open Page
...          Enter Information
Suite Teardown  Finish TestCase 

***Test Cases***
Check The Availability
    Choose Product
    Check Availability