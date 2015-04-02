Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AA42E00930; Wed,  1 Apr 2015 19:26:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B3FE008EA
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 19:26:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t322QPLn019555
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 1 Apr 2015 19:26:25 -0700 (PDT)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.139) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.224.2; Wed, 1 Apr 2015 19:26:24 -0700
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 2 Apr 2015 10:26:23 +0800
Message-ID: <1427941583-22684-1-git-send-email-rongqing.li@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] findutils/gnulib:drop the error output of 'ls' command
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
X-List-Received-Date: Thu, 02 Apr 2015 02:26:28 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The ls command is used to check if the file exists, and it is normal that
the checked file does not exist, so drop the ls error ouput:
	 ls: cannot access ./doc/fdl.texi: No such file or directory

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 .../drop-the-error-output-of-ls-command.patch      | 29 ++++++++++++++++++++++
 .../findutils/findutils_4.4.2.bbappend             |  1 +
 2 files changed, 30 insertions(+)
 create mode 100644 recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch

diff --git a/recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch b/recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch
new file mode 100644
index 0000000..069be41
--- /dev/null
+++ b/recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch
@@ -0,0 +1,29 @@
+[PATCH] drop the error output of 'ls' command
+
+Upstream-Status: pending
+
+ls is used to check if the file exists, and it is normal that
+the checked file does not exist, so drop the ls error
+	 ls: cannot access ./doc/fdl.texi: No such file or directory
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ gnulib-tool | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/gnulib-tool b/gnulib-tool
+index 354b1f0..beb81ba 100755
+--- a/gnulib-tool
++++ b/gnulib-tool
+@@ -602,7 +602,7 @@ else
+   {
+     # Use two sed invocations. A single sed -n -e 's,^.* -> \(.*\)$,\1,p'
+     # would do the wrong thing if the link target contains " -> ".
+-    LC_ALL=C ls -l "$1" | sed -e 's, -> ,#%%#,' | sed -n -e 's,^.*#%%#\(.*\)$,\1,p'
++    LC_ALL=C ls -l "$1" 2>/dev/null | sed -e 's, -> ,#%%#,' | sed -n -e 's,^.*#%%#\(.*\)$,\1,p'
+   }
+ fi
+ 
+-- 
+1.9.1
+
diff --git a/recipes-extended/findutils/findutils_4.4.2.bbappend b/recipes-extended/findutils/findutils_4.4.2.bbappend
index 3245e5c..e174888 100644
--- a/recipes-extended/findutils/findutils_4.4.2.bbappend
+++ b/recipes-extended/findutils/findutils_4.4.2.bbappend
@@ -5,6 +5,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 SRC_URI += "git://git.savannah.gnu.org/gnulib.git;protocol=git;rev=0e0635af0b23826911dc456bd0da40dcb19247de"
 SRC_URI += "file://findutils-with-selinux.patch"
 SRC_URI += "file://findutils-with-selinux-gnulib.patch"
+SRC_URI += "file://drop-the-error-output-of-ls-command.patch;patchdir=../git/"
 
 inherit with-selinux
 
-- 
2.1.0


