SELECT *
FROM "Group";

CREATE table Hard_drives(
  "Serial_number" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "Model" TEXT NOT NULL,
  "Manufacturer" TEXT UNIQUE NOT NULL,
  "Website" TEXT UNIQUE NOT NULL,
  "Disk_size(GB)" REAL NOT NULL,
  "Spindle_speed" REAL NOT NULL,
  "Interface_type" TEXT NOT NULL,
  "Date_of_purchase" TEXT NOT NULL,
  "Date_of_failure" TEXT NOT NULL,
  "Comment" TEXT
);

INSERT into "Hard_drives"(Model, Manufacturer, Website, "Disk_size(GB)",
                          Spindle_speed, Interface_type, Date_of_purchase, Date_of_failure, Comment)
VALUES ("WD10EZRZ","Western Digital","www.wd.com", 1000, 5400, "SATA", "2019-04-21 18:30:15.3455",
        "2020-04-21 18:30:15.3455", "Тихий, практически не слышно...");

INSERT into "Hard_drives"(Model, Manufacturer, Website, "Disk_size(GB)",
                          Spindle_speed, Interface_type, Date_of_purchase, Date_of_failure, Comment)
VALUES ("ST1000DM010","Seagate","www.seagate.com", 1000, 7200, "SATA", "2019-01-14 11:22:43.5353",
        "2021-02-11 11:22:43.5353", "ДешёвыйВполне шустрый, вроде особо не шумит и не греется.");

INSERT into "Hard_drives"(Model, Manufacturer, Website, "Disk_size(GB)",
                          Spindle_speed, Interface_type, Date_of_purchase, Date_of_failure, Comment)
VALUES ("HDTB410EK3AA","Toshiba","www.toshiba.com", 500, 500, "USB 3.0", "2018-06-16 13:16:12.3442",
        "2019-06-21 13:30:15.1111", "Хороший объем, качественная сборка, невысокая цена");

SELECT  Hard_drives.Serial_number, Hard_drives.Model, Hard_drives.Manufacturer
FROM Hard_drives WHERE "Disk_size(GB)">500;

UPDATE Hard_drives SET Model = "WD1000000" WHERE Serial_number = 1;

DELETE FROM Hard_drives WHERE Manufacturer = 'Toshiba';

SELECT Hard_drives.Manufacturer, Hard_drives."Disk_size(GB)", Hard_drives.Spindle_speed
FROM Hard_drives group by "Disk_size(GB)" having Spindle_speed > 1000;

SELECT Hard_drives.Manufacturer, Hard_drives."Disk_size(GB)", Hard_drives.Spindle_speed
FROM Hard_drives order by Spindle_speed desc;
