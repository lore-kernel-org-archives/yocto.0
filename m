Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9349E00C2C; Fri, 26 May 2017 01:46:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 305B7E00C20
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4Q8kO7g001371
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:24 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 26 May 2017 01:46:24 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 26 May 2017 16:46:15 +0800
Message-ID: <2a1e63859f95c6c37f613db24b90f62c2f826088.1495787965.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495787965.git.jackie.huang@windriver.com>
References: <cover.1495787965.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 5/5] openais: remove cleanup entry from openais
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
X-List-Received-Date: Fri, 26 May 2017 08:46:25 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

message_handler_req_exec_lck_resourceclose is to remove cleanup
entry from corosync. Now this job is done by pacemaker. So remove
this feature from openais.

Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../files/openais-fix-resource-cleanup-entry.patch | 37 ++++++++++++++++++++++
 .../recipes-cgl/openais/openais_1.1.4.bb           |  1 +
 2 files changed, 38 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch

diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch
new file mode 100644
index 0000000..55313ce
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch
@@ -0,0 +1,37 @@
+commit f70bea251f21a8bd646e59b34e6f74f6ee3fe29b
+Author: yanjun.zhu <yanjun.zhu@windriver.com>
+Date:   Tue Mar 19 12:23:55 2013 +0800
+
+    openais: remove cleanup entry from openais
+
+    message_handler_req_exec_lck_resourceclose is to remove cleanup
+    entry from corosync. Now this job is done by pacemaker. So remove
+    this feature from openais.
+
+    Upstream-Status: Pending
+
+    Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
+
+diff -urpN a/services/lck.c b/services/lck.c
+--- a/services/lck.c
++++ b/services/lck.c
+@@ -2304,17 +2304,9 @@ error_exit:
+ 
+ 		if (error == SA_AIS_OK) {
+ 			/*
+-			 * Remove the cleanup entry for this resource.
++			 * cleanup entry for this resource can not be removed.
++			 * This will be done by pacemaker.
+ 			 */
+-			cleanup = lck_resource_cleanup_find (
+-				req_exec_lck_resourceclose->source.conn,
+-				&req_exec_lck_resourceclose->resource_name);
+-
+-			if (cleanup != NULL) {
+-				list_del (&cleanup->cleanup_list);
+-				free (cleanup);
+-			}
+-
+ 			hdb_handle_put (&resource_hdb, req_exec_lck_resourceclose->resource_id);
+ 			hdb_handle_destroy (&resource_hdb, req_exec_lck_resourceclose->resource_id);
+ 		}
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
index 9cc750a..cdf1454 100644
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -12,6 +12,7 @@ SRC_URI = " \
     file://openais-fix-init-script.patch \
     file://openais-saTmrTimerReschedule-test-error.patch \
     file://openais-fix-corosync-not-quit.patch \
+    file://openais-fix-resource-cleanup-entry.patch \
     file://openais.service \
     "
 
-- 
2.11.0


