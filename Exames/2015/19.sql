DELETE FROM Photo
WHERE julianday(uploadDate) < julianday('2010-01-01') AND id IN (SELECT photo FROM numTagged WHERE numTagged < 2);