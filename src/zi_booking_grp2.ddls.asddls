@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking BO View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_BOOKING_GRP2 as select from ZBOOKING_GRP2 as Booking
//association [1..1] to ZI_SCHEDULE_GRP2 as _Schedule on $projection.ScheduleId = _Schedule.ScheduleId
association to parent ZI_SCHEDULE_GRP2 as _Schedule on $projection.ScheduleId = _Schedule.ScheduleId
association [1..1] to ZI_USER_GRP2 as _User on  $projection.UserId = _User.UserId
  {
    key booking_id as BookingId,
    user_id as UserId,
    schedule_id as ScheduleId,
    booking_date as BookingDate,
    booking_status as BookingStatus,
    seat_number as SeatNumber,
    waitlist_number as WaitlistNumber,
    _Schedule,
    _User
}
