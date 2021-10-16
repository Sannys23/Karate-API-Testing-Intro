Feature: Method Get Post

    Background:
        Given url urlBase
        And path 'posts'

    Scenario: get post list
        When method get
        Then status 200
        And match each response[*].userId == '#number'

    Scenario: create post
        Given def payload =
        """
        {
            "title": "ini title",
            "body": "ini body",
            "userId":100
        }
        """
        When method post 
        Then status 201
        And match response.id == '#notnull'
        And match response.id == '#number'
