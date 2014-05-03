/*
 * Historical Archive Data Warehouse
 * Project #56 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, Partitioning
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ArchiveDW')
BEGIN
    ALTER DATABASE ArchiveDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ArchiveDW;
END
GO

CREATE DATABASE ArchiveDW
ON PRIMARY
(
    NAME = 'ArchiveDW_Data',
    FILENAME = 'C:\SQLData\ArchiveDW_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ArchiveDW_Log',
    FILENAME = 'C:\SQLData\ArchiveDW_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ArchiveDW SET RECOVERY SIMPLE;
ALTER DATABASE ArchiveDW SET AUTO_UPDATE_STATISTICS ON;
GO

USE ArchiveDW;
GO

PRINT 'Database ArchiveDW created successfully';
PRINT 'Project: Historical Archive Data Warehouse';
PRINT 'Description: Long-term historical data storage';
GO
