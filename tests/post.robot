*Settings*
Documentation       Test suite for the JSONPlaceholder API
Resource            ../resources/base.robot
Library             ../resources/factories/post.py

*Test Cases*
Should create a new post
    ${new_post}             Factory Post
    ${response}             Create New Post                 ${new_post}
    Status Should Be        201                             ${response}
    Should Be Equal         ${response.json()}[title]       ${new_post}[title]

Should update a post
    ${title}                Create Dictionary               title=New title
    ${response}             Update Post                     1                       ${title}
    Status Should Be        200                             ${response}
    Dictionary Should Contain Key    ${response.json()}  body

Should delete a post
    ${response}             Delete Post                     1
    Status Should Be        200                             ${response}

Should search a post
    ${response}             Search Post                     1
    Status Should Be        200                             ${response}

Should search all posts
    Search All Posts
    Request Should Be Successful