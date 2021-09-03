@IsTest
private without sharing class invokeContactTest {
	@IsTest
    private static void testContactMethod () {
        Contact con = new Contact(LastName = 'Ramya P');
        insert con;
        Contact con1 = invokeAcrossPackage.getContact();
        invokeAcrossPackage.authorize();
    }
}