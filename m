Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C0C1E00D56; Wed, 29 Jun 2016 12:47:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 233C7E00D35
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 12:47:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jun 2016 12:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,548,1459839600"; d="scan'208";a="1007725429"
Received: from wcrandle-mobl1.jf.intel.com ([10.7.199.59])
	by orsmga002.jf.intel.com with ESMTP; 29 Jun 2016 12:47:05 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Jun 2016 12:47:00 -0700
Message-Id: <1467229620-32326-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] CreateAutoConf.py: fix default path for auto.conf
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
X-List-Received-Date: Wed, 29 Jun 2016 19:47:10 -0000

Commit 1d67af87fafe89f75041824bfcf00e92163b949f made the destination
path configurable, with the default supposed to be "./build/conf/auto.conf".
A typo in the patch instead set the default to "./build/auto.conf".
In addition, replace hard coded path with configurable value when
removing a previous auto.conf file.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 57726b7..8817d69 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -43,7 +43,7 @@ class CreateAutoConf(ShellCommand):
         self.kwargs = kwargs
         self.devkernel = True
         self.tmpdir = None
-        self.autoconfpath = "./build/auto.conf"
+        self.autoconfpath = "./build/conf/auto.conf"
         self.rmautoconf = "True"
         for k, v in argdict.iteritems():
             if type(v) is bool:
@@ -65,7 +65,7 @@ class CreateAutoConf(ShellCommand):
         self.command = ""
         fout = ""
         if self.rmautoconf == "True":
-            self.command += "rm -rf ./build/conf/auto.conf;"
+            self.command += "rm -rf %s;" % self.autoconfpath
         #check to see if we have a prepend
         if self.atextprepend:
             fout = fout +"\n"+ self.atextprepend
-- 
2.5.5


