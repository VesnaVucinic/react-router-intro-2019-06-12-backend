# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usa_roster = [["1", "GK", "Alyssa Naeher", "April 20, 1988(age 31)", "48", "0", "Chicago Red Stars"],
 ["18", "GK", "Ashlyn Harris", "October 19, 1985(age 33)", "21", "0", "Orlando Pride"],
 ["21", "GK", "Adrianna Franch", "November 12, 1990(age 28)", "1", "0", "Portland Thorns"],
 ["4", "DF", "Becky Sauerbrunn", "June 6, 1985(age 34)", "159", "0", "Utah Royals"],
 ["5", "DF", "Kelley O'Hara", "August 4, 1988(age 30)", "119", "2", "Utah Royals"],
 ["7", "DF", "Abby Dahlkemper", "May 13, 1993(age 26)", "42", "0", "North Carolina Courage"],
 ["11", "DF", "Ali Krieger", "July 28, 1984(age 34)", "101", "1", "Orlando Pride"],
 ["12", "DF", "Tierna Davidson", "September 19, 1998(age 20)", "21", "1", "Chicago Red Stars"],
 ["14", "DF", "Emily Sonnett", "November 25, 1993(age 25)", "34", "0", "Portland Thorns"],
 ["19", "DF", "Crystal Dunn", "July 3, 1992(age 26)", "87", "24", "North Carolina Courage"],
 ["3", "MF", "Sam Mewis", "October 9, 1992(age 26)", "51", "14", "North Carolina Courage"],
 ["6", "MF", "Morgan Brian", "February 26, 1993(age 26)", "83", "6", "Chicago Red Stars"],
 ["8", "MF", "Julie Ertz", "April 6, 1992(age 27)", "84", "19", "Chicago Red Stars"],
 ["9", "MF", "Lindsey Horan", "May 26, 1994(age 25)", "70", "9", "Portland Thorns"],
 ["16", "MF", "Rose Lavelle", "May 14, 1995(age 24)", "28", "9", "Washington Spirit"],
 ["20", "MF", "Allie Long", "August 13, 1987(age 31)", "46", "6", "Reign FC"],
 ["2", "FW", "Mallory Pugh", "April 29, 1998(age 21)", "55", "17", "Washington Spirit"],
 ["10", "FW", "Carli Lloyd(co-captain)", "July 16, 1982(age 36)", "276", "113", "Sky Blue FC"],
 ["13", "FW", "Alex Morgan (co-captain)", "July 2, 1989(age 29)", "164", "106", "Orlando Pride"],
 ["15", "FW", "Megan Rapinoe(co-captain)", "July 5, 1985(age 33)", "154", "45", "Reign FC"],
 ["17", "FW", "Tobin Heath", "May 29, 1988(age 31)", "151", "30", "Portland Thorns"],
 ["22", "FW", "Jessica McDonald", "February 28, 1988(age 31)", "8", "2", "North Carolina Courage"],
 ["23", "FW", "Christen Press", "December 29, 1988(age 30)", "118", "48", "Utah Royals"]]

usa = Team.create(country: "USA")

usa_roster.each do |row|
  Player.create(
    team: usa,
    name: row[2],
    jersey_number: row[0],
    position: row[1],
    birthday: row[3],
    caps: row[4],
    goals: row[5],
    club: row[6]
  )
end

# export const playersArray = data.map(row => {
#   return {
#     name: row[2],
#     jerseyNumber: row[0],
#     position: row[1],
#     birthday: row[3],
#     caps: row[4],
#     goals: row[5],
#     club: row[6],
#   }
# })
