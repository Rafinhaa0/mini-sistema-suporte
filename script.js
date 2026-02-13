const chamados = [
    { titulo: "Erro no login", prioridade: "Alta", status: "Aberto" },
    { titulo: "Bug no dashboard", prioridade: "Média", status: "Em andamento" },
    { titulo: "Lentidão no sistema", prioridade: "Baixa", status: "Resolvido" }
];

const tabelaBody = document.querySelector("#tabela tbody");
const filtro = document.getElementById("filtro");

function renderizarChamados(lista) {
    tabelaBody.innerHTML = "";

    lista.forEach(chamado => {
        const linha = document.createElement("tr");

        linha.innerHTML = `
            <td>${chamado.titulo}</td>
            <td>${chamado.prioridade}</td>
            <td>${chamado.status}</td>
        `;

        tabelaBody.appendChild(linha);
    });
}

filtro.addEventListener("change", function() {
    const valor = this.value;

    if (valor === "Todos") {
        renderizarChamados(chamados);
    } else {
        const filtrados = chamados.filter(c => c.status === valor);
        renderizarChamados(filtrados);
    }
});

renderizarChamados(chamados);

const busca = document.getElementById("busca");

busca.addEventListener("input", function() {
    const termo = this.value.toLowerCase();

    const filtrados = chamados.filter(c =>
        c.titulo.toLowerCase().includes(termo)
    );

    renderizarChamados(filtrados);
});

