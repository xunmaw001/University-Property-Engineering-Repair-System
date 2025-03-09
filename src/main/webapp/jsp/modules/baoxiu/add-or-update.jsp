<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑报修</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">报修管理</li>
                        <li class="breadcrumb-item active">编辑报修</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">报修信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa yonghu">
                                        <label>用户</label>
                                        <div>
                                            <select style="width: 450px" id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户姓名</label>
                                        <input style="width: 450px" id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="用户姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户手机号</label>
                                        <input style="width: 450px" id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="用户手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户头像</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa gongchengshi">
                                        <label>工程师</label>
                                        <div>
                                            <select style="width: 450px" id="gongchengshiSelect" name="gongchengshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 gongchengshi">
                                        <label>工程师姓名</label>
                                        <input style="width: 450px" id="gongchengshiName" name="gongchengshiName" class="form-control"
                                               placeholder="工程师姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 gongchengshi">
                                        <label>工程师手机号</label>
                                        <input style="width: 450px" id="gongchengshiPhone" name="gongchengshiPhone" class="form-control"
                                               placeholder="工程师手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 gongchengshi">
                                        <label>工程师头像</label>
                                        <img id="gongchengshiPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                <input id="gongchengshiId" name="gongchengshiId" type="hidden">
                                    <div class="form-group col-md-6 baoxiuUuidNumberDiv">
                                        <label>报修编号</label>
                                        <input style="width: 450px" id="baoxiuUuidNumber" name="baoxiuUuidNumber" class="form-control"
                                               placeholder="报修编号">
                                    </div>
                                    <div class="form-group col-md-6 baoxiuNameDiv">
                                        <label>报修名称</label>
                                        <input style="width: 450px" id="baoxiuName" name="baoxiuName" class="form-control"
                                               placeholder="报修名称">
                                    </div>
                                    <div class="form-group col-md-6 baoxiuWupinNameDiv">
                                        <label>报修物品</label>
                                        <input style="width: 450px" id="baoxiuWupinName" name="baoxiuWupinName" class="form-control"
                                               placeholder="报修物品">
                                    </div>
                                    <div class="form-group col-md-6 baoxiuAddressDiv">
                                        <label>报修地点</label>
                                        <input style="width: 450px" id="baoxiuAddress" name="baoxiuAddress" class="form-control"
                                               placeholder="报修地点">
                                    </div>
                                    <div class="form-group col-md-6 baoxiuTypesDiv">
                                        <label>报修类型</label>
                                        <select style="width: 450px" id="baoxiuTypesSelect" name="baoxiuTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group  col-md-6 baoxiuContentDiv">
                                        <label>报修详情</label>
                                        <input id="baoxiuContentupload" name="file" type="file">
                                        <script id="baoxiuContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var baoxiuContentUe = UE.getEditor('baoxiuContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="baoxiuContent" id="baoxiuContent-input">
                                    </div>
                                    <div class="form-group col-md-6 baoxiuZhuangtaiTypesDiv">
                                        <label>报修状态</label>
                                        <select style="width: 450px" id="baoxiuZhuangtaiTypesSelect" name="baoxiuZhuangtaiTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "baoxiu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var baoxiuTypesOptions = [];
    var baoxiuZhuangtaiTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var yonghuOptions = [];
    var gongchengshiOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#baoxiuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('baoxiuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            /*if(window.sessionStorage.getItem('role') != '用户'){//当前登录用户不为这个
                if($("#yonghuId") !=null){
                    var yonghuId = $("#yonghuId").val();
                    if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                        alert("用户不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '工程师'){//当前登录用户不为这个
                if($("#gongchengshiId") !=null){
                    var gongchengshiId = $("#gongchengshiId").val();
                    if(gongchengshiId == null || gongchengshiId =='' || gongchengshiId == 'null'){
                        alert("工程师不能为空");
                        return;
                    }
                }
            }*/
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("baoxiu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addbaoxiu');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function baoxiuTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=baoxiu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    baoxiuTypesOptions = res.data.list;
                }
            });
        }
        function baoxiuZhuangtaiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=baoxiu_zhuangtai_types", "GET", {}, (res) => {
                if(res.code == 0){
                    baoxiuZhuangtaiTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }
        function gongchengshiSelect() {
            //填充下拉框选项
            http("gongchengshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    gongchengshiOptions = res.data.list;
                }
            });
        }

        function gongchengshiSelectOne(id) {
            http("gongchengshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                gongchengshiShowImg();
                gongchengshiShowVideo();
                gongchengshiDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationBaoxiutypesSelect(){
            var baoxiuTypesSelect = document.getElementById('baoxiuTypesSelect');
            if(baoxiuTypesSelect != null && baoxiuTypesOptions != null  && baoxiuTypesOptions.length > 0 ){
                for (var i = 0; i < baoxiuTypesOptions.length; i++) {
                    baoxiuTypesSelect.add(new Option(baoxiuTypesOptions[i].indexName,baoxiuTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationBaoxiuzhuangtaitypesSelect(){
            var baoxiuZhuangtaiTypesSelect = document.getElementById('baoxiuZhuangtaiTypesSelect');
            if(baoxiuZhuangtaiTypesSelect != null && baoxiuZhuangtaiTypesOptions != null  && baoxiuZhuangtaiTypesOptions.length > 0 ){
                for (var i = 0; i < baoxiuZhuangtaiTypesOptions.length; i++) {
                    baoxiuZhuangtaiTypesSelect.add(new Option(baoxiuZhuangtaiTypesOptions[i].indexName,baoxiuZhuangtaiTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }

        function initializationgongchengshiSelect() {
            var gongchengshiSelect = document.getElementById('gongchengshiSelect');
            if(gongchengshiSelect != null && gongchengshiOptions != null  && gongchengshiOptions.length > 0 ) {
                for (var i = 0; i < gongchengshiOptions.length; i++) {
                        gongchengshiSelect.add(new Option(gongchengshiOptions[i].gongchengshiName, gongchengshiOptions[i].id));
                }

                $("#gongchengshiSelect").change(function(e) {
                        gongchengshiSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var baoxiuTypesSelect = document.getElementById("baoxiuTypesSelect");
        if(baoxiuTypesSelect != null && baoxiuTypesOptions != null  && baoxiuTypesOptions.length > 0 ) {
            for (var i = 0; i < baoxiuTypesOptions.length; i++) {
                if (baoxiuTypesOptions[i].codeIndex == ruleForm.baoxiuTypes) {//下拉框value对比,如果一致就赋值汉字
                        baoxiuTypesSelect.options[i].selected = true;
                }
            }
        }

        var baoxiuZhuangtaiTypesSelect = document.getElementById("baoxiuZhuangtaiTypesSelect");
        if(baoxiuZhuangtaiTypesSelect != null && baoxiuZhuangtaiTypesOptions != null  && baoxiuZhuangtaiTypesOptions.length > 0 ) {
            for (var i = 0; i < baoxiuZhuangtaiTypesOptions.length; i++) {
                if (baoxiuZhuangtaiTypesOptions[i].codeIndex == ruleForm.baoxiuZhuangtaiTypes) {//下拉框value对比,如果一致就赋值汉字
                        baoxiuZhuangtaiTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
            var gongchengshiSelect = document.getElementById("gongchengshiSelect");
            if(gongchengshiSelect != null && gongchengshiOptions != null  && gongchengshiOptions.length > 0 ) {
                for (var i = 0; i < gongchengshiOptions.length; i++) {
                    if (gongchengshiOptions[i].id == ruleForm.gongchengshiId) {//下拉框value对比,如果一致就赋值汉字
                        gongchengshiSelect.options[i+1].selected = true;
                        $("#gongchengshiSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.baoxiuContent != null && ruleForm.baoxiuContent != 'null' && ruleForm.baoxiuContent != '' && $("#baoxiuContentupload").length>0) {

            var baoxiuContentUeditor = UE.getEditor('baoxiuContentEditor');
            baoxiuContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.baoxiuContent != null){
                    mes = ''+ ruleForm.baoxiuContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                baoxiuContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#baoxiuContentupload").length>0) {
            var baoxiuContentEditor = UE.getEditor('baoxiuContentEditor');
            if (baoxiuContentEditor.hasContents()) {
                $('#baoxiuContent-input').attr('value', baoxiuContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addbaoxiu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                yonghuId: "required",
                gongchengshiId: "required",
                baoxiuUuidNumber: "required",
                baoxiuName: "required",
                baoxiuWupinName: "required",
                baoxiuAddress: "required",
                baoxiuTypes: "required",
                baoxiuContent: "required",
                baoxiuZhuangtaiTypes: "required",
            },
            messages: {
                yonghuId: "用户不能为空",
                gongchengshiId: "工程师不能为空",
                baoxiuUuidNumber: "报修编号不能为空",
                baoxiuName: "报修名称不能为空",
                baoxiuWupinName: "报修物品不能为空",
                baoxiuAddress: "报修地点不能为空",
                baoxiuTypes: "报修类型不能为空",
                baoxiuContent: "报修详情不能为空",
                baoxiuZhuangtaiTypes: "报修状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addbaoxiu = window.sessionStorage.getItem("addbaoxiu");
        if (addbaoxiu != null && addbaoxiu != "" && addbaoxiu != "null") {
            //注册表单验证
            $(validform());
            $("#baoxiuUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("baoxiu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        yonghuDataBind();
        gongchengshiDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#gongchengshiId").val(ruleForm.gongchengshiId);
        $("#baoxiuUuidNumber").val(ruleForm.baoxiuUuidNumber);
        $("#baoxiuName").val(ruleForm.baoxiuName);
        $("#baoxiuWupinName").val(ruleForm.baoxiuWupinName);
        $("#baoxiuAddress").val(ruleForm.baoxiuAddress);
        $("#baoxiuContent").val(ruleForm.baoxiuContent);

    }
    <!--  级联表的数据回显  -->
    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuEmail").val(ruleForm.yonghuEmail);
    }

    function gongchengshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#gongchengshiId").val(ruleForm.id);

        $("#gongchengshiName").val(ruleForm.gongchengshiName);
        $("#gongchengshiPhone").val(ruleForm.gongchengshiPhone);
        $("#gongchengshiIdNumber").val(ruleForm.gongchengshiIdNumber);
        $("#gongchengshiEmail").val(ruleForm.gongchengshiEmail);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        yonghuShowImg();
        gongchengshiShowImg();
    }


    <!--  级联表的图片  -->

    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }


    function gongchengshiShowImg() {
        $("#gongchengshiPhotoImg").attr("src",ruleForm.gongchengshiPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        yonghuShowVideo();
        gongchengshiShowVideo();
    }


    <!--  级联表的视频  -->

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }

    function gongchengshiShowVideo() {
        $("#gongchengshiPhotoV").attr("src",ruleForm.gongchengshiPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            baoxiuTypesSelect();
            baoxiuZhuangtaiTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            yonghuSelect();
            gongchengshiSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationBaoxiutypesSelect();
            initializationBaoxiuzhuangtaitypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationyonghuSelect();
            initializationgongchengshiSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addbaoxiu');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '用户') {
            $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
            $(".gongchengshi").remove();//删除当前用户的信息
            $(".baoxiuZhuangtaiTypesDiv").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '工程师') {
            // $(".aaaaaa").remove();
            $(".gongchengshi").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
