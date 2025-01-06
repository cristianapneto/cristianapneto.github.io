---
layout: default
title: Material Aulas
---

<h2>Material</h2>

<ul>
    {% for item in site.static_files %}
        {% if item.path contains '/material/' %}
            <li>
                {% if item.extname == ".pdf" %}
                    <a href="{{ item.path }}" target="_blank">{{ item.name }}</a>
                {% else %}
                    <a href="{{ item.path }}">{{ item.name }}</a>
                {% endif %}
            </li>
        {% endif %}
    {% endfor %}
</ul>
