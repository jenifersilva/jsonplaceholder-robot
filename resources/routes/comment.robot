*Settings*
Documentation   Routes actions from JSONPlaceholder API

*Keywords*
Create New Comment
    [Arguments]     ${payload}

    ${response}     POST
    ...             ${BASE_URI}/posts/1/comments
    ...             json=${payload}
    ...             expected_status=any

    [return]        ${response}