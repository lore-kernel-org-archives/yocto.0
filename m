Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34DEEE009CB; Mon, 20 Jun 2016 14:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45E37E008FF
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 14:27:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jun 2016 14:27:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,500,1459839600"; d="scan'208";a="991683536"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2016 14:27:49 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Jun 2016 16:27:48 -0500
Message-Id: <1466458070-20099-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [[PATCH][AUH] 1/3] Small fixes to use with Python3.
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
X-List-Received-Date: Mon, 20 Jun 2016 21:27:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #9747]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/recipe/svn.py         | 2 +-
 modules/utils/emailhandler.py | 2 +-
 upgradehelper.py              | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/modules/recipe/svn.py b/modules/recipe/svn.py
index 6d60529..6dadafd 100644
--- a/modules/recipe/svn.py
+++ b/modules/recipe/svn.py
@@ -22,7 +22,7 @@
 # Marius Avram      <marius.avram@intel.com>
 #
 
-from base import Recipe
+from recipe.base import Recipe
 
 class SvnRecipe(Recipe):
     pass
diff --git a/modules/utils/emailhandler.py b/modules/utils/emailhandler.py
index 970fb59..8436364 100644
--- a/modules/utils/emailhandler.py
+++ b/modules/utils/emailhandler.py
@@ -33,7 +33,7 @@ from email.mime.base import MIMEBase
 from email.mime.multipart import MIMEMultipart
 from email.generator import Generator
 import shutil
-from cStringIO import StringIO
+from io import StringIO
 
 class Email(object):
     def __init__(self, settings):
diff --git a/upgradehelper.py b/upgradehelper.py
index d4b8afb..499c539 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # vim: set ts=4 sw=4 et:
 #
 # Copyright (c) 2013 - 2014 Intel Corporation
@@ -40,7 +40,7 @@ from logging import critical as C
 import re
 import signal
 import sys
-import ConfigParser as cp
+import configparser as cp
 from datetime import datetime
 from datetime import date
 import shutil
-- 
2.1.4


