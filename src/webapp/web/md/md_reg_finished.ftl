<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>${pageTitle}</title>
<#include "../template/jquery_header.ftl"/>
</head>
<body>
<#include "../template/navsection.ftl"/>
<#include "../template/action_nav_bar.ftl"/>
<div class="main_container">
    <div class="container_inner_left">
        <div class="blank_separator"></div>
    <@s.if test="%{successActMsg != null}">
        <div class="data_header_div">
            <#include "../template/success_act_message.ftl"/>
        </div>
    </@s.if>

        <div class="data_outer_div">
            <div class="each_field_row">
                <div class="exp_name_title">${namePrefix}<@s.property value="experiment.id" /></div>
            </div>
            <div class="each_field_row">
                <div class="exp_desc_div"><@s.property value="experiment.description" /></div>
            </div>

            <div class="each_field_row">
                <div class="exp_audit_info">
                    Imported by <@s.property value="experiment.owner.displayName" />,&nbsp;&nbsp;
                    Imported Date: <@s.date name="experiment.createdTime"  format="dd-MM-yyyy 'at' hh:mm a" />,&nbsp;&nbsp;
                    Modified by <@s.property value="experiment.modifiedByUser.displayName" />,&nbsp;&nbsp;
                    Modified date: <@s.date name="experiment.modifiedTime" format="dd-MM-yyyy 'at' hh:mm a"  />
                </div>
            </div>

            <div class="each_field_row">
                <div class="approve_status">Approved: <@s.property value="experiment.approved" /></div>
            </div>

            <div class="data_link">
                <a href="${base}/${viewExpActName}?experiment.id=${experiment.id}">View Details</a>
            </div>
            <div style="clear:both"></div>
        </div>
        <div class="empty_div"></div>
        <div class="empty_div"></div>
        <div class="empty_div"></div>
        <div class="empty_div"></div>
        <br/>
    </div>
    <div class="container_inner_right">
    <#include "../template/user_nav.ftl">
    </div>
    <div style="clear:both"></div>
</div>
<#include "../template/footer.ftl"/>
</body>
</html>