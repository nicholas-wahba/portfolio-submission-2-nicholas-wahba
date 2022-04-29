<?php
    // Server
    $server = "localhost";

    // Username
    $username = "root";

    // Password
    $password = "";

    // Database
    $database = "salers";

    // Global connection
    $connection = null;

    function connect() {
        global $server;
        global $username;
        global $password;
        global $database;
        global $connection;

        // Is $connection null?
        // If so, connect to the database server.
        // If not, do nothing (because the connection already exists).
        if($connection == null) {
            $connection = mysqli_connect($server, $username, $password, $database);
        }
    }

    function updateTable() {
        // Use the global $connection.
        global $connection;
        // Perform validation.
        // (1) Do the keys exist?
        if(isset($_POST["customer_id"]) &&
           isset($_POST["first_name"]) &&
           isset($_POST["last_name"]) &&
           isset($_POST["city"]) &&
           isset($_POST["state"])) {

            // (2) Confirm the values.
            // Convert string input (to prevent injection attacks).
            $firstName = htmlspecialchars($_POST["first_name"]);
            $lastName = htmlspecialchars($_POST["last_name"]);
            $state = htmlspecialchars($_POST["state"]);
            $city = htmlspecialchars($_POST["city"]);
            // With type="number", this will probably be a number,
            //  but, just to be sure, use intval() to force a conversion.
            $customerId = intval($_POST["customer_id"]);

            // Is $connection null?
            // If so, do nothing.
            if($connection != null) {
                // Using the $connection, insert data into the database.
                $results = mysqli_query($connection, "INSERT INTO customers (customer_id, first_name, last_name, city, state) VALUES({$customerId}, '{$firstName}', '{$lastName}', '{$city}', '{$state}')");
            }
        }
    }

    function salesTable() {
        // Use global $connection locally.
        global $connection;

         // Is $connection null?
         // If so, do nothing (because a connection has not been made yet).
        if($connection != null) {
            // Get the results of a query using the connection
            // TODO: Write SQL SELECT statement to read first name, last name, city, and state.
            $sql = "SELECT first_name, last_name, city, state  FROM customers";
            $results = mysqli_query($connection, $sql);

            // Start the HTML table.
            echo("<table><tbody>");

            // For every row, generate a new HTML row.
            while($row = mysqli_fetch_assoc($results)) {
                // Start the row.
                echo("<tr>");

                // TODO: for each key, add a column entry in HTML using echo().
                echo("<td>{$row["first_name"]}</td>");
                echo("<td>{$row["last_name"]}</td>");
                echo("<td>{$row["city"]}</td>");
                echo("<td>{$row["state"]}</td>");
                // Reminder: HTML tables use <td> (https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table#examples).
                
                // End the row.
                echo("</tr>");
            }

            // End the HTML table.
            echo("</tbody></table>");
        }
    }


    
    function close() {
        // Use the global $connection locally.
        global $connection;

        // Unlike connect(), we test for a value *not* equal to null.
        if($connection != null) {
            // Close the connection.
            mysqli_close($connection);
        }
    } 
?>