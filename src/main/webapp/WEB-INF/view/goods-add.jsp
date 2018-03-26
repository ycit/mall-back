<%--
  Created by IntelliJ IDEA.
  User: xlch
  Date: 2017/2/13
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html class="no-js">
<head>
    <title>用户管理</title>
    <meta charset="utf-8">
    <link href="${ctx}/static/css/goods-new.css" rel="stylesheet" type="text/css"/>
</head>

<body id="goods-type">
<div class="page-content" style="min-height:1318px">
    <!-- BEGIN PAGE HEADER-->
    <!-- BEGIN PAGE BAR -->
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <a href="${ctx}/back/goods">商品管理</a>
                <i class="fa fa-circle"></i>
            </li>
            <li>
                <span>新增商品</span>
            </li>
        </ul>
    </div>
    <h3 class="page-title"> 新增商品
        <small></small>
    </h3>
    <%--</div>--%>
    <!-- END PAGE BAR -->
    <!-- END PAGE HEADER-->
    <div class="portlet light bordered">
        <div class="portlet-body form">
            <form id="goods-form" class="form-horizontal" role="form" enctype="multipart/form-data">
                <div class="form-body">
                    <div class="form-group">
                        <label class="col-md-3 control-label">商品名称</label>
                        <div class="col-md-9">
                            <input type="text" name="name" value="${name}" class="form-control" placeholder="输入商品名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">所属品牌</label>
                        <div class="col-md-9">
                            <select class="form-control" name="brandId">
                                <c:if test="${brands != null && brands.size() > 0}">
                                    <c:forEach items="${brands}" var="brand">
                                        <option value="${brand.id}">${brand.name}</option>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${brands == null || brands.size() == 0}">
                                    <option value="">暂无可选品牌</option>
                                </c:if>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">所属专卖店</label>
                        <div class="col-md-9">
                            <select class="form-control" name="storeId">
                                <c:if test="${stores != null && stores.size() > 0}">
                                    <c:forEach items="${stores}" var="store">
                                        <option value="${store.id}">${store.name}</option>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${stores == null || stores.size() == 0}">
                                    <option value="">暂无可选专卖店</option>
                                </c:if>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">上传图片</label>
                        <div class="col-md-9">
                            <input id="goods-image" type="file" name="images" multiple>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">价格</label>
                        <div class="col-md-9">
                            <input type="text" name="price" class="form-control" placeholder="输入价格">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">库存</label>
                        <div class="col-md-9">
                            <input type="text" name="stock" class="form-control" placeholder="输入库存">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">描述信息</label>
                        <div class="col-md-9">
                            <textarea name="description" class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">种类</label>
                        <div class="col-md-9">
                            <select class="form-control" name="category">
                                <c:if test="${categories != null && categories.size() > 0}">
                                    <c:forEach items="${categories}" var="category">
                                        <option value="${category.id}">${category.name}</option>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${categories == null || categories.size() == 0}">
                                    <option value="0">暂无可选种类</option>
                                </c:if>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">用途</label>
                        <div class="col-md-9">
                            <select class="form-control" name="purpose">
                                <c:if test="${usages != null && usages.size() > 0}">
                                    <c:forEach items="${usages}" var="usage">
                                        <option value="${usage.id}">${usage.name}</option>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${usages == null || usages.size() == 0}">
                                    <option value="0">暂无可选专卖店</option>
                                </c:if>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">容量(A.H)</label>
                        <div class="col-md-9">
                            <input type="text" name="capacity" class="form-control" placeholder="输入容量">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">电压(V)</label>
                        <div class="col-md-9">
                            <input type="text" name="voltage" class="form-control" placeholder="输入电压">
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-9">
                            <button data-click="submit" type="button" class="btn green">新增</button>
                            <button data-click="test" type="button" class="btn green">新增</button>
                            <a href="${ctx}/back/goods" type="button" class="btn default">返回</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>


    <content tag="page_script">
        <script src="${ctx}/static/js/custom/goods-add.js" type="text/javascript"></script>
    </content>

</body>
</html>