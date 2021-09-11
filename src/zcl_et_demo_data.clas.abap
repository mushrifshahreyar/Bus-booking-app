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
      ( booking_uuid = '02D5290E594C1EDA93815057FD949924' booking_id = '00000001' bus_id = '070001' start_point = 'Mumbai' end_point = 'bangalore' start_date = '20210922184530' end_date = '20210922184530' booking_status = 'Booked' created_by = 'ALIFIYA'
created_at =
'20210922184530' last_changed_by = 'ALIFIYA' last_changed_at = '20210922184530' )
    ).


    DATA itab1 TYPE TABLE OF zet_tab_pasenger.

*   fill internal travel table (itab1)
    itab1 = VALUE #(
      ( passenger_uuid = '02D5290E594C1EDA93815057FD949926' booking_uuid = '02D5290E594C1EDA93815057FD949924' first_name = 'Alifiya' last_name = 'Hussain' age = '23' contact_number = '9876543219' passenger_status = 'Booked' waitlist_number = '0'
created_by = 'ALIFIYA' created_at = '20210922184530' last_changed_by = 'ALIFIYA' last_changed_at = '20210922184530' )

    ).

    DATA itab2 TYPE TABLE OF zet_tab_buss.

*   fill internal travel table (itab2)
    itab2 = VALUE #(
      ( bus_id = '070001' bus_name = 'Parveen Travels' bus_capacity = '30' start_point = 'Mumbai' end_point = 'bangalore' start_date = '20210921184530' end_date = '20210922184530' seats_left = '10' total_wailist = '0' )

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
