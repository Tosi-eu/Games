const gameContainer = document.getElementById('game-container');
const message = document.getElementById('message');
const startButton = document.getElementById('start-button');
const background = document.getElementById('background');
let currentPhase = -2; // Começar na fase 0

startButton.addEventListener('click', startGame);


function startGame() {
 
    if (currentPhase === -2) {
        // Fase -2
        message.innerHTML = `
        <h2>Primeiro o textinho pra gente ficar bobinho</h2>
        <p> Eu estava pensando aqui e vejo que eu tô num paradoxo, pra mim, o tempo está passando MUITO rápido, parece que ontem mesmo foi a festaAAA
        e a gente estava caindo um no outro. Ao mesmo tempo, parece não ser só 4 meses com você, por que a gente viveu MUITA coisa até aqui, e isso foi a melhor 
        coisa que poderia ter me acontecido, ou melhor, ter acontecido para nós.</p>
        <p>Espero que por meio dessa brincadeirinha aqui possa mostrar pra você que quero de 1001 maneiras diferentes tirar um sorriso seu, que modéstia parte é
        uma das coisas mais lindas que já vi, amor. Quem sabe até faça seus olhos escorrerem, como acontece quando você <strike>sempre</strike> perde para mim no FIFA</p>
        <button onclick="incrementPhase()">Próximo textinho</button>
    `;
        // Movimentar o plano de fundo horizontalmente
        background.style.backgroundPositionX = "0px";
        background.style.transition = "background-position 1s linear";
        background.style.backgroundPositionX = "200px"; // Movimenta 200 pixels
    } else if (currentPhase === -1) {
        // Fase -1
        message.innerHTML = `
        <h2> Juro que só tem mais esse textinho hihi</h2>
        <p>Como dissemos algum dos muitos dias (poucos perto do que virão), não dá para, hoje, imaginar como seria nossas vidas aqui em São Carlos, eu sinceramente não consigo
        maginar, e definitivamente eu não quero nem fazer esforços para isso, pois me vejo de um jeito no futuro, e ele inclui você, então não me faz feliz imaginar uma realidade
        que não tenha você, afinal de contas eu só tenho olhos para você.</p>
        <p> Todo dia eu durmo ansioso para poder de novo te dar um abraço, váááários beijos e ficar conversando com você até olharmos o relógio e ficarmos nos perguntando 
        "Como assim já passou todo esse tempo?", e é incrível como o tempo voa com você do lado, e é como dizem, tudo que é bom dura pouco, e pra mim, 8 ou 10h do seu lado é muito pouco
        perto da vontade que tenho de dividir minha vida, minhas coisas contigo (tudo bem que meus mletons já são seus, então divido um poquito já rs)</p>
        <p> Gostaria de agradecer por tudo, tudo, tudo que você faz, é impressionante sua força de vontade, sua paciência, sua simpatia, seu carinho, <strike>seu rabão</strike>.
        Tudo isso me faz ter certeza que você é quem eu mais tive sorte em encontrar aqui em são carlos, pois não existe uma mulher mais perfeita que você, e nunca vai ter.
        Te admiro muito, em "N" coisas e isso me faz ficar ansioso pelo futuro, por imaginar as vitórias, as conquistas que poderemos ter, claro que virão derrotas, mas
        como estaremos lado a lado, será uma vitória de qualquer modo.</p>
        <button id="next-phase" onclick="incrementPhase()">Bora pro joguin</button>
    `;
    }else if (currentPhase === 0) {
        // Fase 0 (Inicial)
        showQuestionPhase(
            "Que festa nos conhecemos?",
            ["FestaAAA", "Educaipira", "PedaComp", "Computaria", "Julinão da Carlota", "Baile da comuna"],
            "FestaAAA"
        );
    } else if (currentPhase === 1) {
        showQuestionPhase(
            "Onde e que dia te pedi em namoro?",
            ["10 de setembro em Santos", "24 de junho no Matizado", "7 de junho no Cogeb", "12 de junho no Natsumi", "11 de setembro nas torres Gemeas"],
            "12 de junho no Natsumi"
        );
    } else if (currentPhase === 2) {
        showQuestionPhase(
            "Quem disse eu te amo primeiro?",
            ["Eu", "Você"],
            "Eu"
        );
    }else if (currentPhase === 3) {
        showQuestionPhase(
            "Quem ama mais: Eu ou você?",
            ["Guilherme", "Bruna"],
            ""
        );
    }else if (currentPhase === 4) {
        // Fase -1
        message.innerHTML = `
        <h2> Trolei, a gente se ama igual mor, um é igualmente muito bobinho pelo outro hihi</h2>
        <p>Eu acho meio zuadinho quando um tenta dizer que um ama mais o outro, não que seja algo que alguém vá reclamar, pra estragar o momento e tals, mas é um pensamento válido,
        por que, se relacionamento é compromisso e ambos tem que cooperar igualmente pra que tudo dê certo (como está entre nós, inclusive, amor <3), por que nisso oss dois seriam diferentes?</p>
        <p>De quebra também quero dizer que nunca tive tanta certeza de que estamos no caminho certo, temos uma espontaneidade tão foda um com o outro, que eu fico de cara as vezes. Então o que deve
        passar na nossa cabeça é só que a gente deve continuar fazendo as coisas do nosso jeitinho esquisito, sendo bobinhos um com o outro, enfim, um casalzão da porra que somos <3.
        <button id="next-phase2" onclick="incrementPhase()">Agora vamos jogar</button>
    `;
    }
    else if (currentPhase === 5) {
        showQuestionPhase(
            "Qual comida você prefere que eu faça pra você?",
            ["Strogonoff", "Brigadeiro arenoso", "Molho rosé sabor alho", "Miojo com ketchup", "Aquela que fazemos no quarto"],
            "Strogonoff"
        );
    } else if (currentPhase === 6) {
        showQuestionPhase(
            "Quem é o melhor jogador de FIFA?",        ["Guilherme", "Bruna"],
            "Guilherme"
        );
    } else if (currentPhase === 7) {
        showQuestionPhase(
            "Qual o apelido que me deixa com mais vergonha?",
            ["Francesinha", "Beto", "Palmitão", "Tabo", "Júlio do cocóricó", "cof cof"],
            "Palmitão"
        );
    } else if (currentPhase === 8) {
        showQuestionPhase(
            "Quantas vezes fizemos o juramento do dedinho?",
            ["1 vez", "2 vezes", "3 vezes", "4 vezes"],
            "3 vezes"
        );
    } else if (currentPhase === 9) {
        showQuestionPhase(
            "O que mais me chama a atenção em você?",
            ["Sua paciência", "Suas fofocas", "Seu carinho", "Sua sinceridade", "Seu humor duvidoso", "Tudo isso junto"],
            "Tudo isso junto"
        );
    }else if (currentPhase === 10) {
        showQuestionPhase(
            "Quando o mendigo disse que teríamos nosso primeiro boneco?",
            ["2024", "2025", "2026", "2027"],
            "2026"
        );
    }else if (currentPhase === 11) {
        showQuestionPhase(
            "Quantas vezes já perdemos coisas em rolês?",
            ["1 vez", "2 vezes", "3 vezes", "4 vezes", "Não perdemos, fizemos doação de algumas coisas"],
            "4 vezes"
        );
    }else if (currentPhase === 12) {
        showQuestionPhase(
            "Já que seu maior medo é o Michael Jackson, qual o meu?",
            ["Michael Jackson", "Barata no banheiro do apê", "Altura", "Cair e perder as coisas no AT", "Arrumar briga com os crias da Fabril"],
            "Altura"
        );
    }
    else if (currentPhase === 13) {
        // Fase -1
        message.innerHTML = `
        <h2> Por fim gostaria de dizer uns negócios</h2>
        <p>Essas perguntas são para você lembrar de alguns momentos que tivemos, com coisas boas e ruins, mas essencialmente todos foram especiais
        por que eram com você, e a sua presença é única, a melhor coisa que já vivi, e quero viver muito mais, muito muito.
        Eu quero todo mês fazer algo pra você, pra você ver que eu sou o cara que quer ser o homem da sua vida, e estou me esforçando para que não só você
        mas a minha e a sua família percebam que nosso relacionamento é único, e que é muito bão.
         Eu já disse que te amo, e nunca enjôo, mas posso dizer muitas vezes mais, mas mor, como é bom te amar <3. Você faz dos meu presente os dias mais incríveis,
         e fico ansioso pelo futuro maravilhoso que iremos construir, e o melhor, JUNTOS Saiba que sempre que precisar estarei aqui para você, amor.</p>
        <button id="next-phase2" onclick="incrementPhase()">Bora pro enigma</button>
    `;
    }
    else if (currentPhase === 14) {
        // Fase -1
        message.innerHTML = `
<div class="container">
    <div class="enigma-container">
        <div class="enigma-text">
            <h2> Enigma brabo</h2>
            <p>
                <strong>Enigma 1:</strong>
                "Sou feito de metal, uma bela joia sou, usado como adorno, com elegância e gosto, em seus dedos, meu brilho será, 
                 qual é a palavra que melhor me descreve?"<br><br>
                <input type="text" id="answer1" placeholder="exemplo: Resposta">
                <span id="result1"></span>
            </p>

            <p>
                <strong>Enigma 2:</strong>
                "Quando você tem dúvidas, me consultar é a chave, um guia, uma fonte de sabedoria e direção, meu conhecimento, ao alcance da sua mão, 
                 qual é o meu nome, minha identificação?"<br><br>
                <input type="text" id="answer2" placeholder="exemplo: Resposta">
                <span id="result2"></span>
            </p>

            <p>
                <strong>Enigma 3:</strong>
                "Quando o frio chega, eu sou necessário, em casacos e luvas, você me encontrará, comigo, o inverno é menos assustador,
                 qual é o meu nome, você vai adivinhar?"<br><br>
                <input type="text" id="answer3" placeholder="exemplo: Resposta">
                <span id="result3"></span>
            </p>

            <p>
                <strong>Enigma 4:</strong>
                "Ao acordar, estou sempre presente, nos sonhos e pesadelos, sou um elemento constante, como um universo dentro da mente,
                qual é a palavra que você deve revelar?"<br><br>
                <input type="text" id="answer4" placeholder="exemplo: Resposta">
                <span id="result4"></span>
            </p>

            <p>
                <strong>Enigma 5:</strong>
                "Em um palco, com aplausos, eu brilho, mas sou apenas uma parte da diversão, em um livro ou filme, você me encontrará,
                 qual é a palavra que eu gostaria de ser?"<br><br>
                <input type="text" id="answer5" placeholder="exemplo: Resposta">
                <span id="result5"></span>
            </p>

            <p>
                <strong>Enigma 6:</strong>
                "Em um tabuleiro de xadrez, eu sou o movimento, em uma estrada, a direção que tomo, em debates e discussões, estou no centro,
                 uma palavra que define a escolha, qual é o meu nome?"<br><br>
                <input type="text" id="answer6" placeholder="exemplo: Resposta">
                <span id="result6"></span>
            </p>

            <p>
                <strong>Enigma 7:</strong>
                "Em busca de sentido, os grandes pensadores me exploraram, sofrimento e existência, eu questiono e perscruto,
                na busca do propósito, meu nome é frequentemente mencionado, o que sou?"<br><br>
                <input type="text" id="answer7" placeholder="exemplo: Resposta">
                <span id="result7"></span>
            </p>

            <button id="check-answers" onclick="checkAnswers()">Verificar Respostas</button>
            <button id="advance-phase" onclick="advancePhase()">Avançar de Fase</button>            
        </div>
    </div>
</div>
    `;
    }else if (currentPhase === 15) {
        // Fase -1
        message.innerHTML = `
        <h2> E não é que você acertou, mor? Genia demais!!</h2>
        <p>Isso mesmo, amor, você acertou, mas eu preciso que me diga qual a resposta. Dica: é a primeira letra de cada resposta correta.</p>
        <p>Se conseguir acertar, acho que vai gostar do que é rsrsrs...</p>
        <input type="text" id="answergift" placeholder="exemplo: Resposta">
        <a id="zap" style="display: none;" href="https://api.whatsapp.com/send?phone=19996380863&text=Decifrei o enigma, mor, tava mais fácil que ganhar de vc no FIFA hihi">Surpresa</a>
        <button id="back-button" onclick="decrementPhase()">Voltar</button>
        `;
    
        const answerInput = document.getElementById("answergift");
        const zapLink = document.getElementById("zap");
    
        answerInput.addEventListener("input", function () {
            const userAnswer = answerInput.value.trim().toLowerCase();
            if (userAnswer === "ferrero") { 
                zapLink.style.display = "inline";
            } else {
                zapLink.style.display = "none"; 
            }
        });
    }
}

