<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM "ulang://common">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Контент вкладки "Страницы" -->
	<xsl:template match="/result[@method = 'pages']">
		<div class="location">
			<div class="imgButtonWrapper loc-left " xmlns:umi="http://www.umi-cms.ru/TR/umi">
				<a id="addPage" href="{$lang-prefix}admin/dummy/addPage/{id}/page/"
				   class="btn color-blue" umi:type="dummy::page">
					<xsl:text>&label-add-page;</xsl:text>
				</a>
			</div>
			<a class="btn-action loc-right infoblock-show"><i class="small-ico i-info"></i><xsl:text>&help;</xsl:text></a>
		</div>

		<div class="layout">
			<div class="column">
				<xsl:call-template name="ui-smc-table">
					<xsl:with-param name="allow-drag">1</xsl:with-param>
					<xsl:with-param name="control-params" select="'pages'" />
					<xsl:with-param name="js-add-buttons">
						createAddButton(
						$('#addPage').get(0), oTable,
							'<xsl:value-of select="concat($lang-prefix, '/admin/dummy/addPage/{id}/page/' )" />', ['*', true]
						);
					</xsl:with-param>
				</xsl:call-template>
			</div>
			<div class="column">
				<div  class="infoblock">
					<h3><xsl:text>&label-quick-help;</xsl:text></h3>
					<div class="content" title="{$context-manul-url}">
					</div>
					<div class="infoblock-hide"></div>
				</div>
			</div>
		</div>
	</xsl:template>

	<!-- Контент вкладки "Объекты" -->
	<xsl:template match="/result[@method = 'objects']">
		<div class="location">
			<div class="imgButtonWrapper loc-left" xmlns:umi="http://www.umi-cms.ru/TR/umi">
				<a href="{$lang-prefix}/admin/dummy/addObject/object" class="type_select btn color-blue" umi:type="dummy::object">
					<xsl:text>&label-add-object;</xsl:text>
				</a>
			</div>
			<a class="btn-action loc-right infoblock-show"><i class="small-ico i-info"></i><xsl:text>&help;</xsl:text></a>
		</div>
		<div class="layout">
			<div class="column">
				<xsl:call-template name="ui-smc-table">
					<xsl:with-param name="control-params" select="'objects'" />
					<xsl:with-param name="content-type">objects</xsl:with-param>
				</xsl:call-template>
			</div>
			<div class="column">
				<div  class="infoblock">
					<h3><xsl:text>&label-quick-help;</xsl:text></h3>
					<div class="content" title="{$context-manul-url}">
					</div>
					<div class="infoblock-hide"></div>
				</div>
			</div>
		</div>
	</xsl:template>
	
</xsl:stylesheet>