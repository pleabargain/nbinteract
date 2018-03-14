{#
Like the full.tpl template but loads a local copy of the nbinteract library
instead of using unpkg.com. Used for development purposes only.
#}

{%- extends 'full.tpl' -%}

{% block nbinteract_script %}
<!-- Loads nbinteract package -->
<script src="http://localhost:8000/lib/index.bundle.js"></script>
<script>
  var interact = new NbInteract({
    spec: '{{ spec }}',
    baseUrl: '{{ base_url }}',
    provider: '{{ provider }}',
  })
  interact.prepare()
</script>
{%- endblock nbinteract_script %}
