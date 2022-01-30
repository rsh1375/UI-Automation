***Settings***
Documentation  A test case for verifing login functionality
Resource  ../Resources/common.robot
Resource  ../Resources/variables.robot 
Force Tags  Login
Suite Teardown  Close Browser 

***Test Cases***
Valid Login
    Open Page
    Enter Information
    Show Profile
    Finish TestCase