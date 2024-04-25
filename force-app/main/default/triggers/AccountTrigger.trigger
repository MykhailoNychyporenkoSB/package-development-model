trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            for (Account acc : Trigger.new) {
                acc.Description = 'This field was populated with BEFORE_INSERT trigger action';
            }
        }
        when BEFORE_UPDATE {
            for (Account acc : Trigger.new) {
                acc.Description = 'This field was populated with BEFORE_UPDATE trigger action';
            }
        } 
    }
}