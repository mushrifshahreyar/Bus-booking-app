@EndUserText.label: 'Booking BO Projection View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZC_BOOKING_GRP2 as projection on ZI_BOOKING_GRP2 {
    @Search.defaultSearchElement: true
    key BookingId,
    UserId,
    ScheduleId,
    BookingDate,
    BookingStatus,
    SeatNumber,
    WaitlistNumber,
    /* Associations */
    _Schedule: redirected to parent ZC_SCHEDULE_GRP2,
    _User
}
