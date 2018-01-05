Feature: entry creation on hotel management platform
As I am a logged in user
In order to create an hotel entry
I Should able to fill all details to create an entry

Scenario Outline: Creating first entry and deleting it after creation
  Given I am navigated to hotel management platform page
  And click on login
  And I enter username
  And I enter password
  And I click on login
  Then I am able to see logout link
  And I enter hotel name as <hotel_name>
  And I enter address as <adress>
  And I enter owner as <owner>
  And I enter phone number as <phone_number>
  And I enter email as <email>
  And I click on create
  When I delete the record
  Then row gets deleted

Examples:
| hotel_name | adress | owner        | phone_number | email            |
| Ramada     | London | Ramada Owner | 0788787985   | ramada@gmail.com |

Scenario Outline: Creating multiple entries
  Given I am navigated to hotel management platform page
  And click on login
  And I enter username
  And I enter password
  And I click on login
  And I enter hotel name as <hotel_name>
  And I enter address as <adress>
  And I enter owner as <owner>
  And I enter phone number as <phone_number>
  And I enter email as <email>
  When I click on create
  Then I see <hotel_name> created

Examples:
| hotel_name  | adress | owner         | phone_number | email             |
| Ramada      | London | Ramada Owner  | 0788787985   | ramada@gmail.com  |
| Holiday Inn | Oxford | Holiday Owner | 54794646113  | holiday@gmail.com |
