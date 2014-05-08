/*
 * Historical Archive Data Warehouse
 * Sample Data
 * SQL Server 2008/2012
 */

USE ArchiveDW;
GO

-- Insert sample records
INSERT INTO dbo.MainRecords (RecordCode, RecordName, Description, CreatedBy)
VALUES
('REC001', 'Sample Record 1', 'First sample record for Historical-Archive-Data-Warehouse', 'admin'),
('REC002', 'Sample Record 2', 'Second sample record for Historical-Archive-Data-Warehouse', 'admin'),
('REC003', 'Sample Record 3', 'Third sample record for Historical-Archive-Data-Warehouse', 'admin');

PRINT 'Sample data inserted successfully';
PRINT 'Total records: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
GO
