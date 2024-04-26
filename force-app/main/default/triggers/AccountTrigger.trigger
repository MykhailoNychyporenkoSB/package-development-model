trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            AccountTriggerHelper.onBeforeInsert(Trigger.new);
        }
        when BEFORE_UPDATE {
            AccountTriggerHelper.onBeforeUpdate(Trigger.new);
        } 
    }
}