Return-Path: <roxana.ciobanu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEFE1E00857; Thu, 18 Sep 2014 03:12:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70D58E00855
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 03:12:50 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 18 Sep 2014 03:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="387961525"
Received: from roxana-optiplex-9010.rb.intel.com ([10.237.105.45])
	by FMSMGA003.fm.intel.com with ESMTP; 18 Sep 2014 03:07:15 -0700
From: Roxana Ciobanu <roxana.ciobanu@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Sep 2014 13:12:51 +0300
Message-Id: <6a239524adcb7613f42d68fc1de60f13ad84f9f0.1411035077.git.roxana.ciobanu@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1411035077.git.roxana.ciobanu@intel.com>
References: <cover.1411035077.git.roxana.ciobanu@intel.com>
In-Reply-To: <cover.1411035077.git.roxana.ciobanu@intel.com>
References: <cover.1411035077.git.roxana.ciobanu@intel.com>
Subject: [PATCH 1/1] error-report-web: Enhancements to the error pager
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
X-List-Received-Date: Thu, 18 Sep 2014 10:12:56 -0000

- add link to the Yocto Project web repositor
- add link to the Yocto Project Bugzilla instance

[YOCTO #6540]

Signed-off-by: Roxana Ciobanu <roxana.ciobanu@intel.com>
---
 Post/static/css/custom.css    | 17 +++++++++++++++++
 templates/error-details.html  | 22 ++++++++++++++++------
 templates/error-page.html     |  2 +-
 templates/latest-errors.html  | 25 ++++++++++++++++---------
 templates/search-details.html | 16 ++++++++++++----
 5 files changed, 62 insertions(+), 20 deletions(-)

diff --git a/Post/static/css/custom.css b/Post/static/css/custom.css
index f2a35a6..809f5a5 100644
--- a/Post/static/css/custom.css
+++ b/Post/static/css/custom.css
@@ -83,3 +83,20 @@ td a:visited {
 th a, th span {
 	font-weight: normal;
 }
+.dl-vertical dd {
+	margin-bottom: 10px;
+}
+.dd a {
+	display: block;
+	margin: 10px 0;
+}
+.popover-content p {
+		margin-top: 10px;
+}
+.popover-content p > a {
+		color: #0088CC;
+}
+.popover-content p > a:hover {
+		color: #005580;
+			text-decoration: underline;
+}
diff --git a/templates/error-details.html b/templates/error-details.html
index f2dc010..ffb5f7e 100644
--- a/templates/error-details.html
+++ b/templates/error-details.html
@@ -41,14 +41,24 @@
 							<dd>{{ detail.BUILD.BRANCH }}</dd>
 							<dt>Commit:</dt>
 							<dd class = "commit">{{ detail.BUILD.COMMIT }}</dd>
+								{% if "yocto-autobuilder" in detail.BUILD.NAME and "master" in detail.BUILD.BRANCH %}
+									<dd><a target="_blank" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id={{detail.BUILD.COMMIT}}">View commit</a></dd> 
+								{% endif %}
 							<dt>Submitter:</dt>
-							<dd>{{ detail.BUILD.NAME }}</dd>
+								{% if "@" in detail.BUILD.EMAIL %}
+									<dd> <a href="mailto:{{detail.BUILD.EMAIL}}">{{detail.BUILD.EMAIL}}</a> </dd>
+								{% else %}
+									<dd>{{ detail.BUILD.NAME }}</dd>
+								{% endif %}
+								<!--
+								{% if "yocto-autobuilder" in detail.BUILD.NAME %}
+										<dd><a target="_blank" href="#" >View Autobuilder failed step</a></dd>
+								{% endif %}
+								-->
 						</dl>
-						{% ifnotequal detail.BUILD.EMAIL "" %}
-							{% if "@" in detail.BUILD.EMAIL %}
-								<a class="btn btn-large btn-primary" href="mailto:{{detail.BUILD.EMAIL}}">Email submitter</a>
-							{% endif %}
-						{% endifnotequal %}
+						<div>
+						<a class="btn btn-large btn-block" target="_blank" href="https://bugzilla.yoctoproject.org/enter_bug.cgi" >Open a bug</a>
+						</div>
 				{% endfor %}
 				{% endif %}
 				</div>
diff --git a/templates/error-page.html b/templates/error-page.html
index d811c77..a090e15 100644
--- a/templates/error-page.html
+++ b/templates/error-page.html
@@ -13,7 +13,7 @@
 				<li> <a href="{% url main %}" >Statistics </a> </li>
 			</ul>
 			<div class="alert">
-				{% ifequal query "autobuilder" %}
+				{% ifequal d "autobuilder" %}
 					<h3>No Autobuilder errors found</h3>
 				{% else %}
 					<h3>No errors found</h3>
diff --git a/templates/latest-errors.html b/templates/latest-errors.html
index d002a65..3bafce7 100644
--- a/templates/latest-errors.html
+++ b/templates/latest-errors.html
@@ -184,12 +184,12 @@
 		<div class="row-fluid">
 			<ul class="nav nav-pills">
 				{% ifequal d 'autobuilder' %}
-					<li class="active"> <a href="javascript:reload_params({'query' : 'latest_all'})">Latest errors</a></li>
-					<li> <a href="javascript:reload_params({})">Latest Autobuilder errors</a></li>
+					<li> <a href="javascript:reload_params({'query' : 'all_latest'})">Latest errors</a></li>
+					<li class="active"> <a href="javascript:reload_params({})">Latest Autobuilder errors</a></li>
 
 				{% else %}
 					<li class="active"> <a href="javascript:reload_params({})">Latest errors</a></li>
-					<li > <a href="javascript:reload_params({'query' : 'latest_autobuilder'})">Latest Autobuilder errors</a></li>
+					<li > <a href="javascript:reload_params({'query' : 'autobuilder_latest'})">Latest Autobuilder errors</a></li>
 				{% endifequal %}
 					<li> <a href="{% url main %}" >Statistics </a> </li>
 			</ul>
@@ -318,12 +318,18 @@
 								<td class="build_sys"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BUILD_SYS }}</a></td>
 								<td class="target_sys"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.TARGET_SYS }}</a></td>
 								<td class="host_distro"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.NATIVELSBSTRING }}</a></td>
