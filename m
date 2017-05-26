Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59A54E00C2C; Fri, 26 May 2017 01:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69FA8E00B47
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v4Q8kMR6004623
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:22 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 26 May 2017 01:46:22 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 26 May 2017 16:46:13 +0800
Message-ID: <e495a2608471d1df2ddd963c50cfbce1947ac8d7.1495787965.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495787965.git.jackie.huang@windriver.com>
References: <cover.1495787965.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 3/5] openais: fix saTmrTimerReschedule test error
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
X-List-Received-Date: Fri, 26 May 2017 08:46:24 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* If req_lib_tmr_timerreschedule->timer_attributes.type is
  SA_TIME_ABSOLUTE, an absolute time value must be higher
  than the current absolute time.According to the type, we
  will compare the current time with an absolute time. If
  the type is SA_TIME_ABSOLUTE, we will compare. Or else,
  we do nothing;
* For single-event timers, timerPeriodDuration = 0 is required.
  Note that saTmrTimerReschedule() cannot be used to change a
  timer from being a single-event timer to a periodic timer or
  vice versa. Since the older timerPeriodDuration is 0 in testtmr.c
  file, it is a single-event timer. The following reschedule will
  change it to  a periodic timer. It is not permitted.

Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../openais-saTmrTimerReschedule-test-error.patch  | 50 ++++++++++++++++++++++
 .../recipes-cgl/openais/openais_1.1.4.bb           |  1 +
 2 files changed, 51 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch

diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch
new file mode 100644
index 0000000..6806fba
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch
@@ -0,0 +1,50 @@
+commit 379eb121110d22131408cedf2f200165d142852c
+Author: yanjun.zhu <yanjun.zhu@windriver.com>
+Date:   Fri Mar 1 12:25:33 2013 +0800
+
+    openais: fix saTmrTimerReschedule test error
+
+    * If req_lib_tmr_timerreschedule->timer_attributes.type is
+      SA_TIME_ABSOLUTE, an absolute time value must be higher
+      than the current absolute time.According to the type, we
+      will compare the current time with an absolute time. If
+      the type is SA_TIME_ABSOLUTE, we will compare. Or else,
+      we do nothing;
+    * For single-event timers, timerPeriodDuration = 0 is required.
+      Note that saTmrTimerReschedule() cannot be used to change a
+      timer from being a single-event timer to a periodic timer or
+      vice versa. Since the older timerPeriodDuration is 0 in testtmr.c
+      file, it is a single-event timer. The following reschedule will
+      change it to  a periodic timer. It is not permitted.
+
+    Upstream-Status: Pending
+
+    Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
+--
+diff -urpN a/services/tmr.c b/services/tmr.c
+--- a/services/tmr.c
++++ b/services/tmr.c
+@@ -442,7 +442,8 @@ static void message_handler_req_lib_tmr_
+ 
+ 	current_time = (SaTimeT)(api->timer_time_get());
+ 
+-	if (current_time > req_lib_tmr_timerreschedule->timer_attributes.initialExpirationTime) {
++	if ((SA_TIME_ABSOLUTE == req_lib_tmr_timerreschedule->timer_attributes.type) &&
++		(current_time > req_lib_tmr_timerreschedule->timer_attributes.initialExpirationTime)) {
+ 		error = SA_AIS_ERR_INVALID_PARAM;
+ 		goto error_put;
+ 	}
+diff -urpN a/test/testtmr.c b/test/testtmr.c
+--- a/test/testtmr.c
++++ b/test/testtmr.c
+@@ -86,8 +86,8 @@ int main (void)
+ 	SaTmrHandleT handle;
+ 	SaSelectionObjectT select_obj;
+ 	SaTmrTimerAttributesT attrs;
+-	SaTmrTimerAttributesT attrs_a = { SA_TIME_DURATION, TMR_30_SECONDS, 0 };
+-	SaTmrTimerAttributesT attrs_b = { SA_TIME_DURATION, TMR_30_SECONDS, 0 };
++	SaTmrTimerAttributesT attrs_a = { SA_TIME_DURATION, TMR_30_SECONDS, TMR_30_SECONDS };
++	SaTmrTimerAttributesT attrs_b = { SA_TIME_DURATION, TMR_30_SECONDS, TMR_30_SECONDS };
+ 	SaTmrTimerAttributesT new_attrs_a = { SA_TIME_DURATION, TMR_10_SECONDS, TMR_10_SECONDS };
+ 	SaTmrTimerAttributesT new_attrs_b = { SA_TIME_DURATION, TMR_20_SECONDS, TMR_20_SECONDS };
+ 	SaTmrTimerIdT id_a;
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
index 0693ddb..d54b22f 100644
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -10,6 +10,7 @@ SRC_URI = " \
     file://build-cleanup-configure-ac.patch \
     file://openais-fix-bash.patch \
     file://openais-fix-init-script.patch \
+    file://openais-saTmrTimerReschedule-test-error.patch \
     file://openais.service \
     "
 
-- 
2.11.0


