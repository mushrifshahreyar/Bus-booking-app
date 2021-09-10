@EndUserText.label: 'Schedule BO Projection View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_SCHEDULE_GRP2 as projection on ZI_SCHEDULE_GRP2 as Schedule {
    @Search.defaultSearchElement: true
    key ScheduleId,
    BusId,
    StartPoint,
    EndPoint,
    StartDate,
    EndDate,
    StartTime,
    EndTime,
    SeatsLeft,
    CurrencyCode,
    Fare,
    /* Associations */
    _Booking : redirected to composition child ZC_BOOKING_GRP2,
    _Bus
}
