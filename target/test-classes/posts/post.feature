Feature: Get post

    Scenario: get post list
        Given url urlBase
        And path 'posts'
        When method get
        Then status 200
        And match each response[*].userId == '#number'