Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4965BE00A94; Mon, 17 Aug 2015 08:30:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1A54E00A94
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 08:30:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 17 Aug 2015 08:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,695,1432623600"; d="scan'208";a="785364140"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.24.49])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2015 08:30:28 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 17 Aug 2015 10:30:13 -0500
Message-Id: <1439825413-6276-3-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1439825413-6276-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1439825413-6276-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 2/2] rrs/base_toplevel.html: Navbar redesign
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
X-List-Received-Date: Mon, 17 Aug 2015 15:30:43 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This provides changes in the front end for the
navbar, now it shows the percentage of recipes
up-to-date, not update, unknown and can't be
updated along with the number of recipes.

This also moves the update percentage to the
end and adds clarity to what it means.

This also moves the export list button the the
top bar.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/static/css/rrs-additional.css | 13 ++++++++----
 templates/rrs/base_toplevel.html  | 44 ++++++++++++++++++++++++---------------
 2 files changed, 36 insertions(+), 21 deletions(-)

diff --git a/rrs/static/css/rrs-additional.css b/rrs/static/css/rrs-additional.css
index bdfa151..0066945 100644
--- a/rrs/static/css/rrs-additional.css
+++ b/rrs/static/css/rrs-additional.css
@@ -43,6 +43,11 @@
 	margin-top: 40px;
 }
 
+.nav > li.lead {
+	margin: 5px 25px 0 5px;
+}
+
+
 /* Sorting styles  */
 th > a, th.muted {
     font-weight: normal;
@@ -71,6 +76,10 @@ th > a, th.muted {
 	margin-bottom: 0;
 }
 
+.navbar .nav > li > .secondary-info {
+    font-size:70%;
+}
+
 .navbar .badge {
 	margin-top: 10px;
 	margin-right: 10px;
@@ -104,10 +113,6 @@ th > a, th.muted {
 	padding: 8px 14px 8px 14px;
 }
 
-.nav > li.lead {
-	margin: 5px 0 0 5px;
-}
-
 
 /* about recipe styles */
 
diff --git a/templates/rrs/base_toplevel.html b/templates/rrs/base_toplevel.html
index fd0c96c..9e00cef 100644
--- a/templates/rrs/base_toplevel.html
+++ b/templates/rrs/base_toplevel.html
@@ -51,6 +51,7 @@
     </li>
 {% endblock %}
 </ul>
+                    <a href="{% url 'recipesreport' release_name milestone_name %}" class="btn pull-right">Export recipe list</a>
 {% endblock %}
 
 {% block content %}
@@ -58,25 +59,34 @@
 
             <div class="navbar">
                 <div class="navbar-inner">
-                    <span class="brand">
-                        {{ release_name }}
-                        {% if milestone_name != "All" %}
-                        {{ milestone_name }}
-                        {% endif %}
-                    </span>
                     <ul class="nav">
-                        <li class="divider-vertical"></li>
-                        <li class="lead" id="percentage" data-toggle="tooltip" title="Upgrades done in the period divided by recipes not updated at the beginning of the period"><strong>{{ recipes_percentage }}%</strong> Updated</li>
-                        <li class="divider-vertical"></li>
-                        <li class="lead" id="up-to-date-recipes">Up-to-date: <span class="text-success">{{ recipes_up_to_date }}</strong></li>
-                        <li class="divider-vertical"></li>
-                        <li class="lead" id="not-updated-recipes">Not updated: <span class="text-error">{{ recipes_not_updated }}</strong></li>
-                        <li class="divider-vertical"></li>
-                        <li class="lead" id="cant-be-updated-recipes">Can't be updated: <span class="muted">{{ recipes_cant_be_updated }}</strong></li>
-                        <li class="divider-vertical"></li>
-                        <li class="lead" id="unknown-recipes">Unknown: <span class="text-warning">{{ recipes_unknown }}</strong></li>
+                        <li class="lead">
+                            {{ release_name }}
+                            {% if milestone_name != "All" %}
+                            {{ milestone_name }}
+                            {% endif %}
+                        </li>
+                        <li class="lead" id="up-to-date-recipes">
+                            <span class="text-success">{{ recipes_percentage_up_to_date }}%</span>
+                            <span class="secondary-info">up-to-date ({{ recipes_up_to_date }})</span>
+                        </li>
+                        <li class="lead" id="not-updated-recipes">
+                            <span class="text-error">{{ recipes_percentage_not_updated }}%</span>
+                            <span class="secondary-info">not updated ({{ recipes_not_updated }})</span>
+                        </li>
+                        <li class="lead" id="cant-be-updated-recipes">
+                            <span class="muted">{{ recipes_percentage_cant_be_updated }}%</span>
+                            <span class="secondary-info">can't be updated ({{ recipes_cant_be_updated }})</span>
+                        </li>
+                        <li class="lead" id="unknown-recipes">
+                            <span class="text-warning">{{ recipes_percentage_unknown }}%</span>
+                            <span class="secondary-info">unknown ({{ recipes_unknown }})</span>
+                        </li>
+                        <li class="lead" id="percentage">
+                            <span class="normal-text">{{ recipes_percentage }}%</span>
+                            <span class="secondary-info">of planned work done ({{ recipes_all_upgraded }} of {{ recipes_all_not_upgraded }})</span>
+                        </li>
                     </ul>
-                    <a href="{% url 'recipesreport' release_name milestone_name %}" class="btn pull-right">Export recipe list</a>
                     <ul class="nav">
                         {% block navs %}{% endblock %}
                     </ul>
-- 
1.9.1


