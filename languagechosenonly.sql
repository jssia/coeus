/*
Search through and pick out people w certain language w variable 'b'

Output person name, university, URL, faculty URL, numpubs, Research areas
*/
SELECT People.LF_Name, People.URL, People.NumbPublications, People.FacultyURL, ResearchArea.Name FROM people 
INNER JOIN ResearchArea.Name ON ResearchArea.ID=People.RA_ID WHERE UniversityID IN 
    (SELECT ID FROM University WHERE LanguageID IN
        (SELECT ID FROM Language WHERE Name = 'b')) 
