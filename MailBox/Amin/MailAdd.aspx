﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailAdd.aspx.cs" Inherits="MailBox.Admin.MailAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- date picker -->

    <!-- color picker -->

    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/Custom.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
</head>
<body>
    <section id="container" class="">
        <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="index.aspx" class="logo">Mail Box <span class="lite">Admin</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text" />
                        </form>
                    </li>
                </ul>
                <!--  search form end -->
            </div>

            <div class="top-nav notification-row">
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">

                    <!-- task notificatoin start -->
                    <li id="task_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-task-l" /></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 pending tasks</p>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Design PSD </div>
                                        <div class="percent">90%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                            <span class="sr-only">90% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">
                                            Project 1
                                        </div>
                                        <div class="percent">30%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                            <span class="sr-only">30% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Digital Marketing</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Logo Designing</div>
                                        <div class="percent">78%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                            <span class="sr-only">78% Complete (danger)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Mobile App</div>
                                        <div class="percent">50%</div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                            <span class="sr-only">50% Complete</span>
                                        </div>
                                    </div>

                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- task notificatoin end -->
                    <!-- inbox notificatoin start-->
                    <li id="mail_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo">
                                        <img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                        <span class="from">Greg  Martin</span>
                                        <span class="time">1 min</span>
                                    </span>
                                    <span class="message">I really like this admin panel.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo">
                                        <img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                        <span class="from">Bob   Mckenzie</span>
                                        <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">Hi, What is next project plan?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo">
                                        <img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                        <span class="from">Phillip   Park</span>
                                        <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">I am like to buy this Admin Template.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo">
                                        <img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                        <span class="from">Ray   Munoz</span>
                                        <span class="time">1 day</span>
                                    </span>
                                    <span class="message">Icon fonts are great.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox notificatoin end -->
                    <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 4 new notifications</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span>
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span>
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span>
                                    Mick appreciated your work.
                                    <span class="small italic pull-right">Today</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg" />
                            </span>
                            <span class="username">Jenifer Smith</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i>My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i>My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i>Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i>Chats</a>
                            </li>
                            <li>
                                <a href="Login.aspx"><i class="icon_key_alt"></i>Log Out</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i>Documentation</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i>Documentation</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
        </header>
        <!--header end-->
        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu">
                    <li class="active">
                        <a class="" href="index.aspx">
                            <i class="icon_house_alt"></i>
                            <span>Yönetim Paneli</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_document_alt"></i>
                            <span>Mail</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="MailAdd.aspx">Ekle</a></li>
                            <%--<li><a class="" href="form_validation.html">Form Validation</a></li>--%>
                        </ul>
                    </li>
                    <%--<li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_desktop"></i>
                            <span>UI Fitures</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="general.html">Components</a></li>
                            <li><a class="" href="buttons.html">Buttons</a></li>
                            <li><a class="" href="grids.html">Grids</a></li>
                        </ul>
                    </li>--%>
                    <%--<li>
                        <a class="" href="widgets.html">
                            <i class="icon_genius"></i>
                            <span>Widgets</span>
                        </a>
                    </li>--%>
                    <%--<li>
                        <a class="" href="chart-chartjs.html">
                            <i class="icon_piechart"></i>
                            <span>Charts</span>

                        </a>

                    </li>--%>

                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_table"></i>
                            <span>Kullanıcı Kontrol</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="UsersInformation.aspx">Kullanıcılar</a></li>
                        </ul>
                    </li>

                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_documents_alt"></i>
                            <span>Pages</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="Profile.aspx">Profile</a></li>
                            <li><a class="" href="Login.aspx"><span>Login Page</span></a></li>
                       <%--     <li><a class="" href="blank.aspx">Blank Page</a></li>--%>
                            <li><a class="" href="404.aspx">404 Error</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->
        <section id="main-content">
            <form runat="server">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 class="page-header"><i class="fa fa-file-text-o"></i>Yeni Konu Ekle</h3>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-home"></i><a href="index.aspx">Home</a></li>
                                <li><i class="icon_document_alt"></i>Mail</li>
                                <li><i class="fa fa-file-text-o"></i>Ekle</li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12">
                                    <section class="panel">
                                        <header class="panel-heading">
                                            Ön bilgiler
                                        </header>
                                        <div class="panel-body">
                                            <form class="form-horizontal " method="get">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Başlık</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="CountryText" runat="server" Text="Konu" CssClass="col-lg-2 control-label"></asp:Label>
                                                    <div class="col-lg-10">
                                                        <asp:DropDownList runat="server" CssClass="form-control ddl">
                                                            <asp:ListItem>Gündem</asp:ListItem>
                                                            <asp:ListItem>Teknoloji</asp:ListItem>
                                                            <asp:ListItem>Spor</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>


                                            </form>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- CKEditor -->
                        <div class="col-lg-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Mail İçeriği
                                </header>
                                <div class="panel-body">
                                    <div class="form">
                                        <form action="#" class="form-horizontal">
                                            <div class="form-group">
                                                <label class="control-label col-sm-2">İçerik</label>
                                                <div class="col-sm-10">
                                                    <textarea class="form-control ckeditor" name="editor1" rows="6"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <asp:Button Text="Kaydet" class="btn btn-primary PozisyonRight" runat="server" OnClick="Unnamed_Click" />
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </section>
            </form>
        </section>
    </section>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- jquery ui -->
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!--custom checkbox & radio-->
    <script type="text/javascript" src="js/ga.js"></script>
    <!--custom switch-->
    <script src="js/bootstrap-switch.js"></script>
    <!--custom tagsinput-->
    <script src="js/jquery.tagsinput.js"></script>
    <!-- colorpicker -->
    <!-- bootstrap-wysiwyg -->
    <script src="js/jquery.hotkeys.js"></script>
    <script src="js/bootstrap-wysiwyg.js"></script>
    <script src="js/bootstrap-wysiwyg-custom.js"></script>
    <!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
    <!-- custom form component script for this page-->
    <script src="js/form-component.js"></script>
    <!-- custome script for all page -->
    <script src="js/scripts.js"></script>

</body>
</html>
