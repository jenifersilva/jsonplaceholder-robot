*Settings*
Documentation   Routes actions from JSONPlaceholder API

*Keywords*
Create New Post
    [Arguments]     ${payload}

    ${response}     POST
    ...             ${BASE_URI}/posts
    ...             json=${payload}
    ...             expected_status=any

    [return]        ${response}

Update Post
    [Arguments]     ${item}                         ${payload}

    ${response}     PATCH
    ...             ${BASE_URI}/posts/${item}
    ...             json=${payload}
    ...             expected_status=any

    [return]        ${response}

Delete Post
    [Arguments]     ${item}

    ${response}     DELETE
    ...             ${BASE_URI}/posts/${item}
    ...             expected_status=any

    [return]        ${response}

Search Post
    [Arguments]     ${item}

    ${response}     GET
    ...             ${BASE_URI}/posts
    ...             params=userId=${item}
    ...             expected_status=any

    [return]        ${response}

Search All Posts
    GET             ${BASE_URI}/posts