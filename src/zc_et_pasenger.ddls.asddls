@EndUserText.label: 'passenger BO projection view'
@AccessControl.authorizationCheck: #CHECK
 @Search.searchable: true
 @Metadata.allowExtensions: true
define view entity ZC_ET_PASENGER as projection on ZI_ET_PASENGER as passenger{
    key PassengerUuid,
    BookingUuid,
    @Search.defaultSearchElement: true
    FirstName,
    @Search.defaultSearchElement: true
    LastName,
    Age,
    ContactNumber,
    @Search.defaultSearchElement: true
    PassengerStatus,
    WaitlistNumber,
    @Search.defaultSearchElement: true
    CreatedBy,
    @Search.defaultSearchElement: true
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Booking : redirected to parent ZC_ET_BOOKING
}
