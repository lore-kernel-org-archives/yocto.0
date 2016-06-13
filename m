Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8080E005BB; Mon, 13 Jun 2016 16:31:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55245E006D8
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 16:31:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 16:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,468,1459839600"; d="scan'208";a="1001247088"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2016 16:31:26 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 18:32:14 -0500
Message-Id: <1465860736-26581-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: belen.barros.pena@linux.intel.com
Subject: [[PATCH][error-report-web] 6/8] Post/{models, parser}.py: Add support for receive/store error_type.
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
X-List-Received-Date: Mon, 13 Jun 2016 23:31:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For compatibility reasons if error_type isn't specified in the JSON
payload use BuildErrorType.RECIPE by default.

[YOCTO #7584]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 Post/models.py | 10 ++++++++++
 Post/parser.py | 11 +++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/Post/models.py b/Post/models.py
index f8d9916..bec2abd 100644
--- a/Post/models.py
+++ b/Post/models.py
@@ -17,6 +17,16 @@ class BuildErrorType(object):
     BITBAKE_SELFTEST = "Bitbake selftest"
     OE_SELFTEST = "OE selftest"
 
+    @staticmethod
+    def is_supported(error_type):
+        if error_type == BuildErrorType.RECIPE or \
+                error_type == BuildErrorType.BITBAKE_CORE or \
+                error_type == BuildErrorType.BITBAKE_SELFTEST or \
+                error_type == BuildErrorType.OE_SELFTEST:
+            return True
+
+        return False
+
 # Create your models here.
 class Build(models.Model):
     DATE = models.DateTimeField('Submit date', blank=True, null=True)
diff --git a/Post/parser.py b/Post/parser.py
index 599afde..295870f 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -8,7 +8,7 @@
 # Licensed under the MIT license, see COPYING.MIT for details
 
 import json, re
-from Post.models import Build, BuildFailure
+from Post.models import Build, BuildFailure, BuildErrorType
 from django.conf import settings
 from django.utils import timezone
 from django.core.urlresolvers import reverse
@@ -40,6 +40,7 @@ class Parser:
         if self.contains_tags(jsondata) == True:
             return  { 'error' : 'Invalid characters in json' }
 
+        error_desc = ""
         b = Build.objects.create()
         try:
             b.MACHINE = str(jsondata['machine'])
@@ -53,6 +54,12 @@ class Parser:
             b.EMAIL = str(jsondata['email'])
             b.LINK_BACK = jsondata.get("link_back", None)
 
+            error_type = jsondata.get("error_type", None) or BuildErrorType.RECIPE
+            if not BuildErrorType.is_supported(error_type):
+                error_desc = "Unsupported error_type %s" % error_type
+                raise ""
+            b.ERROR_TYPE = error_type
+
             # Extract the branch and commit
             g = re.match(r'(.*): (.*)', jsondata['branch_commit'])
 
@@ -68,7 +75,7 @@ class Parser:
             b.save()
             failures = jsondata['failures']
         except:
-            return { 'error' : "Problem reading json payload" }
+            return { 'error' : "Problem reading json payload, %s" % error_desc }
 
         for fail in failures:
             if len(fail) > int(settings.MAX_UPLOAD_SIZE):
-- 
2.1.4


