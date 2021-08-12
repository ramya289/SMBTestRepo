@namespaceAccessible
public with sharing class invokeAcrossPackage {
	@namespaceAccessible
    public static Contact getContact(){
        return [SELECT Id, LastName FROM Contact LIMIT 1];
    }
}