function moveBlockToRandomLocation(block) {
    const randomX = Math.random() * (window.innerWidth - 100);
    const randomY = Math.random() * (window.innerHeight - 100);
    block.style.position = 'absolute';
    block.style.left = randomX + 'px';
    block.style.top = randomY + 'px';
}

function playAudio(audioFileName) {
    const audio = new Audio(audioFileName);
    audio.play();
}

let selectedOptions = [];

function showQuestionPhase(question, options, correctAnswer) {
    message.innerHTML = `<h2>${question}</h2>`;
    for (let i = 0; i < options.length; i++) {
        const option = options[i];
        const block = document.createElement('div');
        block.classList.add('block');
        block.textContent = option;

        block.addEventListener('click', function () {
            if (option === correctAnswer) {
                // Resposta correta, avança para a próxima fase
                currentPhase++;
                removePreviousPhase();
                startGame();
            } else if (option === "Aquela que fazemos no quarto") {
                playAudio('audio1.mp3'); // Reproduz o arquivo de áudio
                moveBlockToRandomLocation(block);
            }else if (option === "Não perdemos, fizemos doação de algumas coisas") {
                playAudio('audio2.mp3'); // Reproduz o arquivo de áudio    
                moveBlockToRandomLocation(block);
            }else{
                moveBlockToRandomLocation(block);
            }

            

            // Adicione a opção selecionada ao array
            selectedOptions.push(option);

            // Verifique se ambas as opções foram selecionadas
            if (selectedOptions.includes("Guilherme") && selectedOptions.includes("Bruna")) {
                currentPhase++; // Avança para a próxima fase
                selectedOptions = []; // Limpa o array de opções selecionadas
                removePreviousPhase();
                startGame();
            }
        });

        gameContainer.appendChild(block);
    }
}


