<?php
require_once 'head.php';
require_once 'menu.php';
?>


<h2 class="text-center">Personalizados</h2>

<div class="container-fluid">
        <div class="row acessorios">
            <div class="col-md-3">
            <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="imagens/marcha.jpg" alt="Imagem de capa do card">
  <div class="card-body">
    <h5 class="card-title">Planner</h5>
    <p class="card-text">Planner personalizado</p>
    <p>R$95,00</p>
    <!-- Botão para acionar modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#marcha">
Comprar
</button>
  </div>
</div>
            </div>

            <div class="col-md-3">
            <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="imagens/retrovisor.jpg" alt="Imagem de capa do card">
  <div class="card-body">
    <h5 class="card-title">Agenda</h5>
    <p class="card-text">Agendas escolares, pessoal ou agendamento de clientes</p>
    <p>R$80,00</p>
        <!-- Botão para acionar modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#retrovisor">
Comprar
</button>
  </div>
</div>
            </div>

            <div class="col-md-3">
            <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="imagens/volante.jpg" alt="Imagem de capa do card">
  <div class="card-body">
    <h5 class="card-title">Caderneta</h5>
    <p class="card-text">Caderneta de Saúde</p>
    <p>R$55,00</p>
          <!-- Botão para acionar modal -->
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#volante">
Comprar
</button>
  </div>
</div>
            </div>
            <div class="col-md-3">
            <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="imagens/pneu.jpg" alt="Imagem de capa do card">
  <div class="card-body">
    <h5 class="card-title">Topo de bolo</h5>
    <p class="card-text">Topo de bolo personalizado simples</p>
    <p>R$15,00</p>
       <!-- Botão para acionar modal -->
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#pneu">
Comprar
</button>
  </div>
</div>
            </div>
            
        </div>
    </div>


    <!-- Modal marcha-->
<div class="modal fade" id="marcha" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Planner</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <img class="img-fluid" src="imagens/marcha.jpg">
                <p>R$95,00</p>
                <p> Planner personalizado</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary">Adicionar ao carrinho</button>
      </div>
    </div>
  </div>
</div>
    <!-- Modal Retrovisor-->
    <div class="modal fade" id="retrovisor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agenda</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <img class="img-fluid" src="imagens/retrovisor.jpg">
                <p>R$80,00</p>
                <p> Agenda personalizada</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary">Adicionar ao carrinho</button>
      </div>
    </div>
  </div>
</div>

    <!-- Modal Volante-->
    <div class="modal fade" id="volante" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Caderneta de vacinação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <img class="img-fluid" src="imagens/volante.jpg">
                <p>R$55,00</p>
                <p> Cadernetas personalizadas</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary">Adicionar ao carinho</button>
      </div>
    </div>
  </div>
</div>

   <!-- Modal Pneu-->
   <div class="modal fade" id="pneu" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Topo de Bolo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <img class="img-fluid" src="imagens/pneu.jpg">
                <p>R$15,00</p>
                <p> Topo de bolo personalizado</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary">Adicionar ao carrinho</button>
      </div>
    </div>
  </div>
</div>

    <?php
             require_once 'footer.php';
             ?>
