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
            position: relative; 
        }

        .card-img-top {
            height: 200px;
            object-fit: cover;
        }

        .upper-left-button {
            position: absolute;
            top: 10px;
            left: 10px;
        }

        .upper-right-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        
        .menu-tab {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
            z-index: 1000; 
        }

        .menu-tab ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .menu-tab ul li {
            display: inline-block;
            margin-right: 20px;
        }

        .menu-tab ul li:last-child {
            margin-right: 0;
        }

        .menu-tab ul li a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .menu-tab ul li a:hover {
            color: #f9bc42; 
        }
    </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="container">
              <button type="button" onclick="goToHome()" class="btn btn-primary">Back</button>
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
        <div id="meat" class="tab-pane fade scrollable-container">
            <div class="row" id="meatItems">                     
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/bacon.jpg" class="card-img-top" alt="Bacon">
                        <div class="card-body">
                            <h5 class="card-title">Bacon</h5>
                            <p class="card-text">Price: $2</p>
                            <p>Supplier: Sm Supermarket</p>
                       <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Bacon" />

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/Steak.jpg" class="card-img-top" alt="Steak">
                        <div class="card-body">
                            <h5 class="card-title">Steak</h5>
                            <p class="card-text">Price: $3</p>
                            <p>Supplier: Gibo Supermarket</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Steak" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/sausage.jpg" class="card-img-top" alt="Sausage">
                        <div class="card-body">
                            <h5 class="card-title">Sausage</h5>
                            <p class="card-text">Price: $1</p>
                            <p>Supplier: Gibo Supermarket</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Sausage" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div id="fish" class="tab-pane fade scrollable-container">
            <div class="row" id="fishItems">                     
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/pileoffish.jpg" class="card-img-top" alt="Pile of Fish">
                        <div class="card-body">
                            <h5 class="card-title">Pile of Fish</h5>
                            <p class="card-text">Price: $6</p>
                            <p>Supplier: Victor Supermarket</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Pile of Fish" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
   
        <div id="fruits" class="tab-pane fade scrollable-container">
            <div class="row scrollable-container" id="fruitsItems">                     
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/watermelon.jpg" class="card-img-top" alt="Watermelon">
                        <div class="card-body">
                            <h5 class="card-title">Watermelon</h5>
                            <p class="card-text">Price: $2.50</p>
                            <p>Supplier: Victor Supermarket</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Watermelon" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/apple.jpg" class="card-img-top" alt="Apple">
                        <div class="card-body">
                            <h5 class="card-title">Apple</h5>
                            <p class="card-text">Price: $1.50</p>
                            <p>Supplier: Jonin Supermarket</p>
           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Apple" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/greenapple.jpg" class="card-img-top" alt="Green Apple">
                        <div class="card-body">
                            <h5 class="card-title">Green Apple</h5>
                            <p class="card-text">Price: $1.55</p>
                            <p>Supplier: Victor Supermarket</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Green Apple" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/orange.jpg" class="card-img-top" alt="Orange">
                        <div class="card-body">
                            <h5 class="card-title">Orange</h5>
                            <p class="card-text">Price: $1</p>
                            <p>Supplier: Victor Supermarket</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Orange" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/strawberry.jpg" class="card-img-top" alt="Strawberry">
                        <div class="card-body">
                            <h5 class="card-title">Strawberry</h5>
                            <p class="card-text">Price: $1.50</p>
                            <p>Supplier: Arvin Supermarket</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Strawberry"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
   
        <div id="cannedgoods" class="tab-pane fade scrollable-container">
            <div class="row scrollable-container" id="cannedItems">                     
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/sardines.jpg" class="card-img-top" alt="Sardines">
                        <div class="card-body">
                            <h5 class="card-title">Sardines</h5>
                            <p class="card-text">Price: $0.50</p>
                            <p>Supplier: Victor Supermarket</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Sardines" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/flakesinoil.jpg" class="card-img-top" alt="Sardines">
                        <div class="card-body">
                            <h5 class="card-title">Flakes in Oil</h5>
                            <p class="card-text">Price: $0.50</p>
                            <p>Supplier: Victor Supermarket</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Flakes in Oil" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="tab-content">
        <div id="pasta" class="tab-pane fade scrollable-container">
            <div class="row scrollable-container" id="Pasta">
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/spag.jpg" class="card-img-top" alt="Spaghetti" />
                        <div class="card-body">
                            <h5 class="card-title">Spaghetti</h5>
                            <p class="card-text">Price: $2.13</p>
                            <p>Supplier: Glendex Store</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Spaghetti" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/sauce.png" class="card-img-top" alt="Pasta Sauce" />
                        <div class="card-body">
                            <h5 class="card-title">Pasta Sauce</h5>
                            <p class="card-text">Price: $0.20</p>
                            <p>Supplier: Dirk Store</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Pasta Sauce" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div id="frozenfoods" class="tab-pane fade scrollable-container">
            <div class="row scrollable-container" id="Frozen Foods">
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/hotdog.png" class="card-img-top" alt="Hotdog" />
                        <div class="card-body">
                            <h5 class="card-title">Hotdog</h5>
                            <p class="card-text">Price: $0.15</p>
                            <p>Supplier: Kidet Store</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Hotdog" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/skinless.png" class="card-img-top" alt="Skinless" />
                        <div class="card-body">
                            <h5 class="card-title">Skinless</h5>
                            <p class="card-text">Price: $0.35</p>
                            <p>Supplier: Axel Store</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Skinless"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/cookedham.jpg" class="card-img-top" alt="CookedHam" />
                        <div class="card-body">
                            <h5 class="card-title">Cooked Ham</h5>
                            <p class="card-text">Price: $0.40</p>
                            <p>Supplier: Sky Store</p>
                           <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Cooked Ham" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div id="snacks" class="tab-pane fade scrollable-container">
        <div class="row scrollable-container" id="snacks">
            <div class="col-md-3">
                <div class="card mb-4">
                    <img src="/images/nova.jpg" class="card-img-top" alt="Nova" />
                    <div class="card-body">
                        <h5 class="card-title">Nova</h5>
                        <p class="card-text">Price: $0.42</p>
                        <p>Supplier: Henri Store</p>
                       <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Nova" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-4">
                    <img src="/images/biscuit.jpeg" class="card-img-top" alt="Biscuit" />
                    <div class="card-body">
                        <h5 class="card-title">Bundle of Biscuit</h5>
                        <p class="card-text">Price: $5.50</p>
                        <p>Supplier: Rubin Drugstore</p>
                       <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Bundle of Biscuit" />
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-4">
                    <img src="/images/gardenia.jpg" class="card-img-top" alt="Gardenia" />
                    <div class="card-body">
                        <h5 class="card-title">Gardenia</h5>
                        <p class="card-text">Price: $1.10</p>
                        <p>Supplier: Gibo Store</p>
                       <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Gardenia" />
                    </div>
                </div>
            </div>
        </div>
    </div>
         <div class="tab-content">
        <div id="beverages" class="tab-pane fade scrollable-container">
            <div class="row scrollable-container" id="Beverages">
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/redhorse.jpg" class="card-img-top" alt="Redhorse" />
                        <div class="card-body">
                            <h5 class="card-title">Redhorse</h5>
                            <p class="card-text">Price: $3</p>
                            <p>Supplier: Glendex Store</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Redhorse"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
              <div class="card mb-4">
                        <img src="/images/primera.jpg" class="card-img-top" alt="Primera" />
                        <div class="card-body">
                            <h5 class="card-title">Primera</h5>
                            <p class="card-text">Price: $4.20</p>
                            <p>Supplier: Sky Beerhouse</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Primera" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/tanduay.jpg" class="card-img-top" alt="Tanduay" />
                        <div class="card-body">
                            <h5 class="card-title">Tanduay</h5>
                            <p class="card-text">Price: $2.50</p>
                            <p>Supplier: Tambayan ni Gibo</p>
                          <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Tanduay"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/kulafu.png" class="card-img-top" alt="Kulafu" />
                        <div class="card-body">
                            <h5 class="card-title">Kulafu</h5>
                            <p class="card-text">Price: $1.75</p>
                            <p>Supplier: Kidet Mart</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Kulafuu" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="tab-content">         
       <div id="others" class="tab-pane fade scrollable-container">
            <div class="row scrollable-container" id="Others">
                <div class="col-md-3">
                    <div class="card mb-4">
                        <img src="/images/mop.jpg" class="card-img-top" alt="Mop" />
                        <div class="card-body">
                            <h5 class="card-title">Mop</h5>
                            <p class="card-text">Price: $6.42</p>
                            <p>Supplier: Henri Store</p>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Mop"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#meat') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#fish') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#fruits') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#cannedgoods') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#pasta') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#frozenfoods') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#snacks') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#beverages') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('others').classList.remove('show', 'active');
                        } else if (targetTabId === '#others') {
                            document.getElementById('all').classList.remove('show', 'active');
                            document.getElementById('meat').classList.remove('show', 'active');
                            document.getElementById('fish').classList.remove('show', 'active');
                            document.getElementById('fruits').classList.remove('show', 'active');
                            document.getElementById('cannedgoods').classList.remove('show', 'active');
                            document.getElementById('pasta').classList.remove('show', 'active');
                            document.getElementById('frozenfoods').classList.remove('show', 'active');
                            document.getElementById('snacks').classList.remove('show', 'active');
                            document.getElementById('beverages').classList.remove('show', 'active');
                        }
                    });
                });
            });

        </script>
        <script>
            function addToCart() {
                alert('Item added to cart.');
                showOrdersMessage();
            }

            function showOrdersMessage() {
                alert('Press the button to view your orders.');
                redirectToOrders();
            }

            function redirectToOrders() {
                window.location.href = 'Orders.aspx';
            }
            function goToHome() {
                window.location.href = "Home.aspx";
            }
        </script>
    </form>
    </body>
    </html>
