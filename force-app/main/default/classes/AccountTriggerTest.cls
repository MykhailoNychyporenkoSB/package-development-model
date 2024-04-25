@IsTest
public with sharing class AccountTriggerTest {
    private static String AFTER_INSERT_DESCRIPTION = 'This field was populated with BEFORE_INSERT trigger action';
    private static String AFTER_UPDATE_DESCRIPTION = 'This field was populated with BEFORE_UPDATE trigger action';
    @TestSetup
    static void makeData() {
        insert new Account(Name = 'TestAccount');
    }

    @IsTest
    static void BEFORE_INSERT_test() {
        Account acc = [
            SELECT Id, 
                Name, 
                Description 
            FROM ACCOUNT 
            LIMIT 1];

        Assert.areEqual(AFTER_INSERT_DESCRIPTION, acc.Description);
    }

    // @IsTest
    // static void BEFORE_UPDATE_test() {
    //     Account acc = [
    //         SELECT Id, 
    //             Name, 
    //             Description 
    //         FROM ACCOUNT 
    //         LIMIT 1];

    //     Assert.areNotEqual(AFTER_UPDATE_DESCRIPTION, acc.Description);

    //     Test.startTest();
    //     acc.Name = 'TestAccount BEFORE_UPDATE';
    //     update acc;
    //     Test.stopTest();

    //     acc = [
    //         SELECT Id, 
    //             Name, 
    //             Description 
    //         FROM ACCOUNT 
    //         LIMIT 1];

    //     Assert.areEqual(AFTER_UPDATE_DESCRIPTION, acc.Description);
    // }
}