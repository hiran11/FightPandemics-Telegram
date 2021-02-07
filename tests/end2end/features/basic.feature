Feature: Test basic behaviour of app

    Scenario: Start
        Given A conversation with the chatbot is open
        When I write "/start"
        And I wait for the next message
        Then I should receive the new message "Hi! Welcome!\nWe are FightPandemics.\nA place to offer and request help.\nPandemics will continue to happen.\nWe help communities prepare and respond.\nWhat would you like to do?"
        And I should see the buttons "Request Help, Offer Help"

    ## Offer help

    Scenario: Offer Help
        Given A conversation with the chatbot is open
        When I write "/start"
        And I wait for the next message
        And I click the button "Offer Help"
        And I wait for the next message
        Then I should receive the new message "What type of help would you like to offer? Please choose all the relevant tags and click done"
        And I should see the buttons "Groceries/Food, Medical Supplies, Funding/Donate\n Well-being/Mental, Information, Tech\n Legal, Education, Business\n Done"

    Scenario: Offer Information Help
        Given A conversation with the chatbot is open
        When I write "/start"
        And I wait for the next message
        And I click the button "Offer Help"
        And I wait for the next message
        And I click the button "Information"
        Then I should receive the new message "What is the title of your post? (60 characters or less)"

    ## Main menu

    Scenario: Main menu
        Given A conversation with the chatbot is open
        When I write "/mainmenu"
        And I wait for the next message
        Then I should receive the new message "This is FightPandemics Chatbot main menu, What would you like to do?"
        And I should see the buttons "Request Help, Offer Help\n View My Posts, View My Profile\n Create Post\n About FightPandemics\n Login"

    ## Create post

    Scenario: Create post
        Given A conversation with the chatbot is open
        When I write "/mainmenu"
        And I wait for the next message
        And I click the button "Create Post"
        And I wait for the next message
        Then I should receive the new message "What type of help would you like to offer? Please choose all the relevant tags and click done"
        And I should see the buttons "Groceries/Food, Medical Supplies, Funding/Donate\n Well-being/Mental, Information, Tech\n Legal, Education, Business\n Done"

    Scenario: Create post with topic
        Given A conversation with the chatbot is open
        When I write "/mainmenu"
        And I wait for the next message
        And I click the button "Create Post"
        And I wait for the next message
        And I click the button "Information"
        And I click the button "Done"
        Then I should receive the new message "What is the title of your post? (60 characters or less)"