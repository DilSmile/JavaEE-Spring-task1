<%@ page import="sevlets.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-4">
    <div class="card" >
        <div class="card-header  text-white "style="background-color: rgb(31, 26, 98);">
            <h4 class="mb-0" >TASK MANAGER</h4>
        </div>
        <div class="card-body">
            <%
                Item item = (Item) request.getAttribute("tovar");
                if (item != null) {
            %>
            <form method="post" action="/save">
                <div class="mb-3">
                    <label class="form-label">Наименование:</label>
                    <input type="hidden" value="<%=item.getId()%>" name="idshka">
                    <input class="form-control" type="text" name="name" value="<%=item.getName()%>">
                </div>
                <div class="mb-3">
                    <label class="form-label">Описание:</label>
                    <textarea class="form-control" name="description"><%=item.getDescription()%></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Крайний срок:</label>
                    <input class="form-control" type="date" name="deadline" value="<%=item.getDeadlineDate()%>">
                </div>
                <div class="mb-3">
                    <label class="form-label">Выполнено:</label>
                    <select class="form-select" name="status" value="<%=item.getDeadlineDate()%>">
                        <option value="Да">Да</option>
                        <option value="Нет">Нет</option>
                    </select>
                </div>
                <button class="btn btn-success">Сохранить</button>
            </form>
            <form method="post" action="/delete" class="mt-2">
                <input type="hidden" value="<%=item.getId()%>" name="idshka">
                <button class="btn btn-danger">Удалить</button>
            </form>
            <% } %>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

