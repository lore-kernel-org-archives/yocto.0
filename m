Return-Path: <roxana.ciobanu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FF38E00857; Mon,  8 Sep 2014 07:07:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B36A3E0080F
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 07:07:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Sep 2014 07:07:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,486,1406617200"; d="scan'208";a="587972194"
Received: from roxana-optiplex-9010.rb.intel.com ([10.237.105.47])
	by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2014 07:07:42 -0700
From: Roxana Ciobanu <roxana.ciobanu@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Sep 2014 17:07:41 +0300
Message-Id: <661cc25d79ce5a443b3ef842ea97b3e913cd2818.1410185145.git.roxana.ciobanu@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1410185145.git.roxana.ciobanu@intel.com>
References: <cover.1410185145.git.roxana.ciobanu@intel.com>
In-Reply-To: <cover.1410185145.git.roxana.ciobanu@intel.com>
References: <cover.1410185145.git.roxana.ciobanu@intel.com>
Subject: [PATCH 1/1] error-report-web: Sorting error tables
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 08 Sep 2014 14:07:57 -0000

Add sorting functionality to the search results page.

[YOCTO #6539]

Signed-off-by: Roxana Ciobanu <roxana.ciobanu@intel.com>
---
 Post/static/css/custom.css    |  15 ++
 Post/views.py                 | 135 +++++++++++--
 templates/latest-errors.html  | 391 ++++++++++++++++++++++++++----------
 templates/search-details.html | 446 +++++++++++++++++++++++++++++-------------
 4 files changed, 732 insertions(+), 255 deletions(-)

diff --git a/Post/static/css/custom.css b/Post/static/css/custom.css
index c274b67..f2a35a6 100644
--- a/Post/static/css/custom.css
+++ b/Post/static/css/custom.css
@@ -68,3 +68,18 @@ td a:visited {
 .dropdown-menu {
 	padding: 10px;
 }
+
+.sorted {
+	color: #333;
+	font-weight: bold;
+}
+.sorting-arrows {
+	font-size: 12px;
+}
+.sorted:hover {
+	color: #000;
+	text-decoration: underline;
+}
+th a, th span {
+	font-weight: normal;
+}
diff --git a/Post/views.py b/Post/views.py
index 79d688e..6d8ec3f 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -30,6 +30,61 @@ from django.core.urlresolvers import reverse_lazy
 from django.contrib.sites.models import RequestSite
 from collections import OrderedDict
 
+def sort_elems(elems, ordering_string, default_orderby):
+    aux = ordering_string
+    if ordering_string:
+        column, order = aux.split(':')
+    else:
+        column, order = default_orderby.split(':')
+    if order == '-':
+        rev = True
+    else:
+        rev = False
+
+    if column == "submitted_on":
+        elems.sort(key=lambda r : r.BUILD.DATE, reverse=not rev)
+        return elems
+    else:
+        elems.sort(key=lambda r : r.BUILD.DATE, reverse=True) # Secondary sorting criteria
+
+    if column == "machine":
+        elems.sort(key=lambda r : r.BUILD.MACHINE, reverse=rev)
+    elif column == "branch":
+        elems.sort(key=lambda r : r.BUILD.BRANCH, reverse=rev)
+    elif column == "target":
+        elems.sort(key=lambda r : r.BUILD.TARGET, reverse=rev)
+    elif column == "distro":
+        elems.sort(key=lambda r : r.BUILD.DISTRO, reverse=rev)
+    elif column == "host_distro":
+        elems.sort(key=lambda r : r.BUILD.NATIVELSBSTRING, reverse=rev)
+    elif column == "build_sys":
+        elems.sort(key=lambda r : r.BUILD.BUILD_SYS, reverse=rev)
+    elif column == "target_sys":
+        elems.sort(key=lambda r : r.BUILD.TARGET_SYS, reverse=rev)
+    elif column == "submitter":
+        elems.sort(key=lambda r : r.BUILD.NAME, reverse=rev)
+    elif column == "email":
+        elems.sort(key=lambda r : r.BUILD.EMAIL, reverse=rev)
+    elif column == "task":
+        elems.sort(key=lambda r : r.TASK, reverse=rev)
+    elif column == "recipe":
+        elems.sort(key=lambda r : r.RECIPE, reverse=rev)
+    return elems
+
+def _get_toggle_order(request, orderkey, reverse = False):
+    if reverse:
+        return "%s:+" % orderkey if request.GET.get('orderby', "") == "%s:-" % orderkey else "%s:-" % orderkey
+    else:
+        return "%s:-" % orderkey if request.GET.get('orderby', "") == "%s:+" % orderkey else "%s:+" % orderkey
+
+def _get_toggle_order_icon(request, orderkey):
+    if request.GET.get('orderby', "") == "%s:+"%orderkey:
+        return "down"
+    elif request.GET.get('orderby', "") == "%s:-"%orderkey:
+        return "up"
+    else:
+        return ""
+
 @csrf_exempt
 def addData(request):
     response = ''
@@ -53,14 +108,20 @@ def viewEntry(request,template_name, page=None, query=None):
     return HttpResponseRedirect(reverse('entry', args=(), kwargs={"items":10, "page":page, "query":query}))
 
 @csrf_exempt
-def search(request, template_name, items = None, page = None, query = None):
+def search(request, template_name, items = None, page = None, query = None, orderby = None):
     if items == None and page == None and query == None:
          page = request.GET.get('page', '')
          query = request.GET.get('query', '')
          items = request.GET.get('items', '')
+         orderby = request.GET.get('orderby', '')
 
-    latest = False
+    default_orderby = 'submitted_on:+';
+    if orderby == "":
+        get_values = request.GET.copy()
+        get_values['orderby'] = default_orderby
+        request.GET = get_values
 
+    latest = False
     if "latest" in query:
          latest = True
          query = query.replace("_latest", "")
@@ -68,7 +129,7 @@ def search(request, template_name, items = None, page = None, query = None):
     if query == "" or query.isspace():
         query = "all"
     elems = Info().getSearchResult(query.strip())
-    elems.sort(key=lambda r : r.BUILD.DATE, reverse=True)
+    elems = sort_elems(elems, orderby, default_orderby)
     no = len(elems)
     if no == 0:
         return render_to_response("error-page.html", {"latest" : latest,  "query" : query}, RequestContext(request))
@@ -105,20 +166,64 @@ def search(request, template_name, items = None, page = None, query = None):
         "no" : no,
         'list' : paginator.page_range[index:end],
         'items' : items,
+        'orderby': orderby,
+        'default_orderby' : default_orderby,
         'objectname' : 'errors',
         'tablecols' : [
-        {'name': 'Submitted on', 'clclass': 'submitted_on'},
-        {'name': 'Recipe'},
-        {'name': 'Recipe version', 'clclass': 'recipe_version'},
-        {'name': 'Task'},
-        {'name': 'Machine'},
-        {'name': 'Distro'},
-        {'name': 'Build system', 'clclass': 'build_sys', 'hidden': 1},
-        {'name': 'Target system', 'clclass': 'target_sys', 'hidden': 1},
-        {'name': 'Host distro', 'clclass': 'host_distro'},
-        {'name': 'Branch', 'clclass': 'branch'},
-        {'name': 'Commit', 'clclass': 'commit'},
-        {'name': 'Submitter', 'clclass': 'submitter','hidden': 1}],
+        {'name': 'Submitted on',
+         'orderfield': _get_toggle_order(request, "submitted_on", True),      # adds ordering by the field value;
+         'ordericon':_get_toggle_order_icon(request, "submitted_on"),
+        },
+        {'name': 'Recipe',
+         'orderfield': _get_toggle_order(request, "recipe", False),
+         'ordericon':_get_toggle_order_icon(request, "recipe"),
+        },
+        {'name': 'Recipe version',
+         'clclass': 'recipe_version',
+        },
+        {'name': 'Task',
+         'orderfield': _get_toggle_order(request, "task", False),
+         'ordericon':_get_toggle_order_icon(request, "task"),
+        },
+        {'name': 'Machine',
+         'orderfield': _get_toggle_order(request, "machine", False),
+         'ordericon':_get_toggle_order_icon(request, "machine"),
+        },
+        {'name': 'Distro',
+         'orderfield': _get_toggle_order(request, "distro", False),
+         'ordericon':_get_toggle_order_icon(request, "distro"),
+        },
+        {'name': 'Build system',
+         'clclass': 'build_sys',
+         'hidden': 1,
+         'orderfield': _get_toggle_order(request, "build_sys", False),
+         'ordericon':_get_toggle_order_icon(request, "build_sys"),
+        },
+        {'name': 'Target system',
+         'clclass': 'target_sys',
+         'hidden': 1,
+         'orderfield': _get_toggle_order(request, "target_sys", False),
+         'ordericon':_get_toggle_order_icon(request, "target_sys"),
+        },
+        {'name': 'Host distro',
+         'clclass': 'host_distro',
+         'orderfield': _get_toggle_order(request, "host_distro", False),
+         'ordericon':_get_toggle_order_icon(request, "host_distro"),
+        },
+        {'name': 'Branch',
+         'clclass': 'branch',
+         'orderfield': _get_toggle_order(request, "branch", False),
+         'ordericon':_get_toggle_order_icon(request, "branch"),
+        },
+        {'name': 'Commit',
+         'clclass': 'commit',
+        },
+        {'name': 'Submitter',
+         'clclass': 'submitter',
+         'hidden': 1,
+         'orderfield': _get_toggle_order(request, "submitter", False),
+         'ordericon':_get_toggle_order_icon(request, "submitter"),
+        }],
     }
 
     return render_to_response(template_name, context, RequestContext(request))
