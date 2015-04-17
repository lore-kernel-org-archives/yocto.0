Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FC5CE009C2; Thu, 16 Apr 2015 23:32:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D70FE0085D
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 23:32:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3H6WSq9019477
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 23:32:28 -0700 (PDT)
Received: from pek-kkang-d2.wrs.com (128.224.163.135) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.224.2; Thu, 16 Apr 2015 23:32:27 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Apr 2015 14:32:32 +0800
Message-ID: <1429252352-2292-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [auh][PATCH] gitrecipe/rename: avoid renaming incorrect files
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
X-List-Received-Date: Fri, 17 Apr 2015 06:32:32 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Previously f.find('pn') will not only match 'pn' but also packages
that have 'pn' in their names, for example 'python-glance' will
match 'python-glance', 'python-glanceclient' and 'python-glancestore',
so the later two packages will be incorrectly changed.

Get the exact package name to compare with pn to void this issue.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 gitrecipe.py | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/gitrecipe.py b/gitrecipe.py
index dfa5cd2..706483b 100644
--- a/gitrecipe.py
+++ b/gitrecipe.py
@@ -66,10 +66,14 @@ class GitRecipe(Recipe):
 
         for f in os.listdir(self.recipe_dir):
             full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and (f.find(old_git_tag) != -1 or
-                      f.find("git") != -1) and f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+
+            # We only care about files like pn_[pv|git].<bb|inc>
+            fname, fext = os.path.splitext(f)
+            if os.path.isfile(full_path_f) and (fext == ".bb" or fext == ".inc"):
+                f = fname.split("_")
+                if f[0] != self.env['PN'] or (len(f) == 2 and f[1] != old_git_tag and f[1] != "git"):
+                    continue
+
                 with open(full_path_f + ".tmp", "w+") as temp_recipe:
                     with open(full_path_f) as recipe:
                         for line in recipe:
-- 
1.9.1


