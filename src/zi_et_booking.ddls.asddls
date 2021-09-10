@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking BO view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ET_BOOKING as select from zet_tab_booking as Booking
composition [0..*] of ZI_ET_PASENGER as _Passenger
{
    key booking_uuid as BookingUuid,
    booking_id as BookingId,
    bus_id as BusId,
    start_point as StartPoint,
    end_point as EndPoint,
    start_date as StartDate,
    end_date as EndDate,
    booking_status as BookingStatus,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    _Passenger
}
