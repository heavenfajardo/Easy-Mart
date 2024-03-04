<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="HomePage.Menu" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
            color: #fff;
            margin: 0;
            padding: 0;
            background-image: url('../Images/easymart1.png');
            background-size: cover;
            background-position: center;
            overflow-y: auto; /* Enable vertical scrolling */
        }
        .container {
            max-width: 1400px; /* Increased max-width */
            margin: 20px auto;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            width: 100%;
            margin-bottom: 20px;
        }
        .nav-tabs {
            width: 100%;
            justify-content: center;
            margin-bottom: 20px;
            flex-wrap: wrap; /* Allow tabs to wrap */
        }
        .nav-item {
            flex-grow: 1; /* Each tab item takes up equal space */
        }
        .nav-link {
            color: #fff;
            background-color: transparent;
            border: none;
            cursor: pointer;
            margin: 0 10px;
            transition: color 0.3s ease;
            text-align: center; /* Center the text */
        }
        .nav-link.active {
            color: #f9bc42;
        }
        .row {
            width: 100%;
            margin-bottom: 20px;
        }
        .card {
            background-color: #444;
            border: none;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s ease;
            margin-bottom: 20px;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .card-body {
            padding: 20px;
        }
        .card-title {
            margin-bottom: 10px;
            color: #fff;
        }
        .card-text {
            color: #ddd;
        }
        .btn-primary {
            background-color: #f9bc42;
            border: none;
            color: #000;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #d88829;
        }
        .form-control-range {
            width: 100%;
        }
        ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        ul li {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Menu</h1>
            <!-- Search Bar -->
            <div class="form-group">
                <input type="text" id="txtSearch" runat="server" class="form-control" placeholder="Search...">
            </div>
            
            <!-- Categories -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#all">All</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#meat">Meat</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#fish">Fish</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#fruits">Fruits & Vegetables</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#cannedgoods">CannedGoods</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#pasta">Pasta</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#frozenfoods">Frozen Foods</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#snacks">Snacks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#beverages">Beverages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#others">Others</a>
                </li>
            </ul>
            
            <!-- Menu Items -->
            <div class="tab-content">
                <div id="all" class="tab-pane fade show active">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <img src="/Images/easymart1.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Product Name</h5>
                                    <p class="card-text">Description of the product goes here. It should provide relevant information about the product to entice users.</p>
                                    <p class="card-text">Price: $XX.XX</p>
                                    <div class="ratings">
                                        <span class="star">&#9733;</span>
                                        <span class="star">&#9733;</span>
                                        <span class="star">&#9733;</span>
                                        <span class="star">&#9733;</span>
                                        <span class="star">&#9734;</span>
                                        <span class="rating-count">(10)</span>
                                    </div>
                                    <button class="btn btn-primary">Add to Cart</button>
                                    <button class="btn btn-secondary">View Details</button>
                                </div>
                            </div>
                        </div>
                        <!-- Repeat the above card structure for each menu item -->
                    </div>
                </div>
               
                <div class="tab-content">
                <div id="meat" class="tab-pane fade">
                    <div id="meat" class="tab-pane fade show active">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">
                                    <img src="/Images/bacon.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bacon</h5>
                                        <p class="card-text">Store: Bacon.ph</p>
                                        <p class="card-text">Price: $XX.XX</p>
                                        <div class="ratings">
                                            <span class="star">&#9733;</span>
                                            <span class="star">&#9733;</span>
                                            <span class="star">&#9733;</span>
                                            <span class="star">&#9733;</span>
                                            <span class="star">&#9734;</span>
                                            <span class="rating-count">(10)</span>
                                        </div>
                                        <button class="btn btn-primary">Add to Cart</button>
                                        <button class="btn btn-secondary">View Details</button>
                                    </div>
                                    </div>
                 <div id="fish" class="tab-pane fade">
                 <!-- Insert meat items here -->
             </div>
                <div id="fruits" class="tab-pane fade">
                </div>
                <div id="cannedgoods" class="tab-pane fade">

                </div>
                <div id="pasta" class="tab-pane fade">

                </div>
                <div id="frozenfoods" class="tab-pane fade">

                </div>
                <div id="snacks" class="tab-pane fade">

                </div>
                <div id="beverages" class="tab-pane fade">

                </div>
                <div id="others" class="tab-pane fade">

                </div>
            </div>          
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
