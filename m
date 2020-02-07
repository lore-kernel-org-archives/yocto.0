Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4890.1581083382457167686
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 05:49:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CC55E016D9; Fri,  7 Feb 2020 05:49:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9AAAE01589
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2020 05:49:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 017DnHAC026362
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 7 Feb 2020 05:49:28 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 7 Feb
 2020 05:49:07 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] scap-security-guide: fix xml parsing error when build remediation files
Date: Fri, 7 Feb 2020 21:49:04 +0800
Message-ID: <20200207134904.26958-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Backport 2 patches to fix the build error:

Processing fix.text for: java_jre_configure_crypto_policy rule
Unable to extract part of the fix.text after inclusion of remediation functions. Aborting..
jre/CMakeFiles/generate-internal-jre-bash-fixes.xml.dir/build.make:60:
recipe for target 'jre/bash-fixes.xml' failed
make[2]: *** [jre/bash-fixes.xml] Error 1
make[2]: *** Deleting file 'jre/bash-fixes.xml'

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ng-of-the-remediation-functions-file.patch | 39 +++++++++++++++++++
 ...-fix-when-greedy-regex-ate-the-whole.patch | 35 +++++++++++++++++
 .../scap-security-guide_git.bb                |  5 ++-
 3 files changed, 78 insertions(+), 1 deletion(-)
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch
new file mode 100644
index 0000000..c0b93e4
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch
@@ -0,0 +1,39 @@
+From 174293162e5840684d967e36840fc1f9f57c90be Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Mat=C4=9Bj=20T=C3=BD=C4=8D?= <matyc@redhat.com>
+Date: Thu, 5 Dec 2019 15:02:05 +0100
+Subject: [PATCH] Fix XML "parsing" of the remediation functions file.
+
+A proper fix is not worth the effort, as we aim to kill shared Bash remediation
+with Jinja2 macros.
+
+Upstream-Status: Backport
+[https://github.com/ComplianceAsCode/content/commit/174293162e5840684d967e36840fc1f9f57c90be]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ ssg/build_remediations.py | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/ssg/build_remediations.py b/ssg/build_remediations.py
+index 7da807bd6..13e90f732 100644
+--- a/ssg/build_remediations.py
++++ b/ssg/build_remediations.py
+@@ -56,11 +56,11 @@ def get_available_functions(build_dir):
+     remediation_functions = []
+     with codecs.open(xmlfilepath, "r", encoding="utf-8") as xmlfile:
+         filestring = xmlfile.read()
+-        # This regex looks implementation dependent but we can rely on
+-        # ElementTree sorting XML attrs alphabetically. Hidden is guaranteed
+-        # to be the first attr and ID is guaranteed to be second.
++        # This regex looks implementation dependent but we can rely on the element attributes
++        # being present on one line.
++        # We can't rely on ElementTree sorting XML attrs in any way since Python 3.7.
+         remediation_functions = re.findall(
+-            r'<Value hidden=\"true\" id=\"function_(\S+)\"',
++            r'<Value.*id=\"function_(\S+)\"',
+             filestring, re.DOTALL
+         )
+ 
+-- 
+2.17.1
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch
new file mode 100644
index 0000000..f0c9909
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch
@@ -0,0 +1,35 @@
+From 28a35d63a0cc6b7beb51c77d93bb30778e6960cd Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Mat=C4=9Bj=20T=C3=BD=C4=8D?= <matyc@redhat.com>
+Date: Mon, 9 Dec 2019 13:41:47 +0100
+Subject: [PATCH] Fixed the broken fix, when greedy regex ate the whole file.
+
+We want to match attributes in an XML element, not in the whole file.
+
+Upstream-Status: Backport
+[https://github.com/ComplianceAsCode/content/commit/28a35d63a0cc6b7beb51c77d93bb30778e6960cd]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ ssg/build_remediations.py | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/ssg/build_remediations.py b/ssg/build_remediations.py
+index 13e90f732..edf31c0cf 100644
+--- a/ssg/build_remediations.py
++++ b/ssg/build_remediations.py
+@@ -57,10 +57,10 @@ def get_available_functions(build_dir):
+     with codecs.open(xmlfilepath, "r", encoding="utf-8") as xmlfile:
+         filestring = xmlfile.read()
+         # This regex looks implementation dependent but we can rely on the element attributes
+-        # being present on one line.
++        # being present. Beware, DOTALL means we go through the whole file at once.
+         # We can't rely on ElementTree sorting XML attrs in any way since Python 3.7.
+         remediation_functions = re.findall(
+-            r'<Value.*id=\"function_(\S+)\"',
++            r'<Value[^>]+id=\"function_(\S+)\"',
+             filestring, re.DOTALL
+         )
+ 
+-- 
+2.17.1
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
index d9238c0..f35d769 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
@@ -1,7 +1,10 @@
 SUMARRY = "SCAP content for various platforms, OE changes"
 
 SRCREV = "5fdfdcb2e95afbd86ace555beca5d20cbf1043ed"
-SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44;"
+SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44; \
+           file://0001-Fix-XML-parsing-of-the-remediation-functions-file.patch \
+           file://0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch \
+          "
 PV = "0.1.44+git${SRCPV}"
 
 require scap-security-guide.inc
-- 
2.17.1

