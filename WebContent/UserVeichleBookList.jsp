<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    @charset "UTF-8";

    @import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

    body {
        font-family: 'Open Sans', sans-serif;
        font-weight: 300;
        line-height: 1.42em;
    }

    h1 {
        font-size: 3em;
        font-weight: 300;
        line-height: 1em;
        text-align: center;
        color: #4DC3FA;
    }

    h2 {
        font-size: 1em;
        font-weight: 300;
        text-align: center;
        display: block;
        line-height: 1em;
        padding-bottom: 2em;
        color: #FB667A;
    }

    h2 a {
        font-weight: 700;
        text-transform: uppercase;
        color: #FB667A;
        text-decoration: none;
    }

    .blue {
        color: #175973;
    }

    .container th h1 {
        font-weight: bold;
        font-size: 1em;
        text-align: left;
        color: white;
        text-align: center;
    }

    .container td {
        font-weight: normal;
        font-size: 1em;
        -webkit-box-shadow: 0 2px 2px -2px #0E1119;
        -moz-box-shadow: 0 2px 2px -2px #0E1119;
        box-shadow: 0 2px 2px -2px #0E1119;
    }

    .container {
        text-align: center;
        overflow: hidden;
        width: 90%;
        margin: 0 auto;
        display: table;
        padding: 0 0 8em 0;
    }

    .container td,
    .container th {
        padding-bottom: 2%;
        padding-top: 2%;
        padding-left: 2%;
    }

    /* Background-color of the odd rows */
    .container tr:nth-child(odd) {
        background-color: #D0F2F2;
    }

    /* Background-color of the even rows */
    .container tr:nth-child(even) {
        background-color: #D0F2F2;
    }

    .container th {
        background-color: #012840;
    }

    .container td:first-child {
        color: #012840;
    }

    .container tr:hover {
        background-color: white;
        -webkit-box-shadow: 0 6px 6px -6px #0E1119;
        -moz-box-shadow: 0 6px 6px -6px #0E1119;
        box-shadow: 0 6px 6px -6px #0E1119;
    }

   

    .topbuttons {
        height: 50px;
        position: relative;
    }

    .gotohome {
        margin: 0;
        position: absolute;
        top: 50%;
        left: 0;
    }

    .gotobook {
        margin: 0;
        position: absolute;
        top: 50%;
        right: 0;
    }

    @media (max-width : 800px) {

        .container td:nth-child(4),
        .container th:nth-child(4) {
            display: none;
        }
    }


    .container {
        border-collapse: collapse;
        min-width: 400px;
        border-radius: 15px 15px 15px 15px;
        overflow: hidden;
        box-shadow: 0 0 20px rgba(0, 0, 0, .15);
        background-color: #fff;
    }

    tbody tr:nth-of-type(even) {
        background-color: #F3F3F3;
        color: #012840;
        font-weight: 500;
    }

    tbody tr:last-of-type {
        border-bottom: 2px solid #012840;
    }

    .report {
        width: 28px;
        height: 28px;
    }

    .edit {
        width: 35px;
        height: 35px;
    }
</style>


<!-- <div style="width: 100%;
                    float: left;
                    background-color: white;
                    padding: 8px;
                    text-align: right;"> -->
<div class="topbuttons" style="width: 100%;">
    <div class="gotohome" style="width: 50%; float: left;">

        <button onclick="window.location.href='MemberView.jsp'" style="background-color:#012840;
                            color:white;
                            width: 140px;
                            padding:10px 20px;
                            border-radius:15px;" class="btn-primary">
            Go to Home
        </button>

    </div>
    <div class="gotobook" style="margin-left: 50%;">

        <button onclick="window.location.href='<%=request.getContextPath()%>/listtransportcards'" style="background-color:#012840 ;
                            color:white;
                            width: 140px;
                            padding:10px 20px;
                            border-radius:15px;
                            " class="btn-primary">
            Go to Book
        </button>

    </div>
</div>




<!-- </div> -->
<section>
    <h1>
        <span class="blue"><b>Vehicle Bookings</b></span>
    </h1>
    <table class="container">
        <thead>
            <tr>
                <th>
                    <h1>UserName</h1>
                </th>
                <th>
                    <h1>NIC</h1>
                </th>
                <th>
                    <h1>Mobile</h1>
                </th>
                <th>
                    <h1>Email</h1>
                </th>
                <th>
                    <h1>Check In</h1>
                </th>
                <th>
                    <h1>Requested Km</h1>
                </th>
                <th>
                    <h1>Payment</h1>
                </th>

            </tr>
        </thead>
        <tbody>

            <c:forEach var="user" items="${listBooking}">

                <tr>
                    <td>
                        <c:out value="${user.user}" />
                    </td>
                    <td>
                        <c:out value="${user.nic}" />
                    </td>
                    <td>
                        <c:out value="${user.mobile}" />
                    </td>
                    <td>
                        <c:out value="${user.email}" />
                    </td>
                    <td>
                        <c:out value="${user.checkin}" />
                    </td>
                    <td>
                        <c:out value="${user.km}" />
                    </td>
                    <td>
                        <c:out value="${user.cost}" />
                    </td>


                </tr>
            </c:forEach>
        </tbody>

    </table>
    </div>




    </html>