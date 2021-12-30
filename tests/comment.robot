*Settings*
Documentation       Test suite for the JSONPlaceholder API
Resource            ../resources/base.robot
Library             ../resources/factories/comment.py

*Test Cases*
Should create a new comment
    ${new_comment}          Factory Comment
    ${response}             Create New Comment              ${new_comment}
    Status Should Be        201                             ${response}
    Should Be Equal         ${response.json()}[name]       ${new_comment}[name]
