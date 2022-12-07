Feature: Secretary DEMO Test

  Scenario: Get/history/{historyId}
    Given url 'http://localhost:3000/history'
    Given param historyId = '0'
    When method GET
    #função para retornar historyid
    Then status 200
    And print response

  Scenario: Get/class/{classId}
    Given url 'http://localhost:3000/class'
    Given param classId = '0'
    When method GET
    #função para retornar classid
    Then status 200
    And print response

  Scenario: Get/course
    Given url 'http://localhost:3000/course'
    When method GET
    Then status 200
    And form field courseId = '#number'
    And form field name = '#string'
    And form field period = '#number'
    And form field beggining = '#notnull'
    And form field coordinator = '#string'
    And form field maxStudentsPerPeriod = '#number'
    And form field enrollmentOpen = '#boolean'
    And print response

  Scenario: Get/course/{courseId}
    Given url 'http://localhost:3000/course'
    Given param courseID = 0
    When method GET
    And request {courseId: '#number'}
    Then status 200
    And form field courseId = '#number'
    And form field name = '#string'
    And form field period = '#number'
    And form field beggining = '#notnull'
    And form field coordinator = '#string'
    And form field maxStudentsPerPeriod = '#number'
    And form field enrollmentOpen = '#boolean'

  Scenario: /class
    Given url 'http://localhost:3000/class'
    When method post
    Then status 201

  Scenario: /subject/{subjectId}/requeriment
    Given url 'http://localhost:3000/subject/0/requirement'
    And request { "subjectId": 0, "requirementType": "SubjectDependenceID1", "quantity": 0}
    When method post
    Then status 201

  Scenario: Delete/class/{classID}
    Given url 'http://localhost:3000/class'
    Given param classId = 0
    When method DELETE
    Then status 204
    And print responseStatus
    And print response
