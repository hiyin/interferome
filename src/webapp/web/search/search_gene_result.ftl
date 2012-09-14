<div class="result_title_div">
    Search Results
</div>
<div class="data_header_div">
    <span class="name_title">Found a total of <font color="green"> ${genePagination.totalRecords} </font> Gene(s)</span>

    <div style="clear:both"></div>
    <!-- page sorting block -->
    <div class="msg_content">
        <a href="${base}/${pageLink}${pageSuffix}<@s.property value='genePagination.pageNo' />" class="page_url"></a>
    </div>
    <br/>
<#include "../pagination/pagination_header.ftl"/>
</div>

<div class="search_table_div">
    <table class="search_result_tab">
        <thead>
        <tr class="search_result_header">
            <td align="center">Ensembl Id</td>
            <td align="center">Gene Name</td>
            <td align="center">Description</td>
            <td align="center">Entrez</td>
            <td align="center">Genbank</td>
            <td align="center">UniGene</td>
        </tr>
        </thead>
        <tbody>
        <@s.iterator status="geneStat" value="genePagination.pageResults" id="geneResult" >
        <tr>
            <td align="center">
                <div class="search_result_link">
                    <@s.if test="%{#geneResult.ensgAccession != null}">
                        <a href="${ensemblLink}${geneResult.ensgAccession}" target="_blank">
                            <@s.property value='#geneResult.ensgAccession' />
                        </a>
                    </@s.if>
                    <@s.else>
                        <@s.property value='#geneResult.ensgAccession' />
                    </@s.else>
                </div>
            </td>
            <td align="center"><@s.property value="#geneResult.geneName" /></td>
            <td align="center"><@s.property value="#geneResult.description" /></td>
            <td align="center">
                <div class="search_result_link">
                    <@s.if test="%{#geneResult.entrezId != null}">
                        <a href="${entrezIdLink}${geneResult.entrezId}" target="_blank">
                            <@s.property value='#geneResult.entrezId' />
                        </a>
                    </@s.if>
                    <@s.else>
                        <@s.property value='#geneResult.entrezId' />
                    </@s.else>
                </div>
            </td>
            <td align="center">
                <div class="search_result_link">
                    <@s.if test="%{#geneResult.genbankId != null}">
                        <a href="${geneBankLink}${geneResult.genbankId}" target="_blank">
                            <@s.property value='#geneResult.genbankId' />
                        </a>
                    </@s.if>
                    <@s.else>
                        <@s.property value="#geneResult.genbankId" />
                    </@s.else>
                </div>
            </td>
            <td align="center"><@s.property value="#geneResult.unigene" /></td>
        </tr>
        </@s.iterator>
        </tbody>
    </table>
</div>
<br/>
<#include "../pagination/search_gene_page_style.ftl" />