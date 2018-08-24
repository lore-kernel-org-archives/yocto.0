Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B399E0056D; Thu, 23 Aug 2018 22:00:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2224E00720
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 22:00:19 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Aug 2018 22:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,281,1531810800"; d="scan'208,217";a="84510816"
Received: from pradhand-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.140.136])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2018 22:00:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2018 16:59:51 +1200
Message-Id: <1b5296c4c3c160c6aa1c7a44cfb10fabd877f2dd.1535086706.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1535086706.git.paul.eggleton@linux.intel.com>
References: <cover.1535086706.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/3] Hide navbar on comparison select page
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
X-List-Received-Date: Fri, 24 Aug 2018 05:00:20 -0000

We don't want to see the navbar on this page because otherwise it lets
you select branches and click on Stats etc. which doesn't make any sense
in this context.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 templates/base_toplevel.html                     | 2 ++
 templates/layerindex/comparisonrecipeselect.html | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/templates/base_toplevel.html b/templates/base_toplevel.html
index 1dcac775..afcc19bf 100644
--- a/templates/base_toplevel.html
+++ b/templates/base_toplevel.html
@@ -15,6 +15,7 @@
     <div class="container-fluid">
         <div class="row-fluid">
 
+            {% block navbar %}
             <div class="navbar">
                 <div class="navbar-inner">
                     <ul class="nav">
@@ -53,6 +54,7 @@
                     {% block navs_extra %}{% endblock %}
                 </div>
             </div>
+            {% endblock %}
 
             {% block content_inner %}{% endblock %}
 
diff --git a/templates/layerindex/comparisonrecipeselect.html b/templates/layerindex/comparisonrecipeselect.html
index 1646ae3d..47b299be 100644
--- a/templates/layerindex/comparisonrecipeselect.html
+++ b/templates/layerindex/comparisonrecipeselect.html
@@ -14,6 +14,9 @@
 {% block title_append %} - comparison - select match for {{ select_for.name }}{% endblock %}
 -->
 
+{% block navbar %}
+{% endblock %}
+
                 {% block page_heading %}
                 <h2>Select match for {{ select_for.pn }} in {% if branch.comparison %}{{ branch }}{% else %}OpenEmbedded{% endif %}</h2>
                 <div class="pull-right">
-- 
2.17.1


