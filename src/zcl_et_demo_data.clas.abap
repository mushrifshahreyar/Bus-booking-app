CLASS zcl_et_demo_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_et_demo_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*   delete existing entries in the database table
    DELETE FROM zet_tab_booking.
*   delete existing entries in the database table
    DELETE FROM zet_tab_pasenger.
*   delete existing entries in the database table
    DELETE FROM zet_tab_buss.

    DATA itab TYPE TABLE OF zet_tab_booking.

*   fill internal travel table (itab)
    itab = VALUE #(
      ( booking_uuid = '02D5290E594C1EDA93815057FD949924' booking_id = '00000001' bus_id = '070001' start_point = 'Mumbai' end_point = 'bangalore' start_date = '20210921' end_date = '20210922' booking_status = 'Booked' created_by = 'ALIFIYA' created_at =
'20210922184530' last_changed_by = 'ALIFIYA' last_changed_at = '20210922184530' )
      ( booking_uuid = '02D5290E594C1EDA93815C50CD7AE76A' booking_id = '00000002' bus_id = '070007' start_point = 'Jaipur' end_point = 'Gurgaon' start_date = '20210928' end_date = '20210929' booking_status = 'Booked' created_by = 'AMRITA' created_at =
'20210927142535' last_changed_by = 'AMRITA' last_changed_at = '20210927142535' )
      ( booking_uuid = '02D5290E594C1EDA93815057FD947659' booking_id = '00000003' bus_id = '070012' start_point = 'Prayagraj' end_point = 'Bhopal' start_date = '20211003' end_date = '20211004' booking_status = 'Cancelled' created_by = 'PRIYA' created_at
= '20211001145012' last_changed_by = 'PRIYA' last_changed_at = '20211002145012' )
      ( booking_uuid = '02D5290E594C1EDA93815057FD970324' booking_id = '00000004' bus_id = '070044' start_point = 'Indore' end_point = 'Jodhpur' start_date = '20211020' end_date = '20211021' booking_status = 'Booked' created_by = 'MUSHRIF' created_at =
'20211015184530' last_changed_by = 'MUSHRIF' last_changed_at = '20211015184530' )
    ).


    DATA itab1 TYPE TABLE OF zet_tab_pasenger.

*   fill internal travel table (itab1)
    itab1 = VALUE #(
      ( passenger_uuid = '02D5290E594C1EDA93815057FD949926' booking_uuid = '02D5290E594C1EDA93815057FD949924' first_name = 'Alifiya' last_name = 'Hussain' age = '23' contact_number = '9876543219' passenger_status = 'Booked' waitlist_number = '0'
created_by = 'ALIFIYA' created_at = '20210922184530' last_changed_by = 'ALIFIYA' last_changed_at = '20210922184530' )
      ( passenger_uuid = '02D5290E594C1EDA93815C50CD7AE75P' booking_uuid = '02D5290E594C1EDA93815C50CD7AE76A' first_name = 'Amrita' last_name = 'Kumari' age = '22' contact_number = '9876543129' passenger_status = 'Waitlist' waitlist_number = '1'
created_by = 'AMRITA' created_at = '20210927142535' last_changed_by = 'AMRITA' last_changed_at = '20210927142535')
      ( passenger_uuid = '02D5290E594C1EDA93815057FD947665' booking_uuid = '02D5290E594C1EDA93815057FD947659' first_name = 'Priya' last_name = 'Sharma' age = '23' contact_number = '9876542319' passenger_status = 'Cancelled' waitlist_number = '0'
created_by = 'PRIYA' created_at = '20211001145012' last_changed_by = 'PRIYA' last_changed_at = '20211002145012' )
      ( passenger_uuid = '02D5290E594C1EDA93815057FD973024' booking_uuid = '02D5290E594C1EDA93815057FD970324' first_name = 'Mushrif' last_name = 'Shaikh' age = '23' contact_number = '9876534219' passenger_status = 'Booked' waitlist_number = '0'
created_by = 'MUSHRIF' created_at = '20211015184530' last_changed_by = 'MUSHRIF' last_changed_at = '20211015184530' )
    ).

    DATA itab2 TYPE TABLE OF zet_tab_buss.

*   fill internal travel table (itab2)
    itab2 = VALUE #(
      ( bus_id = '070001' bus_name = 'Parveen Travels' bus_capacity = '30' start_point = 'Mumbai' end_point = 'bangalore' start_date = '20210921' end_date = '20210922' seats_left = '10' total_wailist = '0' )
      ( bus_id = '070007' bus_name = 'SRS Travels' bus_capacity = '30' start_point = 'Jaipur' end_point = 'Gurgaon' start_date = '20210928' end_date = '20210929' seats_left = '0' total_wailist = '1' )
      ( bus_id = '070012' bus_name = 'Jabbar Travels' bus_capacity = '30' start_point = 'Prayagraj' end_point = 'Bhopal' start_date = '20211003' end_date = '20211004' seats_left = '18' total_wailist = '0' )
      ( bus_id = '070044' bus_name = 'Hans Travels' bus_capacity = '30' start_point = 'Indore' end_point = 'Jodhpur' start_date = '20211020' end_date = '20211021' seats_left = '6' total_wailist = '0' )
    ).


*   insert the new table entries
    INSERT zet_tab_booking FROM TABLE @itab.
*   insert the new table entries
    INSERT zet_tab_pasenger FROM TABLE @itab1.
*   insert the new table entries
    INSERT zet_tab_buss FROM TABLE @itab2.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully!| ).

  ENDMETHOD.
ENDCLASS.
