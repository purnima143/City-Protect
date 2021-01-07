<!-- Author: 
      Rahul Hegde,
      Gunashree
-->
<?php
// output headers so that the file is downloaded rather than displayed
      header('Content-Type: text/csv; charset=utf-8');
      header('Content-Disposition: attachment; filename=userdata.csv');

      // create a file pointer connected to the output stream
      $output = fopen('php://output', 'w');

      // output the column headings
      fputcsv($output, array('User Name', 'User ID','Address','Aadhar No','Gender'));

      // fetch the data
      mysql_connect('localhost', 'root', '');
      mysql_select_db('crime_portal');
      $rows = mysql_query('CALL `getUsers`()');

      // loop over the rows, outputting them
      while ($row = mysql_fetch_assoc($rows)) fputcsv($output, $row);
?>