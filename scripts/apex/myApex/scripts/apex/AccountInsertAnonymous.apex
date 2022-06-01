Account acc1 = new Account();
Account acc2 = [select Id from Account where name = 'University of Arizona'];

acc1.name = 'Summer Fest LLC';
acc1.ParentId = acc2.Id;
acc1.Type = 'Technology Partner';
acc1.Rating = 'Hot';
acc1.AnnualRevenue = 200000000;

insert acc1;