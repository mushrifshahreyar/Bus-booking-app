@EndUserText.label: 'Booking BO projection view'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_ET_BOOKING as projection on ZI_ET_BOOKING as Booking {
    key BookingUuid,
    @Search.defaultSearchElement: true
    BookingId,
    BusId,
    @Search.defaultSearchElement: true
    StartPoint,
    @Search.defaultSearchElement: true
    EndPoint,
    @Search.defaultSearchElement: true
    StartDate,
    @Search.defaultSearchElement: true
    EndDate,
    BookingStatus,
    @Search.defaultSearchElement: true
    CreatedBy,
    @Search.defaultSearchElement: true
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Passenger : redirected to composition child ZC_ET_PASENGER
}