diff --git a/templates/latest-errors.html b/templates/latest-errors.html
index 3927100..d002a65 100644
--- a/templates/latest-errors.html
+++ b/templates/latest-errors.html
@@ -7,42 +7,199 @@
 	<body>
 		{% block content %}
 		<script>$
-		function showhideTableColumn( clname, sh) {
-			if ( sh ) {
-				$('.' + clname ).show( 100 );
-			}
-			else {
-				$('.' + clname ).hide( 100 );
-			}
-			// save cookie for all checkboxes$
-			save = '';
-			$( '.chbxtoggle' ).each(function( ) {
-				if ( $( this ).attr( 'id' ) != undefined ) {
-					save += ';' + $( this ).attr( 'id' ) +':'+ $( this ).is( ':checked' )
-				}
-			});
-			$.cookie( '_displaycols_{{objectname}}', save );
-			save = '';
-		}
+
+    function reload_params(params) {
+        uri = window.location.href;
+        splitlist = uri.split("?");
+        url = splitlist[0], parameters=splitlist[1];
+        // deserialize the call parameters
+        if(parameters){
+            cparams = parameters.split("&");
+        }else{
+            cparams = []
+        }
+        nparams = {}
+        for (i = 0; i < cparams.length; i++) {
+            temp = cparams[i].split("=");
+            nparams[temp[0]] = temp[1];
+        }
+        // update parameter values
+        for (i in params) {
+            nparams[encodeURIComponent(i)] = encodeURIComponent(params[i]);
+        }
+        // serialize the structure
+        callparams = []
+        for (i in nparams) {
+            callparams.push(i+"="+nparams[i]);
+        }
+        window.location.href = url+"?"+callparams.join('&');
+}
+
+    // most of the following javascript is for managing the 'Edit Columns'
+    // pop-up dialog and actions. the idea is that there are 2 types
+    // of actions: immediate - performed while the dialog is still
+    // visible - hide/show columns, and delayed - performed when the
+    // dialog becomes invisible - any resorting if necessary.
+    //
+    // When the dialog is open, an interval timer is set up to
+    // determine if the dialog is still visible. when the dialog
+    // closes - goes invisible, the delayed actions are performed.
+    //
+    // the interval timer and interrupt handler is a way of simulating
+    // an onclose event. there is probably a simpler way to do this
+    // however the pop-up window id was elusive.
+    //
+
+    var editColTimer;
+    var editColAction;
+
+    //
+    // this is the target function of the interval timeout.
+    // check to see if the dialog is visible. if the dialog
+    // has gone invisible since the last check, take any delayed
+    // actions indicated in the action list and clear the timer.
+    //
+
+    function checkVisible( ) {
+        editcol = document.getElementById( 'editcol' );
+        if ( editcol.offsetWidth <= 0 ) {
+            clearInterval( editColTimer );
+            editColTimer = false;
+            hideshowColumns( );
+            editColAction = [ ];
+        }
+    }
+
+    //
+    // determine the value of the indicated url arg.
+    // this is needed to determine whether a resort
+    // is necessary. it looks like a lot of gorp stuff
+    // but its actually pretty simple.
+    //
+
+    function getURLParameter( name ) {
+        return decodeURIComponent((new RegExp('[?|&]' + name + '=' +
+          '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g,
+          '%20'))||null
+    }
+
+    //
+    // when the dialog box goes invisible
+    // this function is called to interpret
+    // the action list and take any delayed actions necessary.
+    // the editColAction list is a hash table with
+    // the column name as the hash key, the hash value
+    // is a 2 element list. the first element is a flag
+    // indicating whether the column is on or off. the
+    // 2nd element is the sort order indicator for the column.
+    //
+
+    function hideshowColumns( ) {
+        for( var k in editColAction ) {
+            showhideDelayedTableAction( k, editColAction[ k ][ 0 ], editColAction[ k ][ 1 ]);
+        }
+    }
+
+    //
+    // this function actually performs the delayed table actions
+    // namely any resorting if necessary
+    //
+
+    function showhideDelayedTableAction( clname, sh, orderkey) {
+        if ( !sh && orderkey) {
+            orderkey = orderkey.split( ":" )[ 0 ];
+            p = getURLParameter( "orderby" ).split( ":" )[ 0 ];
+            if ( p == orderkey ) {
+                reload_params({ 'orderby' : '{{default_orderby}}'});
+            }
+        }
+    }
+
+    //
+    // this function actually performs the immediate table actions
+    // namely any colums that need to be hidden/shown
+    //
+
+    function showhideImmediateTableAction( clname, sh, orderkey ) {
+        if ( sh ) {
+            $( '.' + clname ).show( 100 );
+        }
+        else {
+            $( '.' + clname ).hide( 100 );
+        }
+
+        // save cookie for all checkboxes
+        save = '';
+        $( '.chbxtoggle' ).each(function( ) {
+            if ( $( this ).attr( 'id' ) != undefined ) {
+                save += ';' + $( this ).attr( 'id' ) +':'+ $( this ).is( ':checked' )
+            }
+        });
+        $.cookie( '_displaycols_{{objectname}}', save );
+        save = '';
+    }
+
+    //
+    // this is the onclick handler for all of the check box
+    // items in edit columns dialog
+    //
+
+    function showhideTableColumn( clname, sh, orderkey ) {
+        editcol = document.getElementById( 'editcol' );
+        if ( editcol.offsetWidth <= 0 ) {
+
+            //
+            // this path is taken when the page is first
+            // getting initialized - no dialog visible,
+            // perform both the immediate and delayed actions
+            //
+
+            showhideImmediateTableAction( clname, sh, orderkey );
+            showhideDelayedTableAction( clname, sh, orderkey );
+            return;
+        }
+        if ( !editColTimer ) {
+
+            //
+            // we don't have a timer active so set one up
+            // and clear the action list
+            //
+
+            editColTimer = setInterval( checkVisible, 250 );
+            editColAction = [ ];
+        }
+
+        //
+        // save the action to be taken when the dialog closes
+        //
+
+        editColAction[ clname ] = [ sh, orderkey ];
+        showhideImmediateTableAction( clname, sh, orderkey );
+        showhideDelayedTableAction( clname, sh, orderkey);
+	}
+
 		</script>
 
+
 		<div class="row-fluid">
 			<ul class="nav nav-pills">
 				{% ifequal d 'autobuilder' %}
-					<li> <a href="{% url latest_errors %}?items=25&page=1&query=all_latest" >Latest errors</a> </li>
-					<li class="active"> <a href="{% url latest_errors %}?items=25&page=1&query=autobuilder_latest" >Latest Autobuilder errors</a></li>
+					<li class="active"> <a href="javascript:reload_params({'query' : 'latest_all'})">Latest errors</a></li>
+					<li> <a href="javascript:reload_params({})">Latest Autobuilder errors</a></li>
+
 				{% else %}
-					<li class="active"> <a href="{% url latest_errors %}?items=25&page=1&query=all_latest" >Latest errors</a> </li>
-					<li> <a href="{% url latest_errors %}?items=25&page=1&query=autobuilder_latest" >Latest Autobuilder errors</a></li>
+					<li class="active"> <a href="javascript:reload_params({})">Latest errors</a></li>
+					<li > <a href="javascript:reload_params({'query' : 'latest_autobuilder'})">Latest Autobuilder errors</a></li>
 				{% endifequal %}
 					<li> <a href="{% url main %}" >Statistics </a> </li>
 			</ul>
 			<div class="navbar">
 				<div class="navbar-inner">
 					{% if no > 10 %}
-						<form class="form-inline pull-right">
-							<label>Show latest:</label>
-								<select class="paginationLimit input-mini" onchange="javascript:window.open('{% url latest_errors %}?items='+this.value+'&page={{ details.number }}', '_self')">
+					<form class="form-inline pull-right">
+						<label>Show latest:</label>
+						<form>
+							<select class="paginationLimit input-mini" onchange="javascript:reload_params({'page': '1', 'items' : +this.value })">
 								{% ifequal items "10" %}
 									<option selected="selected" value = "10">10</option>
 									<option value = "25">25</option>
@@ -78,53 +235,75 @@
 									<option value = "100">100</option>
 									<option selected="selected" value = "150">150</option>
 								{%endifequal%}
-								</select>
+							</select>
 						</form>
-						<span class="divider-vertical pull-right"></span>
+					</form>
+					<span class="divider-vertical pull-right"></span>
 					{% endif %}
 					<div class="btn-group pull-right">
-					{% ifequal d "autobuilder" %}
-						<form style="display:inline" action="{% url entry_args %}" method="GET">
-							<div class="input-append">
-								<input type="text" name="items" value=10 style="display: none;">
-								<input type="text" name="page" value=1 style="display: none;">
-								<input type="text" name="query" value=autobuilder style="display: none;">
-							</div>
-							<button type="submit" value="View All" class="btn dropdown-toggle">View all Autobuilder errors </button>
-						</form>
-					{% endifequal %}
-					{% if tablecols %}
-						<button class="btn dropdown-toggle" data-toggle="dropdown">Edit columns
-							<span class="caret"></span>
-						</button>
-						<ul id='editcol' class="dropdown-menu">
-							{% for i in tablecols|sortcols %}
-							<li>
-							<label {% if not i.clclass %} class="checkbox muted" {%else%} class="checkbox" {%endif%}>
-								<input type="checkbox" class="chbxtoggle"
-								{% if i.clclass %}
-									id="{{i.clclass}}"
-									value="ct{{i.name}}"
-									{% if not i.hidden %}
-										checked="checked"
-									{%endif%}
-									onclick="showhideTableColumn($(this).attr('id'), $(this).is(':checked'))"
-								{%else%}
-									checked disabled
-								{% endif %}/>   {{i.name}}
-							</label>
-							</li>
-							{% endfor %}
-						</ul>
-					{% endif %}
+						{% ifequal d "autobuilder" %}
+							<form style="display:inline" action="{% url entry_args %}" method="GET">
+								<div class="input-append">
+									<input type="text" name="items" value=10 style="display: none;">
+									<input type="text" name="page" value=1 style="display: none;">
+									<input type="text" name="query" value=autobuilder style="display: none;">
+								</div>
+								<button type="submit" value="View All" class="btn dropdown-toggle">View all Autobuilder errors </button>
+							</form>
+						{% endifequal %}
+						{% if tablecols %}
+							<button class="btn dropdown-toggle" data-toggle="dropdown">Edit columns
+								<span class="caret"></span>
+							</button>
+							<ul id='editcol' class="dropdown-menu">
+								{% for i in tablecols|sortcols %}
+								<li>
+									<label
+										{% if not i.clclass %} class="checkbox muted" {%else%} class="checkbox" {%endif%}>
+										<input type="checkbox" class="chbxtoggle"
+										{% if i.clclass %}
+											id="{{i.clclass}}"
+											value="ct{{i.name}}"
+											{% if not i.hidden %}
+												checked="checked"
+											{%endif%}
+											onclick="showhideTableColumn($(this).attr('id'), $(this).is(':checked'), '{{i.orderfield}}')"
+										{%else%}
+											checked disabled
+										{% endif %}
+										/> {{i.name}}
+									</label>
+								</li>
+								{% endfor %}
+							</ul>
+						{% endif %}
 					</div>
 				</div> <!-- navbar-inner -->
 			</div>
 			{% if details %}
 				<table class="table table-bordered table-hover">
 					<thead>
+					<!-- Table header row; generated from "tablecols" entry in the context dict -->
 						<tr>
-							{% for i in tablecols %} <th class="{{i.dclass}} {{i.clclass}}"> {{i.name}} </th> {%endfor%}
+							{% for i in tablecols %}
+								<th class="{{i.clclass}}">
+										{%if i.orderfield%}
+											<a {%if i.ordericon%} class="sorted" {%endif%}
+												href="javascript:reload_params({'page': 1, 'orderby' : '{{i.orderfield}}' })" >
+												{{i.name}}
+											</a>
+										{%else%}
+											<span class="muted">
+												{{i.name}}
+											</span>
+										{%endif%}
+										{% if i.ordericon%}
+											<span class="sorting-arrows">
+												{% ifequal i.ordericon "down" %} &#9660 {% else %} &#9650 {% endifequal %}
+											</span>
+										{%endif%}
+									</th>
+							{%endfor%}
 						</tr>
 					</thead>
 					<tbody>
@@ -152,52 +331,52 @@
 						{%endfor%}
 					</tbody>
 				</table>
-					<div class="pagination pagination-centered">
-						<form class="form-inline pull-right">
-						{% if no > 10 %}
+				<div class="pagination pagination-centered">
+					<form class="form-inline pull-right">
+					{% if no > 10 %}
 						<label>Show latest:</label>
-								<form>
-									<select class="paginationLimit input-mini" onchange="javascript:window.open('{% url latest_errors %}?items='+this.value+'&page={{details.number}}', '_self')">
-										{% ifequal items "10" %}
-											<option selected="selected" value = "10">10</option>
-											<option value = "25">25</option>
-											<option value = "50">50</option>
-											<option value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "25"%}
-											<option value = "10">10</option>
-											<option selected="selected" value = "25">25</option>
-											<option value = "50">50</option>
-											<option value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "50"%}
-											<option value = "10">10</option>
-											<option value = "25">25</option>
-											<option selected="selected" value = "50">50</option>
-											<option value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "100"%}
-											<option value = "10">10</option>
-											<option value = "25">25</option>
-											<option value = "50">50</option>
-											<option selected="selected" value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "150"%}
-											<option value = "10">10</option>
-											<option value = "25">25</option>
-											<option value = "50">50</option>
-											<option value = "100">100</option>
-											<option selected="selected" value = "150">150</option>
-										{%endifequal%}
-									</select>
-								</form>
+						<form>
+							<select class="paginationLimit input-mini" onchange="javascript:reload_params({'page': '1', 'items' : +this.value })">
+								{% ifequal items "10" %}
+									<option selected="selected" value = "10">10</option>
+									<option value = "25">25</option>
+									<option value = "50">50</option>
+									<option value = "100">100</option>
+									<option value = "150">150</option>
+								{%endifequal%}
+								{% ifequal items "25"%}
+									<option value = "10">10</option>
+									<option selected="selected" value = "25">25</option>
+									<option value = "50">50</option>
+									<option value = "100">100</option>
+									<option value = "150">150</option>
+								{%endifequal%}
+								{% ifequal items "50"%}
+									<option value = "10">10</option>
+									<option value = "25">25</option>
+									<option selected="selected" value = "50">50</option>
+									<option value = "100">100</option>
+									<option value = "150">150</option>
+								{%endifequal%}
+								{% ifequal items "100"%}
+									<option value = "10">10</option>
+									<option value = "25">25</option>
+									<option value = "50">50</option>
+									<option selected="selected" value = "100">100</option>
+									<option value = "150">150</option>
+								{%endifequal%}
+								{% ifequal items "150"%}
+									<option value = "10">10</option>
+									<option value = "25">25</option>
+									<option value = "50">50</option>
+									<option value = "100">100</option>
+									<option selected="selected" value = "150">150</option>
+								{%endifequal%}
+							</select>
 						</form>
