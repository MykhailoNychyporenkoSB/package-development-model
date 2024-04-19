trigger AccountTrigger on Account (before insert) {
    switch on Trigger.operationType{
        when BEFORE_INSERT{
            //Call AccountTriggerHelper
        }
    }
}