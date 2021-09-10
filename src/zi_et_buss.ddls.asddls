@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Bus BO View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ET_BUSS as select from ZET_TAB_BUSS {
    key bus_id as BusId,
    bus_name as BusName,
    bus_capacity as BusCapacity,
    start_point as StartPoint,
    end_point as EndPoint,
    start_date as StartDate,
    end_date as EndDate,
    seats_left as SeatsLeft,
    total_wailist as TotalWailist
}
