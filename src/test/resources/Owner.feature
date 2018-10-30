Feature: Request as Owner Admin

#  //testcase that check that OWNER_ADMIN have permission to Get request on OwnerController
  Scenario: User calls web services in order to get all owner
    Given I have access to perform GET request as a "OWNER_ADMIN"
    When I perform GET request to "/owners"
    Then I will have status code "200"

    #  //testcase that check that OWNER_ADMIN doesn't have permission to Get request on VetController
    Scenario: User calls web services in order to get all specialties
      Given I have access to perform GET request as a "OWNER_ADMIN"
      When I perform GET request to "/vets"
      Then I will have status code "400"

      #  //testcase that check that OWNER_ADMIN have permission to Get request on PetController
      Scenario: User calls web services in order to get all owner
        Given I have access to perform GET request as a "OWNER_ADMIN"
        When I perform GET request to "/pets"
        Then I will have status code "200"

        #  //testcase that check that OWNER_ADMIN have permission to Get request on PetTypeController
        Scenario: User calls web services in order to get all owner
          Given I have access to perform GET request as a "OWNER_ADMIN"
          When I perform GET request to "/pettypes"
          Then I will have status code "200"

          #  //testcase that check that OWNER_ADMIN have permission to Get request on VisitController
          Scenario: User calls web services in order to get all owner
            Given I have access to perform GET request as a "OWNER_ADMIN"
            When I perform GET request to "/visits"
            Then I will have status code "200"