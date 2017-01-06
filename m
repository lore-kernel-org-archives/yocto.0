Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7E36E00A64; Fri,  6 Jan 2017 06:51:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83893E007C2
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 06:51:02 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2017 06:51:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,325,1477983600"; d="scan'208";a="919627859"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.139])
	by orsmga003.jf.intel.com with ESMTP; 06 Jan 2017 06:51:01 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  6 Jan 2017 08:50:46 -0600
Message-Id: <1483714246-6857-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Jose Lamego <jose.a.lamego@intel.com>
Subject: [patchwork][PATCH] patchwork/templates/patchwork/series: Improve series view
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
X-List-Received-Date: Fri, 06 Jan 2017 14:51:05 -0000

From: Jose Lamego <jose.a.lamego@intel.com>

Reviewing patches from a series requires heavy usage of the
browser navigation buttons, providing a poor UX.

This changes allows viewing content from each patch in a series,
without leaving the series view.

[YOCTO #10627]

Signed-off-by: Jose Lamego <jose.a.lamego@intel.com>
---
 htdocs/js/series.js                       |  43 +++++++++++
 patchwork/templates/patchwork/patch.html  |  15 ++--
 patchwork/templates/patchwork/series.html | 114 ++++++++++++++++--------------
 3 files changed, 113 insertions(+), 59 deletions(-)
 create mode 100644 htdocs/js/series.js

diff --git a/htdocs/js/series.js b/htdocs/js/series.js
new file mode 100644
index 0000000..4f4f477
--- /dev/null
+++ b/htdocs/js/series.js
@@ -0,0 +1,43 @@
+$(document).ready(function(){
+    $('[data-toggle="tooltip"]').tooltip();
+    revTab=document.getElementById('revs-list')
+    coverView=document.getElementById('cover-letter-view'),
+    patchView=document.getElementById('patch-view'),
+    patchList=document.getElementById('patches-list')
+
+    revTab.style.border='none'
+    revTab.style.background='transparent'
+    revTab.style.padding='15px'
+    coverView.style.display='block'
+    patchView.style.display='none'
+    patchList.style.display='none'
+
+    document.getElementById('cover-letter-tab').onclick=function(){
+        coverView.style.display='block'
+        patchView.style.display='none'
+        patchList.style.display='none'
+    }
+
+    document.getElementById('patches-tab').onclick=function(){
+        coverView.style.display='none'
+        patchList.style.display='block'
+        patchView.style.display="none"
+    }
+
+    $('#revs-list').on('change', function(e){
+        var optionSelected=$("option:selected", this)
+        jQuery('.tab-content div.tab-pane.fade.in.active').
+        removeClass(' in active')
+        jQuery('.tab-content div#'+this.value+'.tab-pane.fade').
+        addClass(' in active')
+        patchView.style.display='none'
+    })
+
+    $('.patch-link').on('click', function(){
+        coverView.style.display='none'
+        patchView.style.display='block'
+        patchView.innerHTML=
+        '<p style="text-align:center;">Loading patch...</p>'
+        $("#patch-view").load(this.getAttribute("data-url") + " #patch-body")
+    })
+})
diff --git a/patchwork/templates/patchwork/patch.html b/patchwork/templates/patchwork/patch.html
index 5ce540d..59df19d 100644
--- a/patchwork/templates/patchwork/patch.html
+++ b/patchwork/templates/patchwork/patch.html
@@ -7,6 +7,7 @@
 {% block title %}{{patch.name}}{% endblock %}
 
 {% block body %}
+
 <script type="text/javascript">
 function toggle_headers(link_id, headers_id)
 {
@@ -25,10 +26,12 @@ function toggle_headers(link_id, headers_id)
 
 }
 </script>
-
+<div id="patch-body">
 <h1>{{ patch.name }}</h1>
 <div class="core-info">
     <span>Submitted by {{ patch.submitter|personify:project }} on {{ patch.date }}</span>
+    <span>|</span>
+    <span>Patch ID: <strong>{{ patch.id }}</strong></span>
 </div>
 
 <h2>Details</h2>
@@ -134,10 +137,10 @@ function toggle_headers(link_id, headers_id)
       <form method="post">
        {% csrf_token %}
        <input type="hidden" name="action" value="addtobundle"/>
-       <select name="bundle_id"/>
-        {% for bundle in bundles %}
-         <option value="{{bundle.id}}">{{bundle.name}}</option>
-        {% endfor %}
+        <select name="bundle_id">
+         {% for bundle in bundles %}
+          <option value="{{bundle.id}}">{{bundle.name}}</option>
+         {% endfor %}
         </select>
        <input value="Add" type="submit"/>
       </form>
@@ -219,5 +222,5 @@ function toggle_headers(link_id, headers_id)
 </pre>
 </div>
 {% endfor %}
-
+</div>
 {% endblock %}
diff --git a/patchwork/templates/patchwork/series.html b/patchwork/templates/patchwork/series.html
index c0a5261..6c35212 100644
--- a/patchwork/templates/patchwork/series.html
+++ b/patchwork/templates/patchwork/series.html
@@ -1,6 +1,7 @@
 {% extends "base.html" %}
 
 {% load person %}
+{% load static %}
 
 {% block title %}{{project.name}}{% endblock %}
 {% block headers %}
@@ -9,64 +10,70 @@ $(function () {
     pw.setup_series({ patches: 'series-patchlist' });
 });
 </script>
+<script type="text/javascript" src="{% static "js/series.js" %}"></script>
 {% endblock %}
 
 {% block body %}
-<h1>{{ series.name }}</h1>
-
-<div class="core-info">
-  <span>Submitted by {{ series.submitter|personify:project }} on {{ series.submitted }}</span>
-</div>
-
-<h2>Details</h2>
+  <h1>{{ series.name }}</h1>
+
+  <div class="core-info">
+    <span data-toggle="tooltip" title="View all patches submitted by this user">Submitted by {{ series.submitter|personify:project }} on {{ series.submitted }}</span>
+    <span>|</span>
+    <span>Reviewer: {{ series.reviewer }}</span>
+    <span>|</span>
+    <span>Updated on: {{ series.last_updated }}</span>
+    <span>|</span>
+    <span>Series ID: <strong>{{ series.pk }}</strong></span>
+  </div>
 
-<table class="patchmeta">
-  <tr>
-    <th>Reviewer</th>
-{% if series.reviewer %}
-    <td>{{ series.reviewer.name }}</td>
-{% else %}
-    <td><em class="text-muted">None</em></td>
-{% endif %}
-  </tr>
-  <tr>
-    <th>Submitted</th>
-    <td>{{ series.submitted }}</td>
-  </tr>
-  <tr>
-    <th>Last Updated</th>
-    <td>{{ series.last_updated }}</td>
-  </tr>
-  <tr>
-    <th>Revision</th>
-    <td>{{ series.last_revision.version }}</td>
-  </tr>
-</table>
+  <nav class="navbar navbar-default" role="navigation" id="series-navigation">
+    <div class="container-fluid">
+      <div class="navbar-header">
+        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse2">
+          <span class="sr-only">Toggle navigation</span>
+          <span class="icon-bar"></span>
+          <span class="icon-bar"></span>
+          <span class="icon-bar"></span>
+        </button>
+      </div>
+      <div class="collapse navbar-collapse" id="navbar-collapse2">
+        <ul class="nav navbar-nav">
+          <li>
+            <select id="revs-list" data-toggle="tooltip" title="Select a Series Revision">
+              {% for revision in revisions %}
+                <option {% if forloop.last %}selected="selected"{%endif%} value='rev{{ revision.version }}'>
+                  Revision <strong>{{ revision.version }}</strong>
+                </option>
+              {% endfor %}
+            </select>
+          </li>
+          <li id="cover-letter-tab">
+            <a href="#" data-toggle="tooltip" title="View the Cover Letter if available">Cover letter</a>
+          </li>
+          <li id="patches-tab">
+            <a href="#" data-toggle="tooltip" title="List patches from selected revision">
+              Patches ({{ series.latest_revision.n_patches }})
+            </a>
+          </li>
+        </ul>
+      </div>
+    </div>
+  </nav>
 
+  <div id="cover-letter-view">
 {% if cover_letter %}
-<h2>Cover Letter</h2>
-
-<div class="comment">
-  <pre class="content">
-{{ cover_letter }}
-  </pre>
-</div>
-
+  <h2>Cover Letter</h2>
+  <div class="comment">
+    <pre class="content">
+      {{ cover_letter }}
+    </pre>
+  </div>
+{% else %}
+  <h2 style="color:#909090">No cover letter was found for this series.</h2>
 {% endif %}
+  </div>
 
-<h2>Revisions</h2>
-
-<div>
-
-  <ul class="nav nav-pills small-pills" data-tabs="tabs" role="tablist">
-{% for revision in revisions %}
-    <li role="presentation"{% if forloop.last %} class="active"{%endif%}>
-      <a data-toggle="pill" href="#rev{{ revision.version }}">rev {{ revision.version }}</a>
-    </li>
-{% endfor %}
-  </ul>
-
-  <div class="tab-content">
+  <div class="tab-content" id="patches-list">
 {% for revision in revisions %}
     <div role="tabpanel" id="rev{{ revision.version }}"
          class="tab-pane fade{% if forloop.last %} in active{% endif %}">
@@ -87,8 +94,7 @@ $(function () {
         {% for patch in revision.patch_list %}
             <tr>
               <td></td>
-              <td><a href="{% url 'patchwork.views.patch.patch' patch_id=patch.id %}"
-                >{{ patch.name|default:"[no subject]"|truncatechars:100 }}</a></td>
+              <td><a href="#" class="patch-link" data-toggle="tooltip" title="Click to view the patch at bottom section"data-url="{% url 'patchwork.views.patch.patch' patch_id=patch.id %}">{{ patch.name|default:"[no subject]"|truncatechars:100 }}</a></td>
               <td>{{ patch.submitter|personify:project }}</td>
               <td>{{ patch.state }}</td>
             <tr>
@@ -101,7 +107,7 @@ $(function () {
     <h3>Tests</h3>
 
     <div class="well transparent">
-      <div class="panel-group" id="test-accordion" role="tablist" aria-multiselectable="true">
+      <div class="panel-group" id="test-accordion" role="tablist" aria-multiselectable="true" data-toggle="tooltip" title="Click to view/hide available test results">
         {% for test_result in revision.test_results %}
         {% include "patchwork/test-result.html" %}
         {% endfor %}
@@ -114,6 +120,8 @@ $(function () {
 {% endfor %}
   </div>
 
+  <div id="patch-view" class="container-fluid"></div>
+
 </div>
 
 {% endblock %}
-- 
1.9.1


