<%-- 
    Document   : adminpage
    Created on : Apr 8, 2020, 7:15:43 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
       <header>
 <div class="menu-wrap">
  <input type="checkbox" class="toggler">
  <div class="hamburger"><div></div></div>
  <div class="menu">
    <div>
      <div>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
</header>    </head>
<div class="cards-list">
 
<div class="card 1">
  <div class="card_image"> <img src="https://www.transporeon.com/fileadmin/general/icons/svg_RGB_Color/transporeon_icon_team_color_2019_rgb.svg" /> </div>
  <div class="card_title title-white">
    <p>View/Register Driver</p>
  </div>
</div>

  <div class="card 2">
  <div class="card_image">
    <img src="https://www.transporeon.com/fileadmin/general/icons/svg_RGB_Color/transporeon_icon_team_color_2019_rgb.svg" />
    </div>
  <div class="card_title title-white">
    <p>View Customer</p>
  </div>
</div>

<div class="card 3">
  <div class="card_image">
    <img src="https://www.transporeon.com/fileadmin/general/product_symbols/transporeon_product_billing.svg" />
  </div>
  <div class="card_title">
    <div class="card_title title-black">
    <p>Booking Details</p>
  </div>
</div>
</div>
  <div class="card 4">
  <div class="card_image">
    <img src="https://www.transporeon.com/fileadmin/general/icons/svg_RGB_Color/transporeon_icon_checklist_clipboard_color_2019_rgb.svg" />
    </div>
  <div class="card_title title-black">
    <p>Add List of jobs</p>
  </div>
  </div>
<div class="card 5">
  <div class="card_image">
    <img src="https://www.transporeon.com/fileadmin/general/product_symbols/transporeon_product_surcharge_management.svg" />
    </div>
  <div class="card_title title-black">
    <p>Calculate Price</p>
  </div>
  </div>
</div>
<style>
           :root {
  --primary-color: #dark-gray;
  --secondary-color: rgba(229, 148, 0, 0.9);
  --overlay-color: rgba(24, 39, 51, 0.85);
  --menu-speed: 0.75s;
}

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Roboto', sans-serif;
  line-height: 1.4;
}

.container {
  max-width: 960px;
  padding: 0 3rem;
  margin: auto;
  overflow: hidden;
}

#showcase {
  position: relative;
  height: 100vh;
  background: var(--primary-color);
  color: #fff;
}

#showcase:before {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  content: '';
  background: url('https://source.unsplash.com/1600x900/?nature,water') no-repeat center center/cover;
  z-index: -1;
}

#showcase .showcase-container {
  display: flex;
  flex-direction: column;
  height: 100%;
  align-items: center;
  justify-content: center;
  text-align: center;
}


.btn {
  display: inline-block;
  padding: 0.75rem 1.5rem;
  margin-top: 1rem;
  background: var(--primary-color);
  color: #fff;
  text-decoration: none;
  border: none;
  transition: opacity 1s ease-in-out;
}

.btn:hover { opacity: 0.7; }


/* START of MENU STYLING */
.menu-wrap {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 1;
}

.menu-wrap .toggler {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 2;
  width: 50px;
  height: 50px;
  opacity: 0;
  cursor: pointer;
}

.menu-wrap .hamburger {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  display: flex;
  width: 60px;
  height: 60px;
  padding: 1rem;
  background: var(--primary-color);
  align-items: center;
  justify-content: center;
}

/* Hamburger Line */
.menu-wrap .hamburger > div {
  position: relative;
  display: flex;
  width: 100%;
  height: 2px;
  background: #fff;
  flex: none;
  align-items: center;
  justify-content: center;
  transition: all 0.4s ease;
}

/* Hamburger Lines - Top & Bottom */

.menu-wrap .hamburger > div:before,
.menu-wrap .hamburger > div:after {
  position: absolute;
  top: -10px;
  z-index: 1;
  width: 100%;
  height: 2px;
  background: inherit;
  content: '';
}

