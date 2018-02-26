{#
Outputs an HTML partial for embedding in other pages. Like the gitbook.tpl
template but also loads the nbinteract library.
#}

{%- extends 'gitbook.tpl' -%}

{% block body %}
{{ super() }}

{% block nbinteract_script %}
<!-- Loads nbinteract package -->
<script src="https://unpkg.com/nbinteract"></script>
{%- endblock nbinteract_script %}

{%- endblock body %}
