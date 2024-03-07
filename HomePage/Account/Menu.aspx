<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="HomePage.Menu" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
         body {
         font-family: Arial, sans-serif;
         background-color: #333;        
         margin: 0;
         padding: 0;
         background-image: url('../Images/easymart1.png');
         background-size: cover;
         background-position: center;
         height: 100vh;
         overflow: hidden;

        .card-img-top {
        height: 200px; 
        object-fit: cover; 

    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Shop</h1>
          
            <div class="form-group">
                <input type="text" id="txtSearch" runat="server" class="form-control" placeholder="Search...">
            </div>
            
            
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
                    <a class="nav-link" data-toggle="tab" href="#cannedgoods">Canned Goods</a>
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
                   <div class="tab-content">
    <div id="meat" class="tab-pane fade">
        <div class="row" id="meatItems">                     
            <div class="col-md-3">
                <div class="card">
                    <img src="/images/bacon.jpg" class="card-img-top" alt="Bacon">
                    <div class="card-body">
                        <h5 class="card-title">Bacon</h5>
                        <p class="card-text">Price: $2</p>
                        <p>Supplier: Sm Supermarket</p>
                        <button class="btn btn-primary">Add to Cart</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="/images/Steak.jpg" class="card-img-top" alt="Steak">
                    <div class="card-body">
                        <h5 class="card-title">Steak</h5>
                        <p class="card-text">Price: $3</p>
                        <p>Supplier: Gibo Supermarket</p>
                        <button class="btn btn-primary">Add to Cart</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="/images/sausage.jpg" class="card-img-top" alt="Sausage">
                    <div class="card-body">
                        <h5 class="card-title">Sausage</h5>
                        <p class="card-text">Price: $1</p>
                        <p>Supplier: Gibo Supermarket</p>
                        <button class="btn btn-primary">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="fish" class="tab-pane fade">
        <div class="row" id="fishItems">                     
            <div class="col-md-3">
                <div class="card">
                    <img src="/images/pileoffish.jpg" class="card-img-top" alt="Pile of Fish">
                    <div class="card-body">
                        <h5 class="card-title">Pile of Fish</h5>
                        <p class="card-text">Price: $6</p>
                        <p>Supplier: Victor Supermarket</p>
                        <button class="btn btn-primary">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                           <div id="fruits" class="tab-pane fade">
                <div class="row" id="fruitsItems">                     
                    <div class="col-md-3">
                        <div class="card">
                            <img src="/images/watermelon.jpg" class="card-img-top" alt="Watermelon">
                            <div class="card-body">
                                <h5 class="card-title">Watermelon</h5>
                                <p class="card-text">Price: $2.50</p>
                                <p>Supplier: Victor Supermarket</p>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <img src="/images/apple.jpg" class="card-img-top" alt="Apple">
                            <div class="card-body">
                                <h5 class="card-title">Apple</h5>
                                <p class="card-text">Price: $1.50</p>
                                <p>Supplier: Jonin Supermarket</p>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <img src="/images/greenapple.jpg" class="card-img-top" alt="Green Apple">
                            <div class="card-body">
                                <h5 class="card-title">Green Apple</h5>
                                <p class="card-text">Price: $1.55</p>
                                <p>Supplier: Victor Supermarket</p>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <img src="/images/orange.jpg" class="card-img-top" alt="Orange">
                            <div class="card-body">
                                <h5 class="card-title">Orange</h5>
                                <p class="card-text">Price: $1</p>
                                <p>Supplier: Victor Supermarket</p>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <img src="/images/strawberry.jpg" class="card-img-top" alt="Strawberry">
                            <div class="card-body">
                                <h5 class="card-title">Strawberry</h5>
                                <p class="card-text">Price: $1.50</p>
                                <p>Supplier: Arvin Supermarket</p>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                    </div>
                </div>
                <div id="cannedgoods" class="tab-pane fade">
                    <div class="row" id="cannedGoodsItems">                     
                       
                    </div>
                </div>
                <div id="pasta" class="tab-pane fade">
                    <div class="row" id="pastaItems">                     
                       div class="col-md-3">
                        <div class="card">
                            <img src="/images/spag.jpg" class="card-img-top" alt="Spaghetti">
                            <div class="card-body">
                                <h5 class="card-title">Spaghetti</h5>
                                <p class="card-text">Price: $5</p>
                                <p>Supplier: Arvin Supermarket</p>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div id="frozenfoods" class="tab-pane fade">
                    <div class="row" id="frozenFoodsItems">                     
                        <!-- Frozen Foods items will be dynamically populated here -->
                    </div>
                </div>
                <div id="snacks" class="tab-pane fade">
                    <div class="row" id="snacksItems">                     
                        <!-- Snacks items will be dynamically populated here -->
                    </div>
                </div>
                <div id="beverages" class="tab-pane fade">
                    <div class="row" id="beveragesItems">                     
                        <!-- Beverages items will be dynamically populated here -->
                    </div>
                </div>
                <div id="others" class="tab-pane fade">
                    <div class="row" id="othersItems">                     
                        <!-- Others items will be dynamically populated here -->
                    </div>
                </div>
            </div>
        </div>
        <div>
            <a href="Home.aspx" class="btn btn-secondary mt-3">Go Back to Homepage</a>
        </div>
    </form>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>

        document.addEventListener('DOMContentLoaded', function () {
            const tabs = document.querySelectorAll('.nav-link');
            tabs.forEach(tab => {
                tab.addEventListener('click', function (event) {
                    event.preventDefault();
                    const targetTabId = this.getAttribute('href');
                    const targetTabContent = document.querySelector(targetTabId);
                    const allTabsContent = document.querySelectorAll('.tab-pane');


                    allTabsContent.forEach(content => {
                        content.classList.remove('show', 'active');
                    });


                    targetTabContent.classList.add('show', 'active');


                    if (targetTabId === '#all') {
                        document.getElementById('allItems').style.display = 'block';
                        document.getElementById('meatItems').style.display = 'none';
                        document.getElementById('fishItems').style.display = 'none';
                        document.getElementById('fruitsItems').style.display = 'none';
                        document.getElementById('cannedGoodsItems').style.display = 'none';
                        document.getElementById('pastaItems').style.display = 'none';
                        document.getElementById('frozenFoodsItems').style.display = 'none';
                        document.getElementById('snacksItems').style.display = 'none';
                        document.getElementById('beveragesItems').style.display = 'none';
                        document.getElementById('othersItems').style.display = 'none';
                    } else if (targetTabId === '#meat') {
                        document.getElementById('allItems').style.display = 'none';
                        document.getElementById('meatItems').style.display = 'flex';
                        document.getElementById('fishItems').style.display = 'none';
                        document.getElementById('fruitsItems').style.display = 'none';
                        document.getElementById('cannedGoodsItems').style.display = 'none';
                        document.getElementById('pastaItems').style.display = 'none';
                        document.getElementById('frozenFoodsItems').style.display = 'none';
                        document.getElementById('snacksItems').style.display = 'none';
                        document.getElementById('beveragesItems').style.display = 'none';
                        document.getElementById('othersItems').style.display = 'none';
                    } else if (targetTabId === '#fish') {
                        document.getElementById('allItems').style.display = 'none';
                        document.getElementById('meatItems').style.display = 'none';
                        document.getElementById('fishItems').style.display = 'flex';
                        document.getElementById('fruitsItems').style.display = 'none';
                        document.getElementById('cannedGoodsItems').style.display = 'none';
                        document.getElementById('pastaItems').style.display = 'none';
                        document.getElementById('frozenFoodsItems').style.display = 'none';
                        document.getElementById('snacksItems').style.display = 'none';
                        document.getElementById('beveragesItems').style.display = 'none';
                        document.getElementById('othersItems').style.display = 'none';
                    } else if (targetTabId === '#fruits') {
                        document.getElementById('allItems').style.display = 'none';
                        document.getElementById('meatItems').style.display = 'none';
                        document.getElementById('fishItems').style.display = 'none';
                        document.getElementById('fruitsItems').style.display = 'flex';
                        document.getElementById('cannedGoodsItems').style.display = 'none';
                        document.getElementById('pastaItems').style.display = 'none';
                        document.getElementById('frozenFoodsItems').style.display = 'none';
                        document.getElementById('snacksItems').style.display = 'none';
                        document.getElementById('beveragesItems').style.display = 'none';
                        document.getElementById('othersItems').style.display = 'none';
                    } // Repeat similar conditions for other tabs
                });
            });
        });
    </script>
</body>
</html>