/* Moves Line Down */
.menu-wrap .hamburger > div:after { top: 10px; }

/* Toggler Animation */
.menu-wrap .toggler:checked + .hamburger > div { transform: rotate(135deg); }


/* Turns Lines Into X */
.menu-wrap .toggler:checked + .hamburger > div:before,
.menu-wrap .toggler:checked + .hamburger > div:after {
  top: 0;
  transform: rotate(90deg);
}

/* Rotate On Hover When Checked */
.menu-wrap .toggler:checked:hover + .hamburger > div { transform: rotate(225deg); }

/* Show Menu */
.menu-wrap .toggler:checked ~ .menu {
  visibility: visible;
}

.menu-wrap .toggler:checked ~ .menu > div {
  transform: scale(1);
  transition-duration: var(--menu-speed);
}

.menu-wrap .toggler:checked ~ .menu > div > div {
  opacity: 1;
  transition: opacity 0.4s ease 0.4s;
}

.menu-wrap .menu {
  position: fixed;
  top: 0;
  left: 0;
  display: flex;
  width: 100%;
  height: 100%;
  visibility: hidden;
  overflow: hidden;
  align-items: center;
  justify-content: center;
}

.menu-wrap .menu > div {
  display: flex;
  width: 200vw;
  height: 200vh;
  background: var(--overlay-color);
  border-radius: 50%;
  flex: none;
  align-items: center;
  justify-content: center;
  transform: scale(0);
  transition: all 0.4s ease;
}

.menu-wrap .menu > div > div {
  max-width: 90vw;
  max-height: 100vw;
  text-align: center;
  opacity: 0;
  transition: opacity 0.4s ease;
}

.menu-wrap .menu > div > div > ul > li {
  padding: 1rem;
  color: #fff;
  font-size: 1.5rem;
  list-style: none;
}

.menu-wrap .menu > div > div > ul > li > a {
  color: inherit;
  text-decoration: none;
  transition: color 0.4s ease;
}

.menu-wrap .menu > div > div > ul > li > a:hover {
  color: var(--secondary-color);
}
.cards-list {
  z-index: 0;
  width: 100%;
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}

.card {
  margin: 200px auto;
  width: 206px;
  height: 206px;
  border-radius: 20px;
box-shadow: 5px 5px 20px 7px rgba(0,0,0,0.25), -5px -5px 20px 7px rgba(0,0,0,0.22);
  cursor: pointer;20px
  transition: 0.4s;
}
header {
width: 100% !important;
height: 50px;
background: rgba(0, 0, 0, 0.6);
}
.card .card_image {
  width: inherit;
  height: inherit;
  border-radius: 40px;
}

.card .card_image img {
  width: inherit;
  height: inherit;
  border-radius: 40px;
  object-fit: cover;
}

.card .card_title {
  text-align: center;
  border-radius: 0px 0px 40px 40px;
  font-family: sans-serif;
  font-weight: bold;
  font-size: 19px;
  margin-top: -1px;
  height: 40px;
}

.card:hover {
  transform: scale(0.9, 0.9);
  box-shadow: 5px 5px 30px 15px rgba(0,0,0,0.25),
    -5px -5px 30px 15px rgba(0,0,0,0.22);
}

.title-white {
  color: gray;
}

.title-black {
  color: gray;
}

@media all and (max-width: 500px) {
  .card-list {
    /* On small screens, we are no longer using row direction but column */
    flex-direction: column;
  }
}


/*
.card {
  margin: 30px auto;
  width: 300px;
  height: 300px;
  border-radius: 40px;
  background-image: url('https://i.redd.it/b3esnz5ra34y.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
  background-repeat: no-repeat;
box-shadow: 5px 5px 30px 7px rgba(0,0,0,0.25), -5px -5px 30px 7px rgba(0,0,0,0.22);
  transition: 0.4s;
}
*/
</style>

</head>
</body>
</html>  
