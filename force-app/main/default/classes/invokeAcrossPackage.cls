@namespaceAccessible
public with sharing class invokeAcrossPackage {
	@namespaceAccessible
    public static Contact getContact(){
        return [SELECT Id, LastName FROM Contact LIMIT 1];
    }
    @namespaceAccessible
    public static String authorize(){
        BW_Payment__mdt auth = [SELECT MasterLabel, Key__c,DeveloperName FROM BW_Payment__mdt WHERE DeveloperName = 'Breadwinner_Token' LIMIT 1];
        System.debug('Auth-Token :::: '+ auth.Key__c);
        return auth.Key__c;
    }
}