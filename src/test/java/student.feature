Feature: Student DEMO Test

  Scenario: Get/schedule
    Given url 'http://localhost:3000/schedule'
    When method GET
    #função para retornar userid
    Then status 200
    And print response

  Scenario: Get/schedule/{scheduleID}
    Given url 'http://localhost:3000/schedule/'
    Given param scheduleId = '0'
    When method GET
    #função para retornar
    Then status 200
    And print response

  Scenario: Get/requirement
    Given url 'http://localhost:3000/requirement'
    When method GET
    #função para retornar subjectId
    #função para retornar subjectDependenceID
    #função para retornar requirementType
    Then status 200
    And print response

  Scenario: Get/requirement/{requirementId}
    Given url 'http://localhost:3000/requirement/'
    Given param requirementId = '0'
    When method GET
    #função para retornar requirementid
    Then status 200
    And print response

  Scenario: Get/subject
    Given url 'http://localhost:3000/subject'
    When method GET
    #função para retornar subject
    Then status 200
    And print response

  Scenario: Get/subject/id
    Given url 'http://localhost:3000/subject/'
    Given param subjectId = '0'
    When method GET
    #função para retornar subjectid
    Then status 200
    And print response

  Scenario: POST/student/{studentId}/subscription
    Given url 'http://localhost:3000/student/0/subscription'
    #And param studentId = 0 - ERRO
    And request { "studentId": "0"}
    Given path 'some/path'
    And request { some: 'data' }
    And header Accept = 'application/json'
    When method post
    Then status 201

    #PIG SPIRIT CASE  ------------------------------------------------ 🐷🐷

  Scenario: Get/schedule
    #Given url 'http://localhost:3000/schedule' - FORMA CORRETA (ESCRITA ERRADA)
    Given url 'http://localhost:3000/schedulle'
    When method GET
    #função para retornar userid
    Then status 404
    And print response

  Scenario: Get/schedule/{scheduleID}
    #Given url 'http://localhost:3000/schedule/0' - FORMA CORRETA (ID INEXISTENTE)
    Given url 'http://localhost:3000/schedule/1000'
    When method GET
    #função para retornar
    Then status 404
    And print response

  Scenario: Get/requirement
     #Given url 'http://localhost:3000/requiremennt' - FORMA CORRETA (ESCRITA ERRADA)
    Given url 'http://localhost:3000/requiremment'
    When method GET
    #função para retornar subjectId
    #função para retornar subjectDependenceID
    #função para retornar requirementType
    Then status 404
    And print response

  Scenario: Get/requirement/{requirementId}
    Given url 'http://localhost:3000/requirement/'
    #(ID INEXISTENTE)
    Given param requirementId = '10000'
    When method GET
    #função para retornar requirementid
    Then status 200
    And print response

  Scenario: Get/subject
    #Given url 'http://localhost:3000/subject' - FORMA CORRETA (ESCRITA ERRADA)
    Given url 'http://localhost:3000/subjectt'
    When method GET
    #função para retornar subject
    Then status 404
    And print response

  Scenario: Get/subject/id
    Given url 'http://localhost:3000/subject/1000'
    When method GET
    #função para retornar subjectid
    Then status 404
    And print response

