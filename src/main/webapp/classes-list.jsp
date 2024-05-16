<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Classes</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            background-image: url('css/background.jpg');
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        #page {
            display: flex;
        }

        #wrapper {
            flex-grow: 1;
        }

        #header {
            background-color: #4CAF50;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-bottom: 20px;
            border-radius: 10px 10px 0 0;
        }

        #container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 0 0 10px 10px;
        }

        #content {
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            color: #FF69B4; /* Changed link color to pink */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div id="page">
    <jsp:include page="left-list.jsp"/>

    <div id="wrapper">
        <div id="header">
            <h3>Classes</h3>
        </div>
        <div id="container">
            <div id="content">
                <table>
                    <tr>
                        <th>Section</th>
                        <th>Subject</th>
                        <th>Teacher</th>
                        <th>Time</th>
                        <th>List of Students</th>
                    </tr>
                    <c:forEach var="tempClass" items="${CLASSES_LIST}">
                        <tr>
                            <c:url var="tempLink" value="AdminControllerServlet">
                                <c:param name="command" value="ST_LIST"/>
                                <c:param name="classId" value="${tempClass.id}"/>
                                <c:param name="section" value="${tempClass.section}"/>
                                <c:param name="subject" value="${tempClass.subject}"/>
                            </c:url>
                            <td>${tempClass.section}</td>
                            <td>${tempClass.subject}</td>
                            <td>${tempClass.teacher}</td>
                            <td>${tempClass.time}</td>
                            <td><a href="${tempLink}">List</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
