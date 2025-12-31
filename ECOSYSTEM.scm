;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - asdf-metaiconic-plugin ecosystem position

(ecosystem
  (version . "1.0.0")
  (name . "asdf-metaiconic-plugin")
  (type . "metadata-registry")
  (purpose . "Unified metadata index and discovery layer for asdf plugins")

  (position-in-ecosystem . "registry")

  (what-this-is
    "Central metadata registry for 68+ asdf plugins"
    "Plugin discovery and search functionality"
    "Category and tag-based organization"
    "Icon and branding consistency layer"
    "Quality metrics aggregation")

  (what-this-is-not
    "Not a plugin installer - asdf-plugin-configurator does that"
    "Not a visual interface - asdf-ui-plugin provides that"
    "Not the plugins themselves - just metadata about them")

  (related-projects
    ;; Direct ecosystem relationships
    (("hyperpolymath/asdf-control-tower" . "coordination-hub")
     ("hyperpolymath/asdf-plugin-configurator" . "cli-consumer")
     ("hyperpolymath/asdf-ui-plugin" . "visual-consumer")
     ("hyperpolymath/asdf-ghjk" . "sibling-tool"))

    ;; All 68+ managed plugins (this registry indexes them)
    (("hyperpolymath/asdf-trivy-plugin" . "indexed-plugin")
     ("hyperpolymath/asdf-grype-plugin" . "indexed-plugin")
     ("hyperpolymath/asdf-syft-plugin" . "indexed-plugin")
     ("hyperpolymath/asdf-cosign-plugin" . "indexed-plugin")
     ("hyperpolymath/asdf-age-plugin" . "indexed-plugin")
     ("hyperpolymath/asdf-nickel-plugin" . "indexed-plugin")
     ("hyperpolymath/asdf-dhall-plugin" . "indexed-plugin")
     ("hyperpolymath/asdf-cue-plugin" . "indexed-plugin"))

    ;; Dependencies
    (("asdf-vm/asdf" . "parent-ecosystem")
     ("hyperpolymath/mustfile" . "build-tool")))

  (integration-points
    (provides
      "Plugin metadata in YAML format"
      "Category definitions"
      "Plugin icons (SVG)"
      "Search API for plugin discovery"
      "Validation schemas for plugin metadata")

    (consumes
      "Plugin information from individual asdf-*-plugin repos"
      "CI status aggregation from GitHub Actions")))
