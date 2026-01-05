---
title: "News"
permalink: /news/
author_profile: false
---

## Updates & News

<ul class="news-list">
  {% assign items = site.data.lab_news | sort: "date" | reverse %}
  {% for item in items %}
    <li>
      <strong>{{ item.date }}</strong> — 
      {% if item.url and item.url != "" %}
        <a href="{{ item.url }}" target="_blank" rel="noopener">{{ item.text }}</a>
      {% else %}
        {{ item.text }}
      {% endif %}
    </li>
  {% endfor %}
</ul>