-								<td class="branch"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BRANCH }} </a></td>
+								<td class="branch"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BRANCH }}</a></td>
 								<td class="commit">
 									{% autoescape off %}
-										<div class="btn" rel="popover" data-content= {{ detail.BUILD.COMMIT|escape}} title="">
-											{% endautoescape %}
-										{{ detail.BUILD.COMMIT|truncatechars:10}}
+										<div class="btn" rel="popover"
+												data-content='
+													&lt;div&gt; {{ detail.BUILD.COMMIT|escape}}&lt;/div&gt;
+													{% if "yocto-autobuilder" in detail.BUILD.NAME and "master" in detail.BUILD.BRANCH %}
+														&lt;p&gt; &lt;a target="_blank" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id={{detail.BUILD.COMMIT}}"&gt;View commit&lt;/a&gt;&lt;/p&gt;
+													{% endif %}'
+												title="">
+									{% endautoescape %}
+									{{ detail.BUILD.COMMIT|truncatechars:10}}
 										</div>
 								</td>
 								<td class="submitter"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.NAME }} </a></td>
@@ -384,8 +390,9 @@
 		</div> <!-- row-fluid -->
 		<script>
 			$(document).ready(function() {
-				$('.commit > div').popover({placement:'left'})
-
+				$('.commit > div').popover({
+					placement:'left',
+					html: true})
 				// we load cookies for the column display$
 				save = $.cookie('_displaycols_{{objectname}}');
 				if (save != undefined) {
diff --git a/templates/search-details.html b/templates/search-details.html
index fbba5a9..17dc14b 100644
--- a/templates/search-details.html
+++ b/templates/search-details.html
@@ -307,9 +307,15 @@
 								<td class="branch"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.BRANCH }} </a></td>
 								<td class="commit">
 									{% autoescape off %}
-										<div class="btn" rel="popover" data-content= {{ detail.BUILD.COMMIT|escape}} title="">
-											{% endautoescape %}
-										{{ detail.BUILD.COMMIT|truncatechars:10}}
+										<div class="btn" rel="popover"
+											data-content='
+											&lt;div&gt; {{ detail.BUILD.COMMIT|escape}}&lt;/div&gt;
+											{% if "yocto-autobuilder" in detail.BUILD.NAME and "master" in detail.BUILD.BRANCH %}
+												&lt;p&gt; &lt;a target="_blank" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id={{detail.BUILD.COMMIT}}"&gt;View commit&lt;/a&gt;&lt;/p&gt;
+											{% endif %}'
+											title="">
+									{% endautoescape %}
+									{{ detail.BUILD.COMMIT|truncatechars:10}}
 										</div>
 								</td>
 								<td class="submitter"><a href="{% url id detail.id details.number items d %}">{{ detail.BUILD.NAME }} </a></td>
@@ -391,7 +397,9 @@
 			</div>
 				<script>
 				$(document).ready(function() {
-					$('.commit > div').popover({placement:'left'})
+					$('.commit > div').popover({
+						placement:'left',
+						html: true})
 
 					// we load cookies for the column display$
 					save = $.cookie('_displaycols_{{objectname}}');
-- 
1.9.1


