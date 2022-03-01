<%@page import="java.util.Iterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="es" data-theme="dark">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Carrito</title>
    <link
      href="https://cdn.jsdelivr.net/npm/daisyui@2.2.0/dist/full.css"
      rel="stylesheet"
      type="text/css"
    />
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body class="min-h-full">
    <div
      class="preview border-base-300 bg-base-200 rounded-box flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden border bg-cover bg-top p-4 undefined mx-auto mt-10"
      style="background-size: 5px 5px"
    >
      <div class="border mockup-window bg-base-300">
        <div class="flex justify-center px-4 py-6 bg-base-200">
          <div class="bg-base-300 rounded-box shadow-xl p-6">
              <%
                List articles = (List)session.getAttribute("cart-list");
                Iterator it = articles.iterator();
                while (it.hasNext()) {
                out.print("<br>try: "
                        + it.next());
                }
            %>
            <div class="card card-side bg-base-100 shadow-xl">
                <figure>
                  <img
                    src="https://api.lorem.space/image/book?w=200&h=280"
                    alt="Movie"
                  />
                </figure>
                <div class="card-body">
                  <h2 class="card-title text-3xl text-primary">Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                  <p class="text-md text-secondary">Autor de la obra</p>
                  <div class="text-2xl">  
                      <span class="">x1 </span><span class="">$$$$</span>
                  </div>
                  <div class="text-md">  
                    <a class="link link-accent">Eliminar</a>
                  </div>
                </div>
              </div>
              <div class="justify-end card-actions text-info">
                <span class="text-sm">Subtotal:</span><span class="text-2xl">$$$$</span>
              </div>
              <div class="justify-end card-actions">
                <button class="btn btn-primary">Continuar compras</button>
                <button class="btn btn-success">Comprar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>