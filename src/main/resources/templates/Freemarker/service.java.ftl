package ${package.Service};

import ${package.Entity}.${entity};
import ${superServiceClassPackage};
import org.springframework.stereotype.Repository;

/**
 * <p>
 * ${table.comment!} 服务类
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
<#if kotlin>
interface ${table.serviceName} : ${superServiceClass}<${entity}>
<#else>
@Repository
public interface ${table.serviceName} extends ${superServiceClass}<${entity}> {

}
</#if>
