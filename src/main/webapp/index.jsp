<%--
  Created by IntelliJ IDEA.
  User: Crazy
  Date: 10/20/2020
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%-- Title of the web-page --%>
    <title>WEB №2</title>
    <%-- Logotype of the  web-site bar --%>
    <link rel="icon" href="images/icon.ico">
    <%-- StylesSheets --%>
    <link rel="stylesheet" href="stylesheets/core-styles.css">
    <link rel="stylesheet" href="stylesheets/header-styles.css">
    <link rel="stylesheet" href="stylesheets/form-styles.css">
    <link rel="stylesheet" href="stylesheets/table-styles.css">
    <link rel="stylesheet" href="stylesheets/footer-styles.css">
</head>
<body>
<%-- Header section --%>
<div class="header sticky">
    <div class="container">
        <div class="header-wrapper">
            <%-- Link to current page --%>
            <a> <img class="head-img" id="image" src="images/style.jpg" alt="ctul'">WEB №2
                Task№2611
            </a>
            <%-- List --%>
            <ul class="menu">
                <%-- <li class="menu-lister">Created by</li> --%>
                <li class="menu-lister">Kuzmin Arsenii</li>
                <li class="menu-lister">Burik Dmitriy</li>
                <li class="menu-lister">P3230</li>
            </ul>
        </div>
    </div>
</div>
<%-- Main request field section --%>
<div class="form">
    <div class="container">
        <div class="form-wrapper clearfix">
            <div class="graph-field">
                <div class="graph-wrapper">
                    <%-- The main graph picture --%>
                    <svg id="graph" xmlns="http://www.w3.org/2000/svg" width="400" height="400" style="">
                        <rect id="backgroundrect" width="100%" height="100%" x="0" y="0" fill="none" stroke="none"/>
                        <g class="currentLayer" style=""><title>Layer 1</title>
                            <rect x="60" y="200" width="140" height="70" fill="#82bdff" id="svg_1" class=""/>
                            <polygon points="200,200 200,60 130.68966031074524,200 " fill="#82bdff" id="svg_2"
                                     class=""/>
                            <path d="M199.99999580687597,200.00000123244462 L269.6551693350929,200.00000123244462 A-69.65517352821693,-69.65517352821693 0 0 0 199.99999580687597,130.3448277042277 "
                                  fill="#82bdff" id="svg_3" class=""/>
                            <polygon
                                    points="15,200 60,200 60,197 60,203 60,200 130,200 130,197 130,203 130,200 270,200 270,197 270,203 270,200         340,200 340,197 340,203 340,200 385,200 378,197 385,200 378,203 385,200"
                                    stroke="grey" id="svg_4"/>
                            <polygon
                                    points="200,385 200,340 197,340 203,340 200,340 200,270 197,270 203,270 200,270 200,130 197,130 203,130         200,130 200,60 197,60 203,60 200,60 200,15 197,22 200,15 203,22 200,15"
                                    stroke="grey" id="svg_5"/>
                            <circle r="2" cx="200" cy="200" fill="grey" id="svg_6"/>
                            <circle id="dot" r="3" cx="200" cy="200" fill="grey"/>
                            <text class="point" x="53" y="195" id="svg_7">-R</text>
                            <text class="point" x="118" y="195" id="svg_8">-R/2</text>
                            <text class="point" x="262" y="195" id="svg_9">R/2</text>
                            <text class="point" x="335" y="195" id="svg_10">R</text>
                            <text class="point" x="205" y="64" id="svg_11">R</text>
                            <text class="point" x="205" y="134" id="svg_12">R/2</text>
                            <text class="point" x="205" y="274" id="svg_13">-R/2</text>
                            <text class="point" x="205" y="344" id="svg_14">-R</text>
                            <text class="coordinate" x="5" y="10" id="svg_15">x=200.00, y=200.00</text>
                        </g>
                    </svg>
                </div>
                <span id="message"></span>
            </div>
            <div class="form-field">
                <h1 class="request-field-title">Choose and enter points</h1>
                <div class="request-field clearfix">
                    <%-- Left side forms --%>
                    <div class="request-field-left">
                        <%-- Input 'X' ПЕРЕДЕЛАТЬ--%>
                        <div class="field-outer">
                            <label for="x-select"> Select value for X</label>
                            <select name="x-select" id="x-select" class="form-effect">
                                <option hidden value="null"></option>
                                <option value="-5">-5</option>
                                <option value="-4">-4</option>
                                <option value="-3">-3</option>
                                <option value="-2">-2</option>
                                <option value="-1">-1</option>
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                        <%-- Buttons 'Y' --%>
                        <div class="field-outer">
                            <label for="y-field"> Enter value for Y [-5...5]</label>
                            <input type="text" id="y-field" class="form-effect" maxlength="17" autocomplete="off">
                        </div>
                        <%-- Select --%>
                        <div class="field-outer">
                            <label for="r-select"> Select value for R</label>
                            <select name="r-select" id="r-select" class="form-effect">
                                <option hidden value="null"></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                    </div>
                </div>
                <%-- Submit button --%>
                <div class="field-outer">
                    <button class="submit-button">Submit</button>
                </div>
                <div class="field-outer">
                    <button class="clean-button">Clean</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Table section -->
<div class="table">
    <div class="container">
        <div class="table-inner">
            <div class="table-title">
                <h1>Table of results</h1>
            </div>
            <div class="table-wrapper">
                <div style="height:600px;overflow-y:scroll;" id="result" class="custom_scrollbar">
                    <jsp:include page="table.jsp"/>
                </div>
            </div>
        </div>
    </div>
</div>
<%-- Scripts --%>
<script>
    // Tabular object
    const table = document.querySelector('#tabular');

    const requestSend = function (params) {
        fetch("<%= request.getContextPath() %>" + params, {method: 'GET'})
            .then(response => response.text())
            .then(data => {if (data !="Error") table.innerHTML = data});
    }
</script>
<script src="scripts/validate.js"></script>
</body>
</html>