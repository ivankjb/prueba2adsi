<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mali:wght@200&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <title>Sale Table</title>
</head>
<style>
        body{
            background: #f7f3e7;

}
     
</style>
<body>
	<h1  style = "font-family: 'Mali', cursive; font-size:260%"align="center">
		Welcome to the beginning, where you will find the sale table
	</h1>

	<table align="center">
	<thead>
		<tr style="font-family:'Shadows Into Light', cursive; font-size:180%" bgcolor=" #BB9887" >
			<th>Id</th>
			<th>Date Order</th>
			<th>Customer</th>
			<th>Product</th>
			<th>Worker</th>
			
		</tr>
	</thead>
	<tbody style = "font-family: 'Mali', cursive; font-size:130%">
		
			@forelse($sale as $elem)
			<tr>
			<th bgcolor='#E7D8C9'>{{$elem->id}}</th>
			<th>{{$elem->date_order}}</th>
			<th bgcolor='#E7D8C9'>{{$elem->customer_id}}</th>
            <th>{{$elem->product_id}}</th>
            <th bgcolor='#E7D8C9'>{{$elem->worker_id}}</th>
         
			<th>
			

			@empty
				No se Encuentran Datos!!!!!!
			@endforelse
			
		</tr>
	</tbody>

	</table>	
</body>
</html>