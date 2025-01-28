<%@ page import="sevlets.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <div class="card">
        <div class="card-header text-white" style="background-color: rgb(31, 26, 98);">
            <h4 class="mb-0">TASK MANAGER <span class="text-white-50">Все задания</span></h4>
        </div>
        <div class="card-body">
            <a href="/addItem" class="btn text-white" style="background-color: rgb(31, 26, 98);">+ Добавить задание</a>
            <table class="table table-bordered">
                <thead class="text-white" style="background-color: rgb(31, 26, 98);">
                <tr>
                    <th>ID</th>
                    <th>Наименование</th>
                    <th>Крайний срок</th>
                    <th>Выполнено</th>
                    <th>Детали</th>
                </tr>
                </thead>
                <tbody>
                <% List<Item> itemList = (List<Item>) request.getAttribute("tovary"); %>
                <% if (itemList != null) { %>
                <% for (Item item : itemList) { %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getName() %></td>
                    <td><%= item.getDeadlineDate() %></td>
                    <td><%= item.getStatus() %></td>
                    <td><a href="/details?nomer=<%= item.getId() %>" class="btn text-white" style="background-color: rgb(31, 26, 98);">Детали</a></td>
                </tr>
                <% } %>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

