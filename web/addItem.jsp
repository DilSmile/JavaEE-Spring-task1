<%@ page import="sevlets.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Task Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-dark" style="background-color: rgb(31, 26, 98);">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="/task1">TASK MANAGER</a>
            <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#addTaskModal">+ Добавить задание</button>
        </div>
    </nav>
    <%
        List<Item> itemList = (List<Item>) request.getAttribute("tovary");
    %>
    <table class="table mt-3">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Deadline</th>
            <th scope="col">Status</th>
            <th scope="col">Details</th>
        </tr>
        </thead>
        <tbody>
        <%
            if(itemList != null ){
                for(Item item:itemList){
                    item.getName();
        %>
        <tr>
            <th scope="row"><%= item.getId()%></th>
            <td><%= item.getName()%></td>
            <td><%= item.getDescription()%></td>
            <td><%= item.getDeadlineDate()%></td>
            <td><%= item.getStatus()%></td>
            <td><a href="/details?nomer=<%=item.getId()%>">Details</a></td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>



    <!-- Modal -->
    <div class="modal fade" id="addTaskModal" tabindex="-1" aria-labelledby="addTaskLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addTaskLabel">Новое задание</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="/addItem" method="post">
                        <label class="form-label">Наименование:</label>
                        <input class="form-control" type="text" name="name">
                        <label class="form-label">Описание:</label>
                        <input class="form-control" type="text" name="description">
                        <label class="form-label">Крайний срок:</label>
                        <input class="form-control" type="date" name="deadline">
                        <label class="form-label">Выполнено:</label>
                            <select class="form-select" name="status" >
                                <option value="Да">Да</option>
                                <option value="Нет">Нет</option>
                            </select>
                        <br>
                        <button type="submit" class="btn btn-primary">Добавить</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>


