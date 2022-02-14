<%-- Document : partida Created on : 13 feb. 2022, 12:41:32 Author : sanch --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Piedra, papel o tijeras</title>
  </head>
  <body>
    <h1>Piedra, papel o tijeras</h1>
    <table style="border: 1px #000000 solid">
      <thead>
        <tr>
          <th colspan="2" style="border: 1px #000000 solid"></th>
          <th style="border: 1px #000000 solid">Cliente</th>
          <th style="border: 1px #000000 solid">Servidor</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="2" style="border: 1px #000000 solid">Juega</td>
          <td style="border: 1px #000000 solid">
              <% 
                  if(request.getAttribute("cliente") != null){
                  int cliente = (int) request.getAttribute("cliente");
                  out.print((cliente == 0) ? "Piedra" : (cliente == 1) ? "Papel" : "Tijeras");
                  }
               %>
          </td>
          <td style="border: 1px #000000 solid">
              <% 
                  if(request.getAttribute("server") != null){
                  int server = (int) request.getAttribute("server");
                  out.print((server == 0) ? "Piedra" : (server == 1) ? "Papel" : "Tijeras");
                  }
               %>
          </td>
        </tr>
        <tr>
          <td colspan="2" style="border: 1px #000000 solid">Ganador Jugada</td>
          <td colspan="2" style="border: 1px #000000 solid">
              <% 
                  if(request.getAttribute("ganador") != null){
                  int ganador = (int) request.getAttribute("ganador");
                  out.print((ganador == -1) ? "Servidor" : (ganador == 1) ? "Cliente" : "Empate"); 
                  }
              %>
          </td>
        </tr>
        <tr>
          <td colspan="2" style="border: 1px #000000 solid">Jugadas Ganadas</td>
          <td style="border: 1px #000000 solid"><% 
              out.print(session.getAttribute("roundWin"));
              %></td>
          <td style="border: 1px #000000 solid"><% 
              out.print(session.getAttribute("roundLoose"));
              %></td>
        </tr>
        <tr>
          <td colspan="2" style="border: 1px #000000 solid">
            Jugadas empatadas
          </td>
          <td colspan="2" style="border: 1px #000000 solid"><% 
              out.print(session.getAttribute("roundDraw"));
              %></td>
        </tr>
        <tr>
          <td colspan="2" style="border: 1px #000000 solid">
            Partidas Ganadas
          </td>
          <td style="border: 1px #000000 solid"><% 
              out.print(session.getAttribute("gameWin"));
              %></td>
          <td style="border: 1px #000000 solid"><% 
              out.print(session.getAttribute("gameLoose"));
              %></td>
        </tr>
        <tr>
          <td colspan="2" style="border: 1px #000000 solid">
            Partidas empatadas
          </td>
          <td colspan="2" style="border: 1px #000000 solid"><% 
              out.print(session.getAttribute("gameDraw"));
              %></td>
        </tr>
      </tbody>
    </table>
    <fieldset>
      <legend>Slecciona tu jugada</legend>
      <form action="GameJudge.do" method="post">
          <input type="radio" name="jugador" value="0" id="piedra" checked/>
        <label for="piedra">Piedra</label>
        <input type="radio" name="jugador" value="1" id="papel" />
        <label for="papel">Papel</label>
        <input type="radio" name="jugador" value="2" id="tijeras" />
        <label for="tijeras">Tijeras</label>
        <br /><br>
        <input type="submit" value="Jugar" />
      </form>
    </fieldset>
	<a href="">Reiniciar</a>
  </body>
</html>
