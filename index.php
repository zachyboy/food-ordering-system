<?php
include 'includes/connection.php';
?>
<!DOCTYPE html>
<html>
<body>
<?php
				$result = mysqli_query($con, "SELECT * FROM items where not deleted;");
				while($row = mysqli_fetch_array($result))
				{
					echo '<tr><td>'.$row["name"].'</td><td>'.$row["price"].'</td>';                      
					echo '<td><div class="input-field col s12"><label for='.$row["id"].' class="">Quantity</label>';
					echo '<input id="'.$row["id"].'" name="'.$row['id'].'" type="text" data-error=".errorTxt'.$row["id"].'"><div class="errorTxt'.$row["id"].'"></div></td></tr>';
				}
				?>
</body>
</html>