@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Schedule BO View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_SCHEDULE_GRP2 as select from zschedule_grp2 as Schedule 
association [1..1] to ZI_BUS_GRP2 as _Bus on $projection.BusId = _Bus.BusId 
//association [1..*] to ZI_BOOKING_GRP2 as _Booking on $projection.ScheduleId = _Booking.ScheduleId
composition [0..*] of ZI_BOOKING_GRP2 as _Booking 

{
    key schedule_id as ScheduleId,
    bus_id as BusId,
    start_point as StartPoint,
    end_point as EndPoint,
    start_date as StartDate,
    end_date as EndDate,
    start_time as StartTime,
    end_time as EndTime,
    seats_left as SeatsLeft,
    currency_code as CurrencyCode,
    fare as Fare,
    _Bus,
    _Booking
}
