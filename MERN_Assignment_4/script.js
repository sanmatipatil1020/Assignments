function addTodo() {
    const input = document.getElementById("todoInput");
    const todoText = input.value.trim();

    if (todoText === "") {
        alert("Please enter a todo");
        return;
    }

    const li = document.createElement("li");
    li.innerHTML = `
        <span>${todoText}</span>
        <button class="delete-btn" onclick="deleteTodo(this)">Delete</button>
    `;

    document.getElementById("todoList").appendChild(li);
    input.value = "";
}

function deleteTodo(button) {
    button.parentElement.remove();
}
