@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking BO view'
define root view entity ZI_ET_BOOKING as select from zet_tab_booking as Booking
composition [0..*] of ZI_ET_PASENGER as _Passenger
association [0..1] to ZI_ET_BUSS as _Bus on $projection.BusId = _Bus.BusId
{
    key booking_uuid as BookingUuid,
    booking_id as BookingId,
    bus_id as BusId,
    _Bus.StartPoint as StartPoint,
    _Bus.EndPoint as EndPoint,
    _Bus.StartDate as StartDate,
    _Bus.EndDate as EndDate,
    booking_status as BookingStatus,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.lastChangedBy: true
    last_changed_by as LastChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
    _Passenger,
    _Bus
}
