<!-- Author: 
      Rahul Hegde,
      Gunashree
-->
<?php
// output headers so that the file is downloaded rather than displayed
      header('Content-Type: text/csv; charset=utf-8');
      header('Content-Disposition: attachment; filename=trafficdata.csv');

      // create a file pointer connected to the output stream
      $output = fopen('php://output', 'w');

      // output the column headings
      fputcsv($output, array('Traffic ID', 'TimeStamp'));

      // fetch the data
      mysql_connect('localhost', 'root', '');
      mysql_select_db('crime_portal');
      $rows = mysql_query('select * from userlog');

      // loop over the rows, outputting them
      while ($row = mysql_fetch_assoc($rows)) fputcsv($output, $row);
?>