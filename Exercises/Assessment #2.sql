-- Assessment #2 

--#1
SELECT * FROM cd.facilities

--#2
SELECT name, membercost
FROM cd.facilities 

--#3
SELECT * FROM cd.facilities 
WHERE membercost > 0

--#4
SELECT facid, name, membercost, monthlymaintenance 
FROM cd.facilities 
WHERE membercost > 0 AND (membercost < monthlymaintenance/50)

--#5
SELECT * 
FROM cd.facilities 
WHERE name LIKE '%Tennis%'

--#6
SELECT * 
FROM cd.facilities 
WHERE facid IN (1,5)

--#7
SELECT 
	memid, 
	surname, 
	firstname, 
	joindate
FROM cd.members
WHERE joindate > '2012-09-01'

--#8
SELECT DISTINCT surname
FROM cd.members
ORDER BY surname
LIMIT 10

--#9
SELECT joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1

--#10
SELECT 
	COUNT(*)
FROM cd.facilities 
WHERE guestcost > 10

--#11
SELECT facid, SUM(slots) AS "Total Slots"
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots)

--#12
SELECT cd.facilities.facid, SUM(cd.bookings.slots) AS total_slots
FROM cd.facilities
INNER JOIN cd.bookings
	ON cd.facilities.facid = cd.bookings.facid
GROUP BY cd.facilities.facid
HAVING SUM(cd.bookings.slots) > 1000
ORDER BY cd.facilities.facid

--#13
SELECT cd.bookings.starttime AS start, cd.facilities.name
FROM cd.bookings
INNER JOIN cd.facilities 
	ON cd.bookings.facid = cd.facilities.facid
WHERE cd.facilities.facid IN (0,1)
	AND cd.bookings.starttime BETWEEN '2012-09-21' AND '2012-09-22'
ORDER BY cd.bookings.starttime

--#14
SELECT 
	cd.bookings.starttime
FROM cd.members
INNER JOIN cd.bookings 
	ON cd.members.memid = cd.bookings.memid
WHERE firstname = 'David' AND surname = 'Farrell'
