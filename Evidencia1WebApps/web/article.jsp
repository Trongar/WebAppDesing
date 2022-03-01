<!DOCTYPE html>
<html lang="es" data-theme="dark">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Articulo</title>
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
          <div class="card card-side bg-base-100 shadow-xl">
            <figure>
              <img
                  src="<% out.print(request.getAttribute("image")); %>"
                alt="Movie"
              />
            </figure>
            <div class="card-body">
              <h2 class="card-title text-3xl text-primary"><% out.print(request.getAttribute("title")); %></h2>
              <p class="text-md text-secondary"><% out.print(request.getAttribute("authors")); %></p>
              <div class="justify-end card-actions text-info">
                <span class="text-sm">Precio:</span><span class="text-2xl">$300</span>
              </div>
              <div class="justify-end card-actions">
                <a class="btn btn-success" href="Add-To-Cart?id=<% out.print(request.getAttribute("id")); %>">Añadir al carrito</a>
              </div>
              <div>
                <p class="text-accent text-lg">Descripción</p>
                <p class="text-base-content"><% out.print(request.getAttribute("description")); %></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
