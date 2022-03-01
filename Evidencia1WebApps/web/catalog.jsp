<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.tienda.models.Libro"%>
<!DOCTYPE html>
<html lang="es" data-theme="dark">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Catalogo</title>
    <link
      href="https://cdn.jsdelivr.net/npm/daisyui@2.2.0/dist/full.css"
      rel="stylesheet"
      type="text/css"
    />
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body class="min-h-full">
    <div
      class="preview 
      border-base-300 
      bg-base-200 
      rounded-box 
      flex min-h-[6rem] 
      min-w-[20rem] 
      max-w-4xl 
      flex-wrap 
      items-center 
      justify-center 
      gap-2 
      overflow-x-hidden 
      border 
      bg-cover 
      bg-top 
      p-4 
      undefined 
      mx-auto 
      mt-10 "
      style="background-size: 5px 5px"
    > 
      <div class="border bg-base-300 indicator"> 
        <a href="Cart">
        <span class="indicator-item badge badge-primary p-3">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M5.79166 2H1V4H4.2184L6.9872 16.6776H7V17H20V16.7519L22.1932 7.09095L22.5308 6H6.6552L6.08485 3.38852L5.79166 2ZM19.9869 8H7.092L8.62081 15H18.3978L19.9869 8Z" fill="currentColor" /><path d="M10 22C11.1046 22 12 21.1046 12 20C12 18.8954 11.1046 18 10 18C8.89543 18 8 18.8954 8 20C8 21.1046 8.89543 22 10 22Z" fill="currentColor" /><path d="M19 20C19 21.1046 18.1046 22 17 22C15.8954 22 15 21.1046 15 20C15 18.8954 15.8954 18 17 18C18.1046 18 19 18.8954 19 20Z" fill="currentColor" /></svg>
          </span>
        </a>
        <div class="px-4 py-6 bg-base-200">
          <div class="indicator mx-16 rounded-box">
            <span class="indicator-item badge badge-secondary">Novedades</span>
            <div
              class="max-w-md p-4 space-x-4 carousel carousel-center bg-neutral rounded-box indicator"
            >
              <% List novedades = (List)request.getAttribute("novedades"); 
              Iterator novedadesIt = novedades.iterator(); 
              while (novedadesIt.hasNext()) { 
                  String article = (String) novedadesIt.next();
                  out.print("<div class=\"carousel-item\">");
                    out.print("<a href=\"book.do?id="+new Libro(article).getId()+"\">");
                        out.print("<img src="+new Libro(article).getImage()+" class=\"rounded-box max-h-[10rem] \" />");
                    out.print("</a>");
                  out.print("</div>");
              } %>
            </div>
          </div>
          <div class="divider divider-horizontal my-5"></div>
          <div class="indicator mx-16">
            <span
              class="indicator-item indicator-top indicator-start badge badge-secondary"
              >Lo más vendido</span
            >
            <div
              class="max-w-md p-4 space-x-4 carousel carousel-center bg-neutral rounded-box indicator"
            >
               <% List popular = (List)request.getAttribute("popular"); 
              Iterator popularIt = popular.iterator(); 
              while (popularIt.hasNext()) { 
                  String article = (String) popularIt.next();
                  out.print("<div class=\"carousel-item\">");
                    out.print("<a href=\"book.do?id="+new Libro(article).getId()+"\">");
                        out.print("<img src="+new Libro(article).getImage()+" class=\"rounded-box max-h-[10rem] \" />");
                    out.print("</a>");
                  out.print("</div>");
              } %>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
