---
title: "Home"
permalink: /
---

## Welcome to CiPH3R-Lab

**CiPH3R-Lab (Cybersecurity, Privacy, and Human-centric Research Laboratory)** focuses on:

- Cybersecurity and digital forensics
- Privacy-preserving and trustworthy AI
- Adversarial machine learning and red teaming
- Security for critical and cyber-physical infrastructure

We conduct applied and foundational research with strong real-world impact.

<style>
  .lab-news-box{
    border:1px solid rgba(255,255,255,.15);
    border-radius:12px;
    padding:14px 16px;
    margin-top:18px;
    background: rgba(255,255,255,.04);
  }
  .lab-news-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:10px;
  }
  .lab-news-title{
    font-weight:700;
    letter-spacing:.2px;
  }
  .lab-news-badge{
    font-size:.85em;
    padding:4px 10px;
    border-radius:999px;
    border:1px solid rgba(0,255,255,.35);
    animation: pulse 1.1s infinite;
  }
  @keyframes pulse {
    0%   { box-shadow: 0 0 0 rgba(0,255,255,0.0); }
    50%  { box-shadow: 0 0 14px rgba(0,255,255,0.35); }
    100% { box-shadow: 0 0 0 rgba(0,255,255,0.0); }
  }
  .lab-news-list{ margin:0; padding-left:18px; }
  .lab-news-list li{ margin:6px 0; }
  .lab-news-date{ opacity:.85; font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace; }
</style>

<div class="lab-news-box">
  <div class="lab-news-header">
    <div class="lab-news-title">Latest News</div>
    <div class="lab-news-badge">LIVE</div>
  </div>

  <ul class="lab-news-list">
    {% assign top = site.data.lab_news | sort: "date" | reverse | slice: 0, 5 %}
    {% for item in top %}
      <li>
        <span class="lab-news-date">{{ item.date }}</span> —
        {% if item.url and item.url != "" %}
          <a href="{{ item.url }}" target="_blank" rel="noopener">{{ item.text }}</a>
        {% else %}
          {{ item.text }}
        {% endif %}
      </li>
    {% endfor %}
  </ul>

  <div style="margin-top:10px;">
    <a href="/news/">See more →</a>
  </div>
</div>


