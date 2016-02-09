Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28792E00DF8; Tue,  9 Feb 2016 14:43:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CCF9E00DE6
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:43:18 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2016 14:43:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="743319806"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by orsmga003.jf.intel.com with ESMTP; 09 Feb 2016 14:43:17 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:45:17 -0600
Message-Id: <1455057920-11174-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 13/16] toaster: Add header to specify license to MIT.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:43:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Also add the COPYRIGHT.MIT license file.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 COPYING.MIT        | 17 +++++++++++++++++
 toaster/helpers.py |  4 ++++
 toaster/toaster.py |  4 ++++
 3 files changed, 25 insertions(+)
 create mode 100644 COPYING.MIT

diff --git a/COPYING.MIT b/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy 
+of this software and associated documentation files (the "Software"), to deal 
+in the Software without restriction, including without limitation the rights 
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+copies of the Software, and to permit persons to whom the Software is 
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in 
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+THE SOFTWARE.
diff --git a/toaster/helpers.py b/toaster/helpers.py
index 753bbf0..dca594f 100644
--- a/toaster/helpers.py
+++ b/toaster/helpers.py
@@ -1,3 +1,7 @@
+# Copyright (C) 2016 Intel Corporation
+#
+# Released under the MIT license (see COPYING.MIT)
+
 import subprocess
 import os
 import shutil
diff --git a/toaster/toaster.py b/toaster/toaster.py
index 9f477cb..8afd286 100755
--- a/toaster/toaster.py
+++ b/toaster/toaster.py
@@ -1,5 +1,9 @@
 #!/usr/bin/env python
 
+# Copyright (C) 2013 - 2016 Intel Corporation
+#
+# Released under the MIT license (see COPYING.MIT)
+
 import unittest, time, re, sys, getopt, os, logging, string, errno, exceptions
 import shutil, argparse, ConfigParser, platform
 
-- 
2.1.4


