Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 031E3C54E58
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 06:40:43 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.37104.1710744038972427803
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Mar 2024 23:40:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=fhI4/i6+;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38074007b8=mingli.yu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42I5nvhx009140
	for <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 06:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=8Fpba
	z8uRJZOWR5ZWOrEy/Dn4t3ksEhTyYMFfUnQQ4E=; b=fhI4/i6+SKDkVn792osNJ
	jPs2d0+RKF3/LlzxxznQTRrFChWtmlxLVy5mZNqUKcPzrAQ1kfU8lbE2yzsbs0rZ
	ptHOthNHa4sTIiuZdK6dMyRURqoaRYrfy4wZWZrUMrLGRN1fnrM798extTw0FhOn
	NNHvc+72Um+Uz4LoZzeuBBx1FjVtoHODJOtQnNbreGqsoyoI7VN3aLR9eTzHIyqE
	qdgYh74aW1fukmZcyuzZvyViOIPWkmxs+PgtEbWY11gReiae0Gw8+rV9Im+m6MLT
	ofdEWuuu20xo+S6snlKiXVLiykPlsdwMWCTXQKayckoENBoDH7pLY+9XEayzeFwQ
	w==
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ww0mxhf28-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 06:40:37 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Sun, 17 Mar 2024 23:40:36 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.37 via Frontend Transport; Sun, 17 Mar 2024 23:40:36 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] python3-pyinotify: Make asyncore support optional for Python 3
Date: Mon, 18 Mar 2024 14:40:35 +0800
Message-ID: <20240318064035.1053444-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: hVXlUvbZl8yfK4UGNYw6wjfJT5arR5U7
X-Proofpoint-GUID: hVXlUvbZl8yfK4UGNYw6wjfJT5arR5U7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-17_12,2024-03-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403140001 definitions=main-2403180049
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 06:40:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62779

From: Mingli Yu <mingli.yu@windriver.com>

Simple fix for Python 3.12 since it dropped asyncore. Catches the import
error instead of using a version check so that the user can install the
compatibility package for any uses that can't be upgraded to asyncio or
similar immediately.

Fixes:
 # python3
 Python 3.12.1 (main, Dec 7 2023, 20:45:44) [GCC 13.2.0] on linux
 Type "help", "copyright", "credits" or "license" for more information.
 >>> import pyinotify
 Traceback (most recent call last):
 File "<stdin>", line 1, in <module>
 File "/usr/lib64/python3.12/site-packages/pyinotify.py", line 71, in <module>
 import asyncore
 ModuleNotFoundError: No module named 'asyncore'
 >>>

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 ...yncore-support-optional-for-Python-3.patch | 92 +++++++++++++++++++
 .../python/python3-pyinotify_0.9.6.bb         |  4 +
 2 files changed, 96 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify/0001-Make-asyncore-support-optional-for-Python-3.patch

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify/0001-Make-asyncore-support-optional-for-Python-3.patch b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify/0001-Make-asyncore-support-optional-for-Python-3.patch
new file mode 100644
index 0000000..075a035
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify/0001-Make-asyncore-support-optional-for-Python-3.patch
@@ -0,0 +1,92 @@
+From 478d595a7d086423733e9f5da5edfe9f1df48682 Mon Sep 17 00:00:00 2001
+From: Troy Curtis Jr <troy@troycurtisjr.com>
+Date: Thu, 10 Aug 2023 21:51:15 -0400
+Subject: [PATCH] Make asyncore support optional for Python 3.
+
+Fixes #204.
+
+Upstream-Status: Submitted [https://github.com/seb-m/pyinotify/pull/205]
+
+Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
+
+---
+ python3/pyinotify.py | 50 +++++++++++++++++++++++++-------------------
+ 1 file changed, 28 insertions(+), 22 deletions(-)
+
+diff --git a/python3/pyinotify.py b/python3/pyinotify.py
+index bc24313..f4a5a90 100755
+--- a/python3/pyinotify.py
++++ b/python3/pyinotify.py
+@@ -68,7 +68,6 @@ from collections import deque
+ from datetime import datetime, timedelta
+ import time
+ import re
+-import asyncore
+ import glob
+ import locale
+ import subprocess
+@@ -1494,33 +1493,40 @@ class ThreadedNotifier(threading.Thread, Notifier):
+         self.loop()
+ 
+ 
+-class AsyncNotifier(asyncore.file_dispatcher, Notifier):
+-    """
+-    This notifier inherits from asyncore.file_dispatcher in order to be able to
+-    use pyinotify along with the asyncore framework.
++try:
++    import asyncore
+ 
+-    """
+-    def __init__(self, watch_manager, default_proc_fun=None, read_freq=0,
+-                 threshold=0, timeout=None, channel_map=None):
++    class AsyncNotifier(asyncore.file_dispatcher, Notifier):
+         """
+-        Initializes the async notifier. The only additional parameter is
+-        'channel_map' which is the optional asyncore private map. See
+-        Notifier class for the meaning of the others parameters.
++        This notifier inherits from asyncore.file_dispatcher in order to be able to
++        use pyinotify along with the asyncore framework.
+ 
+         """
+-        Notifier.__init__(self, watch_manager, default_proc_fun, read_freq,
+-                          threshold, timeout)
+-        asyncore.file_dispatcher.__init__(self, self._fd, channel_map)
++        def __init__(self, watch_manager, default_proc_fun=None, read_freq=0,
++                     threshold=0, timeout=None, channel_map=None):
++            """
++            Initializes the async notifier. The only additional parameter is
++            'channel_map' which is the optional asyncore private map. See
++            Notifier class for the meaning of the others parameters.
+ 
+-    def handle_read(self):
+-        """
+-        When asyncore tells us we can read from the fd, we proceed processing
+-        events. This method can be overridden for handling a notification
+-        differently.
++            """
++            Notifier.__init__(self, watch_manager, default_proc_fun, read_freq,
++                              threshold, timeout)
++            asyncore.file_dispatcher.__init__(self, self._fd, channel_map)
+ 
+-        """
+-        self.read_events()
+-        self.process_events()
++        def handle_read(self):
++            """
++            When asyncore tells us we can read from the fd, we proceed processing
++            events. This method can be overridden for handling a notification
++            differently.
++
++            """
++            self.read_events()
++            self.process_events()
++except ImportError:
++    # asyncore was removed in Python 3.12, but try the import instead of a
++    # version check in case the compatibility package is installed.
++    pass
+ 
+ 
+ class TornadoAsyncNotifier(Notifier):
+-- 
+2.25.1
+
diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
index 963fcfe..8c16e5b 100644
--- a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
@@ -15,4 +15,8 @@ RDEPENDS:${PN} += "\
 SRC_URI[md5sum] = "8e580fa1ff3971f94a6f81672b76c406"
 SRC_URI[sha256sum] = "9c998a5d7606ca835065cdabc013ae6c66eb9ea76a00a1e3bc6e0cfe2b4f71f4"
 
+SRC_URI += " \
+           file://0001-Make-asyncore-support-optional-for-Python-3.patch \
+"
+
 inherit pypi setuptools3
-- 
2.25.1


