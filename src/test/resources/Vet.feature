Feature: Request as Vet Admin

#  //testcase that check that VET_ADMIN have permission to Get request on VetController
  Scenario: User calls web services in order to get all vet
    Given I have access to perform GET request as a "VET_ADMIN"
    When I perform GET request to "/vets"
    Then I will have status code "200"

  #  //testcase that check that VET_ADMIN doesn't have permission to Get request on OwnerController
  Scenario: User calls web services in order to get all specialties
    Given I have access to perform GET request as a "VET_ADMIN"
    When I perform GET request to "/owners"
    Then I will have status code "400"

    #  //testcase that check that VET_ADMIN have permission to Post request on PetTypeController
    Scenario: User calls web services in order to add a new pet type
      Given I have access to perform POST request as a "VET_ADMIN"
      When I perform POST request to "/pettypes"
      Then I will have status code "201"

      #  //testcase that check that VET_ADMIN have permission to Post request on SpecialityController
      Scenario: User calls web services in order to add a new pet type
        Given I have access to perform POST request as a "VET_ADMIN"
        When I perform POST request to "/specialties"
        Then I will have status code "201"