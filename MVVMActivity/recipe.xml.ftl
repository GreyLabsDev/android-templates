<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/View.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}View.kt" />
    <instantiate from="src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.kt" />
    <instantiate from="src/app_package/Navigator.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Navigator.kt" />

    <open file="${srcOut}/${className}View.kt"/>
    <open file="${srcOut}/${className}ViewModel.kt"/>
    <open file="${srcOut}/${className}Navigator.kt"/>
</recipe>