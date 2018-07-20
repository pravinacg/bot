IF EXISTS ( SELECT [name] FROM sys.tables WHERE [name] = 'UserProfile' )   
DROP TABLE UserProfile   
GO   
     
CREATE TABLE UserProfile   
(   
    userid int identity(1,1),
	Email varchar(100),
	FirstName varchar(100) null,
	Lastname varchar(100) null,
	MobileNumber varchar(10) null,
	Password varchar(50),
    CompanyName varchar(100) null,
	Location varchar(100) null,
CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED         
(        
  [userid] ASC   
    
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]        
) ON [PRIMARY]      