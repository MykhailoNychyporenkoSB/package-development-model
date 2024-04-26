public with sharing class AccountTriggerHelper {
    public static void onBeforeInsert(List<Account> newAccountList) {
        for (Account acc : newAccountList) {
            acc.Description = 'This field was populated with BEFORE_INSERT trigger action';
        }
    }

    public static void onBeforeUpdate(List<Account> newAccountList) {
        for (Account acc : newAccountList) {
            acc.Description = 'This field was populated with BEFORE_UPDATE trigger action';
        }
    }
}