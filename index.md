<ul>
{% for package in site.apt %}
<li>
{% include package.html package=package %}

</li>
{% endfor %}
</ul>
