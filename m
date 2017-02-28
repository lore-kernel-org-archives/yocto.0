Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E31A1E00655; Mon, 27 Feb 2017 17:25:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0704DE00935
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 17:25:52 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Feb 2017 17:25:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,216,1484035200"; 
	d="scan'208,217";a="938780748"
Received: from skhalsa-mobl1.amr.corp.intel.com (HELO
	jalamego-MOBL2.amr.corp.intel.com) ([10.254.178.181])
	by orsmga003.jf.intel.com with ESMTP; 27 Feb 2017 17:25:52 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 19:25:34 -0600
Message-Id: <1488245135-7709-3-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488245135-7709-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1488245135-7709-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 2/3] series.html: add patch and bundle edition forms and checkboxes
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
X-List-Received-Date: Tue, 28 Feb 2017 01:25:58 -0000

This change adds patch and bundle edition forms, and patch selection
checkboxes.

[YOCTO #10822]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/templates/patchwork/series.html | 172 ++++++++++++++++++++++--------
 1 file changed, 130 insertions(+), 42 deletions(-)

diff --git a/patchwork/templates/patchwork/series.html b/patchwork/templates/patchwork/series.html
index 0ba1f14..3c2cad9 100644
--- a/patchwork/templates/patchwork/series.html
+++ b/patchwork/templates/patchwork/series.html
@@ -2,6 +2,9 @@
 
 {% load person %}
 {% load static %}
+{% load patch %}
+{% load listurl %}
+
 
 {% block title %}{{project.name}}{% endblock %}
 {% block headers %}
@@ -78,67 +81,152 @@ function toggle_headers(link_id, headers_id)
   </nav>
 
   <div id="cover-letter-view">
-{% if cover_letter %}
-  <h2>Cover Letter</h2>
-  <div class="comment">
-    <pre class="content">
-      {{ cover_letter }}
-    </pre>
-  </div>
-{% else %}
-  <h2 style="color:#909090">No cover letter was found for this series.</h2>
-{% endif %}
+    {% if cover_letter %}
+      <h2>Cover Letter</h2>
+      <div class="comment">
+        <pre class="content">
+          {{ cover_letter }}
+        </pre>
+      </div>
+    {% else %}
+      <h2 style="color:#909090">No cover letter was found for this series.</h2>
+    {% endif %}
   </div>
 
   <div class="tab-content" id="patches-list">
-{% for revision in revisions %}
-    <div role="tabpanel" id="rev{{ revision.version }}"
-         class="tab-pane fade{% if forloop.last %} in active{% endif %}">
-
-    <h3>Patches <a href="{% url 'seriesrevision-mbox' series.pk revision.version %}" >download mbox</a></h3>
-
-      <div class="well transparent">
-        <table class="table table-hover table-condensed pw-list" id="series-patchlist">
+    {% for revision in revisions %}
+      <div role="tabpanel" id="rev{{ revision.version }}"
+           class="tab-pane fade{% if forloop.last %} in active{% endif %}">
+        <h3>Patches <a href="{% url 'seriesrevision-mbox' series.pk revision.version %}" data-toggle="tooltip"
+                     title="Download all patches in selected revision as mbox">download mbox</a></h3>
+        <div class="well transparent">
+        <table class="table table-hover table-condensed pw-list">
           <thead>
             <tr>
-              <th>#</th>
+              {% if user.is_authenticated %}
+                <th>
+                  <input type="checkbox" name="{{ revision.version }}-sel-all" data-toggle="tooltip"
+                    title="Select all patches in current revision for status or bundling changing"/>
+                </th>
+              {% endif %}
               <th>Name</th>
               <th>Submitter</th>
               <th>State</th>
             </tr>
           </thead>
-          <tbody>
-        {% for patch in revision.patch_list %}
-            <tr>
-              <td></td>
-              <td><a href="#" class="patch-link" data-toggle="tooltip" title="Click to view the patch at bottom section"data-url="{% url 'patchwork.views.patch.patch' patch_id=patch.id %}">{{ patch.name|default:"[no subject]"|truncatechars:100 }}</a></td>
-              <td>{{ patch.submitter|personify:project }}</td>
-              <td>{{ patch.state }}</td>
-            <tr>
-        {% endfor %}
-          </tbody>
+          {% for patch in revision.patch_list %}
+            <tbody>
+              <tr id="patch_row:{{patch.id}}">
+                {% if user.is_authenticated %}
+                  <td>
+                    <input type="checkbox" name="patch_id:{{patch.id}}" data-rev="{{ revision.version }}"
+                     data-toggle="tooltip" title="Select this patch for status or bundling changing"/>
+                  </td>
+                {% endif %}
+                <td><a href="#" class="patch-link" data-toggle="tooltip" title="Click to view the patch at bottom section"
+                     data-url="{% url 'patchwork.views.patch.patch' patch_id=patch.id %}"
+                     >{{ patch.name|default:"[no subject]"|truncatechars:100 }}</a></td>
+                <td>{{ patch.submitter|personify:project }}</td>
+                <td>{{ patch.state }}</td>
+              <tr>
+            </tbody>
+          {% endfor %}
         </table>
+        </div>
       </div>
-
-    {% if revision.test_results %}
-    <h3>Tests</h3>
-
-    <div class="well transparent">
-      <div class="panel-group" id="test-accordion" role="tablist" aria-multiselectable="true" data-toggle="tooltip" title="Click to view/hide available test results">
-        {% for test_result in revision.test_results %}
-        {% include "patchwork/test-result.html" %}
-        {% endfor %}
-      </div>
+    {% endfor %}
+
+    <div id="seriesForm">
+    {% if user.is_authenticated %}
+    <div class="patchforms">
+      {% if patchform %}
+        <div class="patchform patchform-properties">
+          <h3>Series patches edit</h3>
+          <form method="post" id="seriesForm-patches">
+            {% csrf_token %}
+            <input type="hidden" name="patches"/>
+            <table class="form">
+              <tr>
+                <th>Change state:</th>
+                <td>
+                  {{ patchform.state }}
+                  {{ patchform.state.errors }}
+                </td>
+              </tr>
+              <tr>
+                <th>Delegate to:</th>
+                <td>
+                    {{ patchform.delegate }}
+                    {{ patchform.delegate.errors }}
+                </td>
+              </tr>
+              <tr>
+                <th>Archive:</th>
+                <td>
+                  {{ patchform.archived }}
+                  {{ patchform.archived.errors }}
+                </td>
+              </tr>
+              <tr>
+                <td></td>
+                <td>
+                  <button id="seriesPatches-update">Update</button>
+                </td>
+              </tr>
+            </table>
+          </form>
+        </div>
+      {% endif %}
     </div>
 
     {% endif %}
 
+    {% if createbundleform %}
+      <div class="patchform patchform-bundle" id="seriesForm-bundles">
+        <h3>Bundling</h3>
+          <table class="form">
+          <tr>
+            <td>Create bundle:</td>
+            <td>
+              {% if createbundleform.non_field_errors %}
+                <dd class="errors">{{createbundleform.non_field_errors}}</dd>
+              {% endif %}
+                <form method="post">
+                {% csrf_token %}
+                <input type="hidden" name="patches"/>
+                <input type="hidden" name="action" value="createbundle"/>
+                {% if createbundleform.name.errors %}
+                  <dd class="errors">{{createbundleform.name.errors}}</dd>
+                {% endif %}
+                {{ createbundleform.name }}
+                <input value="Create" type="submit" id="seriesPatches-create"/>
+              </form>
+            </td>
+          </tr>
+          {% if bundles %}
+            <tr>
+              <td>Add to bundle:</td>
+              <td>
+                <form method="post">
+                {% csrf_token %}
+                <input type="hidden" name="patches"/>
+                <input type="hidden" name="action" value="addtobundle"/>
+                <select name="bundle_id">
+                  {% for bundle in bundles %}
+                    <option value="{{bundle.id}}">{{bundle.name}}</option>
+                  {% endfor %}
+                </select>
+                <input value="Add" type="submit" id="seriesPatches-add"/>
+                </form>
+              </td>
+            </tr>
+          {% endif %}
+          </table>
+      </div>
+    {% endif %}
     </div>
-{% endfor %}
   </div>
 
   <div id="patch-view" class="container-fluid"></div>
 
-</div>
-
 {% endblock %}
-- 
2.7.4


