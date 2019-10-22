Feature: create or destroy a given movie from the database
 
  As a rotten potato user
  So that I can keep the information on rotten potatoes relevant
  I want to be able to add or remove movies from the database

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And  I am on the RottenPotatoes home page

Scenario: going to the new movie page
  When I follow "Add new movie"
  Then I should be on the Add New Movie page
  
Scenario: adding a new movie
  Given I am on the Add New Movie page
  And I fill in "Title" with "Inception"
  And I fill in "Director" with "Christopher Nolan"
  And I select "PG-13" from "Rating"
  And I choose "2010-07-16" in "Released On" date select
  And I press "Save Changes"
  Then I should be on the home page
  And I should see "Inception"
  
Scenario: destroying an existing movie
  Given I am on the details page for "The Incredibles"
  When I press "Delete"
  Then I should be on the home page
  And I should see "Movie 'The Incredibles' deleted."