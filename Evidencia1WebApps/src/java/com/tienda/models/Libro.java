/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tienda.models;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.google.gson.Gson;
import java.util.Map;

/**
 *
 * @author sanch
 */
public class Libro {
    private HttpClient httpClient = HttpClient.newBuilder().version(HttpClient.Version.HTTP_2).build();
    
    private String id;
    private String title;
    private String subTitle;
    private String authors;
    private String description;
    private String image;

    public Libro(String id) {
        final HttpRequest requestPosts;
        requestPosts = HttpRequest.newBuilder()
                .GET()
                .uri(URI.create("https://www.dbooks.org/api/book/"+id))
                .build();
        try { 
            final HttpResponse<String> response = httpClient.send(requestPosts, HttpResponse.BodyHandlers.ofString());
            Gson gson = new Gson();
            Map<?,?> bookMap = gson.fromJson(response.body(), Map.class);
            
            
            
            this.id = bookMap.get("id").toString();
            this.title = bookMap.get("title").toString();
            this.subTitle = bookMap.get("subtitle").toString();
            this.authors = bookMap.get("authors").toString();
            this.image = bookMap.get("image").toString(); 
            this.description = bookMap.get("description").toString(); 
            
            
            
        } catch (IOException | InterruptedException ex) {
            Logger.getLogger(Libro.class.getName()).log(Level.SEVERE, null, ex);
        
    }
}

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public String getAuthors() {
        return authors;
    }

    public String getDescription() {
        return description;
    }

    public String getImage() {
        return image;
    }
    
