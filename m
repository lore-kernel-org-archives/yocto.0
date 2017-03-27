Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97A6FE00B02; Mon, 27 Mar 2017 11:41:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DD17E00A0C
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 11:41:33 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 27 Mar 2017 11:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,232,1486454400"; d="scan'208,217";a="81553869"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.123])
	by fmsmga006.fm.intel.com with ESMTP; 27 Mar 2017 11:41:24 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Mar 2017 12:40:50 -0600
Message-Id: <1490640050-10619-3-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490640050-10619-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1490640050-10619-1-git-send-email-jose.a.lamego@linux.intel.com>
MIME-Version: 1.0
Subject: [patchwork][PATCH 2/2] pagination.html: Add archive parameter to links
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
X-List-Received-Date: Mon, 27 Mar 2017 18:41:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

paginator links do not include current "archive" status parameter,
which may lead to inaccurate data displayed in next views.

This change includes "archive" parameter from the paginator class
to all of the pagination links.

[YOCTO #11200]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/templates/patchwork/pagination.html | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/patchwork/templates/patchwork/pagination.html b/patchwork/templates/patchwork/pagination.html
index b8b76b3..e4f802b 100644
--- a/patchwork/templates/patchwork/pagination.html
+++ b/patchwork/templates/patchwork/pagination.html
@@ -4,7 +4,7 @@
 <div class="paginator">
 {% if page.has_previous %}
  <span class="prev">
-  <a href="{% listurl page=page.previous_page_number %}"
+  <a href="{% listurl page=page.previous_page_number,archive=page.paginator.archive %}"
      title="Previous Page">&laquo;</a></span>
 {% else %}
  <span class="prev-na">&laquo;</span>
@@ -12,7 +12,7 @@
  
 {% if page.paginator.trailing_set %}
  {% for p in page.paginator.trailing_set %}
- <span class="page"><a href="{% listurl page=p %}" >{{ p }}</a></span>
+ <span class="page"><a href="{% listurl page=p,archive=page.paginator.archive %}" >{{ p }}</a></span>
  {% endfor %}
         ...
 {% endif %}
@@ -21,7 +21,7 @@
   {% ifequal p page.number %}
     <span class="curr" title="Current Page">{{ p }}</span>
   {% else %}
-    <span class="page"><a href="{% listurl page=p %}"
+    <span class="page"><a href="{% listurl page=p,archive=page.paginator.archive %}"
      title="Page {{ p }}">{{ p }}</a></span>
   {% endifequal %}
 {% endfor %}
@@ -29,13 +29,13 @@
 {% if page.paginator.leading_set %}
         …
  {% for p in page.paginator.leading_set %}
-    <span class="page"><a href="{% listurl page=p %}">{{ p }}</a></span>
+    <span class="page"><a href="{% listurl page=p,archive=page.paginator.archive %}">{{ p }}</a></span>
  {% endfor %}
 {% endif %}
  
 {% if page.has_next %}
  <span class="next">
-  <a href="{% listurl page=page.next_page_number %}"
+  <a href="{% listurl page=page.next_page_number,archive=page.paginator.archive %}"
    title="Next Page">&raquo;</a>
   </span>
 {% else %}
-- 
2.7.4