-						{% endif %}
-					</div>
+					</form>
+					{% endif %}
+				</div>
 			{% endif %}
 			{% if result %}
 			           <h4>Nothing matches your search!</h4>
@@ -206,7 +385,7 @@
 		<script>
 			$(document).ready(function() {
 				$('.commit > div').popover({placement:'left'})
-            
+
 				// we load cookies for the column display$
 				save = $.cookie('_displaycols_{{objectname}}');
 				if (save != undefined) {
diff --git a/templates/search-details.html b/templates/search-details.html
index ef586cd..fbba5a9 100644
--- a/templates/search-details.html
+++ b/templates/search-details.html
@@ -7,24 +7,181 @@
 	<body>
 		{% block content %}
 		<script>$
-		function showhideTableColumn( clname, sh) {
-			if ( sh ) {
-				$('.' + clname ).show( 100 );
-			}
-			else {
-				$('.' + clname ).hide( 100 );
-			}
-			// save cookie for all checkboxes$
-			save = '';
-			$( '.chbxtoggle' ).each(function( ) {
-				if ( $( this ).attr( 'id' ) != undefined ) {
-					save += ';' + $( this ).attr( 'id' ) +':'+ $( this ).is( ':checked' )
-				}
-			});
-			$.cookie( '_displaycols_{{objectname}}', save );
-			save = '';
-		}
-		</script>
+
+    function reload_params(params) {
+        uri = window.location.href;
+        splitlist = uri.split("?");
+        url = splitlist[0], parameters=splitlist[1];
+        // deserialize the call parameters
+        if(parameters){
+            cparams = parameters.split("&");
+        }else{
+            cparams = []
+        }
+        nparams = {}
+        for (i = 0; i < cparams.length; i++) {
+            temp = cparams[i].split("=");
+            nparams[temp[0]] = temp[1];
+        }
+        // update parameter values
+        for (i in params) {
+            nparams[encodeURIComponent(i)] = encodeURIComponent(params[i]);
+        }
+        // serialize the structure
+        callparams = []
+        for (i in nparams) {
+            callparams.push(i+"="+nparams[i]);
+        }
+        window.location.href = url+"?"+callparams.join('&');
+}
+
+    // most of the following javascript is for managing the 'Edit Columns'
+    // pop-up dialog and actions. the idea is that there are 2 types
+    // of actions: immediate - performed while the dialog is still
+    // visible - hide/show columns, and delayed - performed when the
+    // dialog becomes invisible - any resorting if necessary.
+    //
+    // When the dialog is open, an interval timer is set up to
+    // determine if the dialog is still visible. when the dialog
+    // closes - goes invisible, the delayed actions are performed.
+    //
+    // the interval timer and interrupt handler is a way of simulating
+    // an onclose event. there is probably a simpler way to do this
+    // however the pop-up window id was elusive.
+    //
+
+    var editColTimer;
+    var editColAction;
+
+    //
+    // this is the target function of the interval timeout.
+    // check to see if the dialog is visible. if the dialog
+    // has gone invisible since the last check, take any delayed
+    // actions indicated in the action list and clear the timer.
+    //
+
+    function checkVisible( ) {
+        editcol = document.getElementById( 'editcol' );
+        if ( editcol.offsetWidth <= 0 ) {
+            clearInterval( editColTimer );
+            editColTimer = false;
+            hideshowColumns( );
+            editColAction = [ ];
+        }
+    }
+
+    //
+    // determine the value of the indicated url arg.
+    // this is needed to determine whether a resort
+    // is necessary. it looks like a lot of gorp stuff
+    // but its actually pretty simple.
+    //
+
+    function getURLParameter( name ) {
+        return decodeURIComponent((new RegExp('[?|&]' + name + '=' +
+          '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g,
+          '%20'))||null
+    }
+
+    //
+    // when the dialog box goes invisible
+    // this function is called to interpret
+    // the action list and take any delayed actions necessary.
+    // the editColAction list is a hash table with
+    // the column name as the hash key, the hash value
+    // is a 2 element list. the first element is a flag
+    // indicating whether the column is on or off. the
+    // 2nd element is the sort order indicator for the column.
+    //
+
+    function hideshowColumns( ) {
+        for( var k in editColAction ) {
+            showhideDelayedTableAction( k, editColAction[ k ][ 0 ], editColAction[ k ][ 1 ]);
+        }
+    }
+
+    //
+    // this function actually performs the delayed table actions
+    // namely any resorting if necessary
+    //
+
+    function showhideDelayedTableAction( clname, sh, orderkey) {
+        if ( !sh && orderkey) {
+            orderkey = orderkey.split( ":" )[ 0 ];
+            p = getURLParameter( "orderby" ).split( ":" )[ 0 ];
+            if ( p == orderkey ) {
+                reload_params({ 'orderby' : '{{default_orderby}}'});
+            }
+        }
+    }
+
+    //
+    // this function actually performs the immediate table actions
+    // namely any colums that need to be hidden/shown
+    //
+
+    function showhideImmediateTableAction( clname, sh, orderkey ) {
+        if ( sh ) {
+            $( '.' + clname ).show( 100 );
+        }
+        else {
+            $( '.' + clname ).hide( 100 );
+        }
+
+        // save cookie for all checkboxes
+        save = '';
+        $( '.chbxtoggle' ).each(function( ) {
+            if ( $( this ).attr( 'id' ) != undefined ) {
+                save += ';' + $( this ).attr( 'id' ) +':'+ $( this ).is( ':checked' )
+            }
+        });
+        $.cookie( '_displaycols_{{objectname}}', save );
+        save = '';
+}
+
+    //
+    // this is the onclick handler for all of the check box
+    // items in edit columns dialog
+    //
+
+    function showhideTableColumn( clname, sh, orderkey ) {
+        editcol = document.getElementById( 'editcol' );
+        if ( editcol.offsetWidth <= 0 ) {
+
+            //
+            // this path is taken when the page is first
+            // getting initialized - no dialog visible,
+            // perform both the immediate and delayed actions
+            //
+
+            showhideImmediateTableAction( clname, sh, orderkey );
+            showhideDelayedTableAction( clname, sh, orderkey );
+            return;
+        }
+        if ( !editColTimer ) {
+
+            //
+            // we don't have a timer active so set one up
+            // and clear the action list
+            //
+
+            editColTimer = setInterval( checkVisible, 250 );
+            editColAction = [ ];
+        }
+
+        //
+        // save the action to be taken when the dialog closes
+        //
+
+        editColAction[ clname ] = [ sh, orderkey ];
+        showhideImmediateTableAction( clname, sh, orderkey );
+        showhideDelayedTableAction( clname, sh, orderkey);
+    }
+
+    </script>
+
+
+
 
 			<div class="row-fluid">
 				<div class="page-header">
@@ -34,10 +191,138 @@
 				</div>
 				<div class="navbar">
 					<div class="navbar-inner">
+						{% if no > 10 %}
 						<form class="form-inline pull-right">
+							<label>Show rows: </label>
+							<form>
+								<select class="paginationLimit input-mini" onchange="javascript:reload_params({'page': '1', 'items' : +this.value })">
+									{% ifequal items "10" %}
+										<option selected="selected" value = "10">10</option>
+										<option value = "25">25</option>
+										<option value = "50">50</option>
+										<option value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "25"%}
+										<option value = "10">10</option>
+										<option selected="selected" value = "25">25</option>
+										<option value = "50">50</option>
+										<option value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "50"%}
+										<option value = "10">10</option>
+										<option value = "25">25</option>
+										<option selected="selected" value = "50">50</option>
+										<option value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "100"%}
+										<option value = "10">10</option>
+										<option value = "25">25</option>
+										<option value = "50">50</option>
+										<option selected="selected" value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "150"%}
+										<option value = "10">10</option>
+										<option value = "25">25</option>
+										<option value = "50">50</option>
+										<option value = "100">100</option>
+										<option selected="selected" value = "150">150</option>
+									{%endifequal%}
+								</select>
+							</form>
+						</form>
+						<span class="divider-vertical pull-right"></span>
+						{% endif %}
+						{% if tablecols %}
+							<div class="btn-group pull-right">
+								<button class="btn dropdown-toggle" data-toggle="dropdown">Edit columns
+									<span class="caret"></span>
+								</button>
+								<ul id='editcol' class="dropdown-menu">
+									{% for i in tablecols|sortcols %}
+									<li>
+									<label
+										{% if not i.clclass %} class="checkbox muted" {%else%} class="checkbox" {%endif%}>
+										<input type="checkbox" class="chbxtoggle"
+										{% if i.clclass %}
+											id="{{i.clclass}}"
+											value="ct{{i.name}}"
+											{% if not i.hidden %}
+												checked="checked"
+											{%endif%}
+											onclick="showhideTableColumn($(this).attr('id'), $(this).is(':checked'), '{{i.orderfield}}')"
+										{%else%}
+											checked disabled
+										{% endif %}
+										/> {{i.name}}
+									</label>
+									</li>
+									{% endfor %}
+								</ul>
+						{% endif %}
+					</div>
+				</div> <!-- navbar-inner -->
+			</div>
+			{% if details %}
+				<table class="table table-bordered table-hover tablesorter">
+					<thead>
+					<!-- Table header row; generated from "tablecols" entry in the context dict -->
+						<tr>
+							{% for i in tablecols %}
+								<th class="{{i.clclass}}">
+									{%if i.orderfield%}
+										<a {%if i.ordericon%} class="sorted" {%endif%}
+											href="javascript:reload_params({'page': 1, 'orderby' : '{{i.orderfield}}' })" >
+											{{i.name}}
+										</a>
+									{%else%}
+										<span class="muted">
+											{{i.name}}
+										</span>
+									{%endif%}
+									{% if i.ordericon%}
+										<span class="sorting-arrows">
+											{% ifequal i.ordericon "down" %} &#9660 {% else %} &#9650 {% endifequal %}
+										</span>
+									{%endif%}
+								</th>
+							{%endfor%}
+						</tr>
+					</thead>
+					<tbody>
+						{%for detail in details %}
+							<tr class="data">
+								<td class="submitted_on"> <a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.DATE|date:"d/m/y H:i"}}</a></td>
+								<td class="recipe"><a href="{% url id detail.id details.number items d %}">{{ detail.RECIPE }}</a></td>
+								<td class="recipe_version"><a href="{% url id detail.id details.number items d %}">{{ detail.RECIPE_VERSION }}</a></td>
+								<td class="task"><a href="{% url id detail.id details.number items d %}">{{ detail.TASK }}</a></td>
+								<td class="machine"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.MACHINE }}</a></td>
+								<td class="distro"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.DISTRO }}</a></td>
+								<td class="build_sys"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BUILD_SYS }}</a></td>
+								<td class="target_sys"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.TARGET_SYS }}</a></td>
+								<td class="host_distro"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.NATIVELSBSTRING }}</a></td>
+								<td class="branch"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BRANCH }} </a></td>
+								<td class="commit">
+									{% autoescape off %}
+										<div class="btn" rel="popover" data-content= {{ detail.BUILD.COMMIT|escape}} title="">
+											{% endautoescape %}
+										{{ detail.BUILD.COMMIT|truncatechars:10}}
+										</div>
+								</td>
+								<td class="submitter"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.NAME }} </a></td>
+							</tr>
+						{%endfor%}
+					</tbody>
+					</table>
+						<div class="pagination pagination-centered">
+							<form class="form-inline pull-right">
 							{% if no > 10 %}
