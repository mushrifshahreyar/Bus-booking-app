@EndUserText.label: 'Booking BO projection view'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_ET_BOOKING
  as projection on ZI_ET_BOOKING as Booking
{
  key BookingUuid,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'PNR Number'
      BookingId,
      BusId,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'From'
      @Consumption.valueHelpDefinition: [{entity:{
        name: 'ZI_ET_BUSS',
      element: 'StartPoint'
      } }]
      StartPoint,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'To'
      @Consumption.valueHelpDefinition: [{entity:{
      name: 'ZI_ET_BUSS',
      element: 'EndPoint'
      } }]
      EndPoint,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'Start Date'
      StartDate,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'End Date'
      EndDate,
      @EndUserText.label: 'Booking Status'
      BookingStatus,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'Created By'
      CreatedBy,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'Created At'
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Passenger : redirected to composition child ZC_ET_PASENGER,
      _Bus

}
