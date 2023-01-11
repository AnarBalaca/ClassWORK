
Create Table Users
(
UserId Int Identity(1,1) Primary Key,
IsDeleted Bit,
UserName varchar(255),
UserPassWord varchar(255),
Mail Varchar(255)


)

insert into Users values (0, 'Rafet' , 'Anar198484' , 'Rafethv@gmail.com');
select * from Users 

Create Table Posts(
PostId Int Identity(1,1) Primary Key,

UserId int Foreign Key References Users(UserId),

Content varchar(255),
LikeCount int,
CreateDate DateTime ,
UpdateDate DateTime ,


)

insert into Posts Values (2 , 'siuuuuuBanAllah' , 3 , '' ,'' );



Create Table Comment
(
CommentId Int Identity(1,1) Primary Key,

UserId int Foreign Key References Users(UserId),
PostId int Foreign key References Posts(PostId),

IsDeleted Bit,
LikeCount int,
CreateDate DateTime ,
UpdateDate DateTime ,
Content varchar(255)
)

insert into Comment Values(2, 2, 0, 3,'','','akaddowka')



alter table comment
add Content varchar(255)





select  USERs.UserName, Posts.Content as postName, Comment.Content as comment
from Posts
inner join Comment on Posts.PostId = Comment.PostId 
Left join Users on Posts.UserId = Users.UserId
