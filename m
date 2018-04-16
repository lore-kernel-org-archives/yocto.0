Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BB23E008BF; Sun, 15 Apr 2018 18:57:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7A35E008BF
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2018 18:57:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w3G1vTbE004689
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 15 Apr 2018 18:57:29 -0700
Received: from localhost (128.224.163.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Sun, 15 Apr 2018 18:57:29 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<alexandru.vaduva@linux.com>, <joe_macdonald@mentor.com>
Date: Mon, 16 Apr 2018 09:57:25 +0800
Message-ID: <1523843847-24868-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.163.220]
Subject: [meta-cgl][PATCH 1/3] crmsh: refresh patch to fix QA warning
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
X-List-Received-Date: Mon, 16 Apr 2018 01:57:45 -0000
Content-Type: text/plain

Refresh patch with devtool command to fix do_patch warning.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-cgl/crmsh/crmsh/tweaks_for_build.patch    | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch b/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
index f465c82..203527a 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
@@ -1,3 +1,8 @@
+From 11704324287f9f552e1524f4a680b8744abd0361 Mon Sep 17 00:00:00 2001
+From: Kai Kang <kai.kang@windriver.com>
+Date: Fri, 9 Jun 2017 11:04:56 +0800
+Subject: [PATCH] crmsh: disable network access for xsltproc when building
+
 Upstream-Status: Inappropriate [embedded specific]
 
 Pass option '--catalogs' to xsltproc via a2x to avoid network access.
@@ -7,12 +12,16 @@ Add option '--install-lib' of python setup.py to install python libraries to
 right place.
 
 Signed-off-by: Kai Kang <kai.kang@windriver.com>
+
 ---
+ Makefile.am | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
 diff --git a/Makefile.am b/Makefile.am
-index d89affb..0f2361f 100644
+index 1ffe9c3..3d045e7 100644
 --- a/Makefile.am
 +++ b/Makefile.am
-@@ -47,7 +47,7 @@ endif
+@@ -45,7 +45,7 @@ endif
  	$(ASCIIDOC) --unsafe --backend=xhtml11 $<
  
  %.8: %.8.adoc
@@ -21,11 +30,11 @@ index d89affb..0f2361f 100644
  
  # Shared data files
  install-data-hook:
-@@ -79,6 +79,7 @@ install-exec-local:
- 	-mkdir -p $(DESTDIR)$(pkgpythondir)
+@@ -73,6 +73,7 @@ install-exec-local:
  	$(PYTHON) $(srcdir)/setup.py install \
+ 		--root $(DESTDIR)/// \
  		$(python_prefix) \
 +		--install-lib $(pythondir) \
  		--record $(DESTDIR)$(pkgpythondir)/install_files.txt \
  		--verbose
- 	$(INSTALL) -d -m 770 $(DESTDIR)/$(CRM_CACHE_DIR)
+ 	$(INSTALL) -d -m 770 $(DESTDIR)$(CRM_CACHE_DIR)
-- 
2.7.4


