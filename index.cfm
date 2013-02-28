<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>CRM - Lex</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> 
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>

    <script type="text/javascript" src="js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="js/plugins/forms/uniform.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.autosize.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript" src="js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="js/plugins/jquery.fullcalendar.js"></script>
    <script type="text/javascript" src="js/plugins/jquery.elfinder.js"></script>

    <script type="text/javascript" src="js/custom.js"></script>
 
    <!--
    <script type="text/javascript" src="js/charts/chart.js"></script>
    -->

    <cfajaximport />

</head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <cfoutput>
    <div class="logo"><a href="#APPLICATION.website_url#"><img src="images/logo.png" alt="" /></a></div>
    </cfoutput>

    <div class="sidebarSep mt0"></div>
    
    <!-- Search widget -->
    <form action="" class="sidebarSearch">
        <input type="text" name="search" placeholder="search..." id="ac" />
        <input type="submit" value="" />
    </form>
    
    <div class="sidebarSep"></div>

    
    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dashboard">
            <a href="javascript:fPrincipalContent('dashboard');" title="" class="active"><span>Dashboard</span></a>
        </li>
        <li class="client">
            <a href="javascript:fPrincipalContent('client');" title=""><span>Client</span></a>
        </li>
        <li class="legalMatters">
            <a href="javascript:fPrincipalContent('legalMatters');" title=""><span>Legal Matters</span></a>
        </li>
        <li class="activities">
            <a href="javascript:fPrincipalContent('activities');" title=""><span>Activities / Expenses</span></a>
        </li>
        <li class="notes">
            <a href="javascript:fPrincipalContent('notes');" title=""><span>Notes</span></a>
        </li>
        <li class="properties">
            <a href="javascript:fPrincipalContent('properties');" title="" ><span>Properties</span></a>
        </li>
        <li class="creditors"><a href="##" title=""><span>Creditors</span></a></li>
    </ul>
</div>


<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="" title=""><img src="images/userPic.png" alt="" /></a><span>Jairo, Botero</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="" title=""><img src="images/icons/topnav/profile.png" alt="" /><span>Profile</span></a></li>
                    <li><a href="" title=""><img src="images/icons/topnav/tasks.png" alt="" /><span>Tasks</span></a></li>
                    <li class="dd"><a title=""><img src="images/icons/topnav/messages.png" alt="" /><span>Messages</span><span class="numberTop">8</span></a>
                        <ul class="userDropdown">
                            <li><a href="" title="" class="sAdd">new message</a></li>
                            <li><a href="" title="" class="sInbox">inbox</a></li>
                            <li><a href="" title="" class="sOutbox">outbox</a></li>
                            <li><a href="" title="" class="sTrash">trash</a></li>
                        </ul>
                    </li>
                    <li class="ddAdmin"><a href="" title=""><img src="images/icons/topnav/settings.png" alt="" /><span>Admin</span></a>
                        <ul class="adminDropdown">
                            <li><a href="" title="" class="adminUsers">Users</a></li>
                            <li><a href="" title="" class="adminBilling">Billing</a></li>
                            <li><a href="" title="" class="adminLetters">News letter</a></li>
                        </ul>
                    </li>
                    <li><a href="login.html" title=""><img src="images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <!-- Responsive header -->
    <!--

    <div class="resp">
        <div class="respHead">
            <a href="index.html" title=""><img src="images/loginLogo.png" alt="" /></a>
        </div>
        
        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="images/icons/light/home.png" alt="" />Dashboard</span>
            <ul class="smallDropdown">
                <li><a href="index.html" title=""><img src="images/icons/light/home.png" alt="" />Dashboard</a></li>
                <li><a href="charts.html" title=""><img src="images/icons/light/stats.png" alt="" />Statistics and charts</a></li>
                <li><a href="" title="" class="exp"><img src="images/icons/light/pencil.png" alt="" />Forms stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="forms.html" title="">Form elements</a></li>
                        <li><a href="form_validation.html" title="">Validation</a></li>
                        <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="ui_elements.html" title=""><img src="images/icons/light/users.png" alt="" />Interface elements</a></li>
                <li><a href="tables.html" title="" class="exp"><img src="images/icons/light/frames.png" alt="" />Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="table_static.html" title="">Static tables</a></li>
                        <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                        <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
                    </ul>
                </li>
                <li><a href="" title="" class="exp"><img src="images/icons/light/fullscreen.png" alt="" />Widgets and grid<strong>2</strong></a>
                    <ul>
                        <li><a href="widgets.html" title="">Widgets</a></li>
                        <li class="last"><a href="grid.html" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="" title="" class="exp"><img src="images/icons/light/alert.png" alt="" />Error pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="403.html" title="">403 page</a></li>
                        <li><a href="404.html" title="">404 page</a></li>
                        <li><a href="405.html" title="">405 page</a></li>
                        <li><a href="500.html" title="">500 page</a></li>
                        <li><a href="503.html" title="">503 page</a></li>
                        <li class="last"><a href="offline.html" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="file_manager.html" title=""><img src="images/icons/light/files.png" alt="" />File manager</a></li>
                <li><a href="" title="" class="exp"><img src="images/icons/light/create.png" alt="" />Other pages<strong>3</strong></a>
                    <ul>
                        <li><a href="typography.html" title="">Typography</a></li>
                        <li><a href="calendar.html" title="">Calendar</a></li>
                        <li class="last"><a href="gallery.html" title="">Gallery</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="cLine"></div>
    </div>
    -->

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>John Doe</h5>
                <span>Crash and run case.</span>
            </div>
            <div class="middleNav">
                <ul>
                    <li class="mUser"><a title=""><span class="users"></span></a>
                        <ul class="mSub1">
                            <li><a href="" title="">Add user</a></li>
                            <li><a href="" title="">Statistics</a></li>
                            <li><a href="" title="">Orders</a></li>
                        </ul>
                    </li>
                    <li class="mMessages"><a title=""><span class="messages"></span></a>
                        <ul class="mSub2">
                            <li><a href="" title="">New tickets<span class="numberRight">8</span></a></li>
                            <li><a href="" title="">Pending tickets<span class="numberRight">12</span></a></li>
                            <li><a href="" title="">Closed tickets</a></li>
                        </ul>
                    </li>
                    <li class="mFiles"><a href="" title="Or you can use a tooltip" class="tipN"><span class="files"></span></a></li>
                    <li class="mOrders"><a title=""><span class="orders"></span><span class="numberMiddle">8</span></a>
                        <ul class="mSub4">
                            <li><a href="" title="">Pending uploads</a></li>
                            <li><a href="" title="">Statistics</a></li>
                            <li><a href="" title="">Trash</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper" id="principalContent">
    </div>

    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">Legal Credit - Defender.  Power by <a href="http://nyxent.com" title="">Nyxent</a></div>
    </div>

</div>

</body>
</html>