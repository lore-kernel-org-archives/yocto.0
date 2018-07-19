Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAA83E00ED7; Wed, 18 Jul 2018 22:15:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8129E009B2
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 22:15:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6J5FDDt014505
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Jul 2018 22:15:13 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 18 Jul 2018 22:15:12 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>, <flihp@twobit.us>,
	<mark.hatle@windriver.com>
Date: Thu, 19 Jul 2018 13:14:56 +0800
Message-ID: <1531977296-32221-4-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1531977296-32221-1-git-send-email-yi.zhao@windriver.com>
References: <1531977296-32221-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 3/3] selinux-python: refresh patches to fix QA warning
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
X-List-Received-Date: Thu, 19 Jul 2018 05:15:15 -0000
Content-Type: text/plain

Refresh patches with devtool command to fix do_patch warning

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../fix-TypeError-for-seobject.py.patch             | 17 +++++++++--------
 .../selinux-python/fix-sepolicy-install-path.patch  | 21 ++++++++++++---------
 .../process-ValueError-for-sepolicy-seobject.patch  | 12 +++++-------
 3 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch b/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
index 993ff7e..62cdeee 100644
--- a/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
+++ b/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
@@ -1,4 +1,4 @@
-From a66c50c0e8cd3799fc2819835b872ab62419f684 Mon Sep 17 00:00:00 2001
+From 98c2944ffa3e35095187e1df9ff33498bbd0fa54 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Tue, 1 Apr 2014 02:53:36 -0400
 Subject: [PATCH] policycoreutils: fix TypeError for seobject.py
@@ -7,18 +7,19 @@ File "/usr/lib64/python2.7/site-packages/seobject.py", line 109, in log
   message += " sename=" + sename
 TypeError: cannot concatenate 'str' and 'NoneType' objects
 
-Uptream-Status: pending
+Uptream-Status: Pending
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+
 ---
- semanage/seobject.py |    2 +-
+ semanage/seobject.py | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
-Index: policycoreutils-2.5/semanage/seobject.py
-===================================================================
---- policycoreutils-2.5.orig/semanage/seobject.py	2016-02-25 13:41:38.035974459 -0500
-+++ policycoreutils-2.5/semanage/seobject.py	2016-02-25 13:43:42.075974072 -0500
-@@ -121,7 +121,7 @@
+diff --git a/semanage/seobject.py b/semanage/seobject.py
+index 70fd192..23ab77e 100644
+--- a/semanage/seobject.py
++++ b/semanage/seobject.py
+@@ -146,7 +146,7 @@ except:
  
          def log(self, msg, name="", sename="", serole="", serange="", oldsename="", oldserole="", oldserange=""):
              message = " %s name=%s" % (msg, name)
diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
index 617908a..1d54231 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
@@ -1,18 +1,24 @@
+From 69e8697cd2ae48710ff8190bad3e61d2fd115b99 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Mon, 23 Sep 2013 21:17:59 +0800
 Subject: [PATCH] policycoreutils: fix install path for new pymodule sepolicy
 
+Uptream-Status: Pending
+
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+
 ---
- sepolicy/Makefile |    4 +++-
+ sepolicy/Makefile | 4 +++-
  1 file changed, 3 insertions(+), 1 deletion(-)
 
 diff --git a/sepolicy/Makefile b/sepolicy/Makefile
-index 2b8716c..70f4bdd 100644
+index 5a56e6c..82c3e36 100644
 --- a/sepolicy/Makefile
 +++ b/sepolicy/Makefile
-@@ -12,6 +12,8 @@ BASHCOMPLETIONDIR ?= $(DESTDIR)/usr/share/bash-completion/completions
- SHAREDIR ?= $(PREFIX)/share/sandbox
- override CFLAGS = -I$(PREFIX)/include -DPACKAGE="policycoreutils" -Wall -Werror -Wextra -W  -DSHARED -shared
+@@ -12,6 +12,8 @@ SHAREDIR ?= $(PREFIX)/share/sandbox
+ CFLAGS ?= -Wall -Werror -Wextra -W
+ override CFLAGS += -DPACKAGE="policycoreutils" -DSHARED -shared
  
 +PYLIBVER ?= $(shell python -c 'import sys;print "python%d.%d" % sys.version_info[0:2]')
 +
@@ -20,7 +26,7 @@ index 2b8716c..70f4bdd 100644
  
  all: python-build
 @@ -30,7 +32,7 @@ test:
- 	@python test_sepolicy.py -v
+ 	@$(PYTHON) test_sepolicy.py -v
  
  install:
 -	$(PYTHON) setup.py install `test -n "$(DESTDIR)" && echo --root $(DESTDIR)`
@@ -28,6 +34,3 @@ index 2b8716c..70f4bdd 100644
  	[ -d $(BINDIR) ] || mkdir -p $(BINDIR)
  	install -m 755 sepolicy.py $(BINDIR)/sepolicy
  	(cd $(BINDIR); ln -sf sepolicy sepolgen)
--- 
-1.7.9.5
-
diff --git a/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch b/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
index 1929aa5..b0bcd1d 100644
--- a/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
+++ b/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
@@ -1,4 +1,4 @@
-From b8e07bd0643b581ac33c96a1f94ae17c8df80ffd Mon Sep 17 00:00:00 2001
+From 1a8bd0ca13746b5241af5736dee9a25ab360652b Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Sun, 30 Mar 2014 22:25:59 -0400
 Subject: [PATCH] semanage: process ValueError for sepolicy, seobject
@@ -7,15 +7,16 @@ The sepolicy, seobject modules raise many unprocessed ValueError, just
 process them in semanage to make the script proivdes error message but
 not error trace.
 
-Uptream-Status: pending
+Uptream-Status: Pending
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+
 ---
  semanage/semanage | 11 +++++++----
  1 file changed, 7 insertions(+), 4 deletions(-)
 
 diff --git a/semanage/semanage b/semanage/semanage
-index 19a6c51..c0083c6 100644
+index 313537c..2977dd0 100644
 --- a/semanage/semanage
 +++ b/semanage/semanage
 @@ -25,8 +25,14 @@
@@ -34,7 +35,7 @@ index 19a6c51..c0083c6 100644
  PROGNAME = "policycoreutils"
  try:
      import gettext
-@@ -67,9 +73,6 @@ usage_interface_dict = {' --add': ('-t TYPE', '-r RANGE', 'interface'), ' --modi
+@@ -73,9 +79,6 @@ usage_interface_dict = {' --add': ('-t TYPE', '-r RANGE', 'interface'), ' --modi
  usage_boolean = "semanage boolean [-h] [-n] [-N] [-S STORE] ["
  usage_boolean_dict = {' --modify': ('(', '--on', '|', '--off', ')', 'boolean'), ' --list': ('-C',), '  --extract': ('',), ' --deleteall': ('',)}
  
@@ -44,6 +45,3 @@ index 19a6c51..c0083c6 100644
  class CheckRole(argparse.Action):
  
      def __call__(self, parser, namespace, value, option_string=None):
--- 
-2.7.4
-
-- 
2.7.4