-								<label>Show rows:</label>
-										<select class="paginationLimit input-mini" style="margin-top:5px;margin-bottom:0px;width:60px;" onchange="javascript:window.open('{% url entry_args %}?items='+this.value+'&page={{ details.number }}&query={{ d }}', '_self')">
+							<label>Show rows:</label>
+								<form>
+									<select class="paginationLimit input-mini" onchange="javascript:reload_params({'page': '1', 'items' : +this.value })">
 										{% ifequal items "10" %}
 											<option selected="selected" value = "10">10</option>
 											<option value = "25">25</option>
@@ -73,139 +358,32 @@
 											<option value = "100">100</option>
 											<option selected="selected" value = "150">150</option>
 										{%endifequal%}
-										</select>
-						</form>
-						<span class="divider-vertical pull-right"></span>
-							{% endif %}
-						{% if tablecols %}
-							<div class="btn-group pull-right">
-								<button class="btn dropdown-toggle" data-toggle="dropdown">Edit columns
-									<span class="caret"></span>
-								</button>
-								<ul id='editcol' class="dropdown-menu">
-									{% for i in tablecols|sortcols %}
-									<li>
-									<label {% if not i.clclass %} class="checkbox muted" {%else%} class="checkbox" {%endif%}>
-										<input type="checkbox" class="chbxtoggle"
-										{% if i.clclass %}
-											id="{{i.clclass}}"
-											value="ct{{i.name}}"
-											{% if not i.hidden %}
-												checked="checked"
-											{%endif%}
-											onclick="showhideTableColumn($(this).attr('id'), $(this).is(':checked'))"
-										{%else%}
-											checked disabled
-										{% endif %}/>   {{i.name}}
-									</label>
-									</li>
-									{% endfor %}
-								</ul>
-						{% endif %}
-					</div>
-				</div> <!-- navbar-inner -->
-			</div>
-			{% if details %}
-					<table class="table table-bordered table-hover">
-						<thead>
-							<tr>
-								{% for i in tablecols %} <th class="{{i.dclass}} {{i.clclass}}"> {{i.name}} </th> {%endfor%}
-							</tr>
-						</thead>
-						<tbody>
-							{%for detail in details %}
-								<tr class="data">
-									<td class="submitted_on"> <a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.DATE|date:"d/m/y H:i"}}</a></td>
-									<td class="recipe"><a href="{% url id detail.id details.number items d %}">{{ detail.RECIPE }}</a></td>
-									<td class="recipe_version"><a href="{% url id detail.id details.number items d %}">{{ detail.RECIPE_VERSION }}</a></td>
-									<td class="task"><a href="{% url id detail.id details.number items d %}">{{ detail.TASK }}</a></td>
-									<td class="machine"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.MACHINE }}</a></td>
-									<td class="distro"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.DISTRO }}</a></td>
-									<td class="build_sys"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BUILD_SYS }}</a></td>
-									<td class="target_sys"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.TARGET_SYS }}</a></td>
-									<td class="host_distro"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.NATIVELSBSTRING }}</a></td>
-									<td class="branch"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BRANCH }} </a></td>
-									<td class="commit">
-										{% autoescape off %}
-											<div class="btn" rel="popover" data-content= {{ detail.BUILD.COMMIT|escape}} title="">
-												{% endautoescape %}
-											{{ detail.BUILD.COMMIT|truncatechars:10}}
-											</div>
-									</td>
-									<td class="submitter"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.NAME }} </a></td>
-								</tr>
-							{%endfor%}
-						</tbody>
-					</table>
-						<div class="pagination pagination-centered">
-							<form class="form-inline pull-right">
-							{% if no > 10 %}
-							<label>Show rows:</label>
-									<form>
-										<select class="paginationLimit" style="margin-top:5px;margin-bottom:0px;width:60px;" onchange="javascript:window.open('{% url entry_args %}?items='+this.value+'&page={{ details.number }}&query={{ d }}', '_self')">
-											{% ifequal items "10" %}
-												<option selected="selected" value = "10">10</option>
-												<option value = "25">25</option>
-												<option value = "50">50</option>
-												<option value = "100">100</option>
-												<option value = "150">150</option>
-											{%endifequal%}
-											{% ifequal items "25"%}
-												<option value = "10">10</option>
-												<option selected="selected" value = "25">25</option>
-												<option value = "50">50</option>
-												<option value = "100">100</option>
-												<option value = "150">150</option>
-											{%endifequal%}
-											{% ifequal items "50"%}
-												<option value = "10">10</option>
-												<option value = "25">25</option>
-												<option selected="selected" value = "50">50</option>
-												<option value = "100">100</option>
-												<option value = "150">150</option>
-											{%endifequal%}
-											{% ifequal items "100"%}
-												<option value = "10">10</option>
-												<option value = "25">25</option>
-												<option value = "50">50</option>
-												<option selected="selected" value = "100">100</option>
-												<option value = "150">150</option>
-											{%endifequal%}
-											{% ifequal items "150"%}
-												<option value = "10">10</option>
-												<option value = "25">25</option>
-												<option value = "50">50</option>
-												<option value = "100">100</option>
-												<option selected="selected" value = "150">150</option>
-											{%endifequal%}
-										</select>
-									</form>
+									</select>
+								</form>
 							</form>
 							{% endif %}
 							 <ul>
 								{% if details.has_previous %}
