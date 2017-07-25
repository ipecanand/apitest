*** Settings ***
Documentation  These are some API tests
Library  OperatingSystem
Library  String
Library  BuiltIn
Library  Process
Library  Collections
Library  E:\\robotframework\\apitest\\utility\\req.py
Library  E:\\robotframework\\apitest\\testcase\\products_positive.py
Library  E:\\robotframework\\apitest\\utility\\dbconnect.py
Library  E:\\robotframework\\apitest\\utility\\INFOTECHADS.py


# pybot -d results/apiresult tests/api.robot

*** Variables ***
${stdout}
${arg1}=  SN0198

*** Test Cases ***
#Dictionary Script
#    [Documentation]  this is Dictionary python script
#    [Tags]  Python Smoke
#    ${result}=  Run Process  python  E:\\robotframework\\apitest\\testcase\\products_positive.py
#    log  ${result}
#    log  ${result.stdout}
Infotechads class output here
    APIRequest Verification
productPositive.py file DB verification
    Dbverification

*** Keywords ***
APIRequest Verification
    [Documentation]  API request verification doc
    [Tags]  API Request Verification
    ${resultapi}=  INFOTECHADS.test_api
    log  ${resultapi}
Dbverification
    [Documentation]  this is db verification script
    [Tags]  DB verification
    ${dbresult}=  verify_product_created_in_db
    log  ${dbresult}
