<ul>
{% for package in site.packages %}
<li>
{% include package.html package=package %}

</li>
{% endfor %}
</ul>
