require 'kramdown'

Haml::Filters.register_tilt_filter 'Kramdown', template_class: Tilt::KramdownTemplate
