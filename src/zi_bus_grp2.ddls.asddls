@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Bus BO View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_BUS_GRP2 as select from zbus_grp2 as Bus
association [1..*] to ZI_SCHEDULE_GRP2 as _Schedule on $projection.BusId = _Schedule.BusId 
{
    key bus_id as BusId,
    bus_name as BusName,
    bus_capacity as BusCapacity,
    _Schedule
}
