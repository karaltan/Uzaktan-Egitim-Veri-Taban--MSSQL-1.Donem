-- zam oran� maasin %10undan b�y�k olamaz!
CREATE TABLE [dbo].[maaslar](
	[numara] [nvarchar](2) NULL,
	[adisoyadi] [nvarchar](50) NULL,
	[maasi] [int] NULL,
	[zam] [smallint] NULL) 

alter table maaslar
add constraint CK_maaslar CHECK (zam>0 and zam <= maasi*0.1)