package ru.ifmo.web.filters;

import org.json.JSONObject;

import javax.servlet.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.StandardCharsets;

//http://api.openweathermap.org/data/2.5/weather?id=498817&appid=603ab3073b0e4b4e081db1905b631ac9&lang=ru&units=metric
public class WeatherServlet implements Filter {

    private String invokeApi(String requestUrl) throws IOException {
        final StringBuilder result = new StringBuilder();
        final URL url = new URL(requestUrl);
        try (InputStream is = url.openStream()) {
            BufferedReader reader = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));
            reader.lines().forEach(result::append);
        }
        return result.toString();
    }


    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        JSONObject obj = new JSONObject(invokeApi("http://api.openweathermap.org/data/2.5/weather?id=498817&appid=603ab3073b0e4b4e081db1905b631ac9&lang=ru&units=metric"));
        System.out.println("Температура в Санкт-Петербурге: " + obj.getJSONObject("main").get("temp"));
        System.out.println("Ощущается как: " + obj.getJSONObject("main").get("feels_like"));
        System.out.println("============================================");

        filterChain.doFilter(servletRequest, servletResponse);
    }
}
