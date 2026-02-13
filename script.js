document.getElementById("filtro").addEventListener("change", function() {
    let valor = this.value;
    let linhas = document.querySelectorAll("#tabela tr");

    linhas.forEach(linha => {
        if(valor === "Todos" || linha.dataset.status === valor) {
            linha.style.display = "";
        } else {
            linha.style.display = "none";
        }
    });
});
