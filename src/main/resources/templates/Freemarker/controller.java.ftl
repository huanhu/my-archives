package ${package.Controller};


import ${package.Entity};
import ${package.Mapper};
import ${package.Service};
<#if restControllerStyle>
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
<#else>
import org.springframework.stereotype.Component;
</#if>
import org.springframework.beans.factory.annotation.Autowired;
import javax.annotation.Resource;


<#if superControllerClassPackage??>
import ${superControllerClassPackage};
</#if>

/**
 * <p>
 * ${table.comment!} 入口
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
<#if restControllerStyle>
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/${entity?uncap_first}")
@Api(value = "${entity?uncap_first}", description = "${table.comment!}")
<#else>
@Component
</#if>
<#if kotlin>
class ${table.controllerName}<#if superControllerClass??> : ${superControllerClass}()</#if>
<#else>
<#if superControllerClass??>
public class ${table.controllerName} extends ${superControllerClass} {
<#else>
public class ${table.controllerName} {
</#if>

    @Autowired
    private ${table.mapperName} ${table.mapperName?uncap_first};
    @Resource(name = "${table.serviceImplName}")
    private ${table.serviceName} ${table.serviceName?uncap_first};


}
</#if>
