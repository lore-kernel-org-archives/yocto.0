Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D46FAE00CA3; Tue, 18 Dec 2018 00:52:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 857F6E00BB7
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 00:52:43 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wBI8qFxW017143
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 00:52:32 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Tue, 18 Dec 2018 00:52:08 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 18 Dec 2018 16:52:07 +0800
Message-ID: <1545123127-430878-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [patchwork][PATCH] patchwork: support wsgi
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
X-List-Received-Date: Tue, 18 Dec 2018 08:52:45 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

provide option of use like nginx + wsgi, this file is backported
from patchwork upstream https://github.com/getpatchwork/patchwork

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 patchwork/wsgi.py | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 patchwork/wsgi.py

diff --git a/patchwork/wsgi.py b/patchwork/wsgi.py
new file mode 100644
index 0000000..714ea12
--- /dev/null
+++ b/patchwork/wsgi.py
@@ -0,0 +1,30 @@
+#!/usr/bin/env python
+# -*- coding: utf-8 -*-
+#
+# Patchwork - automated patch tracking system
+# Copyright (C) 2010 Martin F. Krafft <madduck@madduck.net>
+#
+# This file is part of the Patchwork package.
+#
+# Patchwork is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# Patchwork is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with Patchwork; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+# Released under the GNU General Public License v2 or later.
+
+import os
+
+from django.core.wsgi import get_wsgi_application
+
+os.environ['DJANGO_SETTINGS_MODULE'] = 'patchwork.settings.production'
+
+application = get_wsgi_application()
-- 
2.7.4