function removePreviousPhase() {
    const blocks = document.querySelectorAll('.block');
    for (const block of blocks) {
        block.remove();
    }
}



function incrementPhase() {
    currentPhase++;
    removePreviousPhase();
    startGame();
}

function checkAnswers() {
    const answers = [
        "Rubi", 
        "Oráculo",
        "Espessura",
        "Fantasia",
        "Roteiro",
        "Raciocínio",
        "Existência",
    ];

    let allCorrect = true;

    for (let i = 0; i < answers.length; i++) {
        const userAnswer = document.getElementById(`answer${i + 1}`).value.trim();
        const resultElement = document.getElementById(`result${i + 1}`);

        if (userAnswer.toLowerCase() === answers[i].toLowerCase()) {
            resultElement.innerHTML = '<img src="greentick.png" alt="Correto">';
        } else {
            resultElement.innerHTML = '<img src="redtick.png" alt="Errado">';
            allCorrect = false;
        }
    }

    if (allCorrect) {
        document.getElementById("advance-phase").style.display = "block";
    }
}

function advancePhase() {
    currentPhase++;
    removePreviousPhase();
    startGame();
}

function decrementPhase() {
    if (currentPhase > 0) {
        currentPhase--; 
        removePreviousPhase();
        startGame();
    }
}