-								<li><a href="?items={{items}}&page={{ details.previous_page_number }}&query={{ d }}">Previous</a></li>
+								<li><a href="javascript:reload_params({'page' : '{{ details.previous_page_number }}'})">Previous</a></li>
 								{% else %}
 									<li class="disabled"><span>Previous</span></li>
 								{% endif %}
-								
+
 								{% for pnum in list %}
 									{% if pnum == details.number %}
 										   <li class="active"><span>{{ details.number }}</span></li>
 									{% else %}
-									<li><a href="?items={{items}}&page={{ pnum }}&query={{ d }}">{{ pnum }}</a></li>
+									<li><a href="javascript:reload_params({'page' : '{{ details.next_page_number }}'})">{{ pnum }}</a></li>
 									{% endif %}
 								{% endfor %}
-							
+
 								{% if details.has_next %}
-								<li class="next"><a href="?items={{items}}&page={{ details.next_page_number }}&query={{ d }}">Next</a></li>
+								<li class="next"> <a href="javascript:reload_params({'page' : '{{ details.next_page_number }}'})">Next</a></li>
 								{% else %}
 									<li class="disabled"><span>Next</span></li>
 								{% endif %}
 							</ul>
 						</div>
-						
-						
 				{% endif %}
 				{% if result %}
 				           <h4>Nothing matches your search!</h4>
-- 
1.9.1


