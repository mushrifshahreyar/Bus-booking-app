@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'User BO View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_USER_GRP2 as select from zuser_grp2 as User 
association [1..1] to ZI_BOOKING_GRP2 as _Booking on  $projection.UserId = _Booking.UserId {
    key user_id as UserId,
    user_name as UserName,
    contact_number as ContactNumber,
    age as Age,
    _Booking
}
