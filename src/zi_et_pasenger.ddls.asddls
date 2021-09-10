@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Passenger BO view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ET_PASENGER as select from zet_tab_pasenger as Passenger
association to parent ZI_ET_BOOKING as _Booking on $projection.BookingUuid = _Booking.BookingUuid
{
    key passenger_uuid as PassengerUuid,
    booking_uuid as BookingUuid,
    first_name as FirstName,
    last_name as LastName,
    age as Age,
    contact_number as ContactNumber,
    passenger_status as PassengerStatus,
    waitlist_number as WaitlistNumber,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    _Booking
}
