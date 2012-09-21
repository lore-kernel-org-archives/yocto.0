Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 188B5E0144A
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:36:43 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7F4554029F;
	Fri, 21 Sep 2012 16:06:40 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:36:13 +0200
Message-Id: <a7eebfe2b6418a4303ea9c18e2fd8ac9d8771eb3.1348236303.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <5b5e5c1df2e3770b01be3f09b30bfd8b225a010d.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348236303.git.timo.mueller@bmw-carit.de>
	<f423e465e06fe2ecc63b23eb00dfe583372ea662.1348236303.git.timo.mueller@bmw-carit.de>
	<7d9bce7a4c37456b0e358d4ad9188b079f99687c.1348236303.git.timo.mueller@bmw-carit.de>
	<ba6e360db9bb644f548e5a75f0685e83d63245f7.1348236303.git.timo.mueller@bmw-carit.de>
	<7221a4f5e94be6668c5333495055addc668bf6e8.1348236303.git.timo.mueller@bmw-carit.de>
	<5b5e5c1df2e3770b01be3f09b30bfd8b225a010d.1348236303.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 07/28] documentation/Makefile: logic to make all for adt manual and cleanup
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Sep 2012 14:36:43 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Eclipse help documents are now created when calling the 'make all'
target on the dev-manual. Resulting files are archived into
the tarball as well. When calling 'make clean' artefacts of
the eclipse documentation build are deleted.
---
 documentation/Makefile |   13 ++++++++-----
 1 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 812a6d7..45ba6b6 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -85,7 +85,7 @@ endif
 
 ifeq ($(DOC),dev-manual)
 XSLTOPTS = --xinclude
-ALLPREQ = html pdf tarball
+ALLPREQ = html pdf eclipse tarball
 #
 # Note that the tarfile might produce the "Cannot stat: No such file or directory" error
 # message for .PNG files that are not present when building a particular branch.  The 
@@ -101,7 +101,8 @@ TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/kernel-overview-1.png figures/kernel-overview-2.png \
            figures/kernel-overview-3-edison.png \
            figures/source-repos.png figures/yp-download.png \
-           figures/wip.png
+           figures/wip.png \
+           eclipse
 	else ifeq ($(BRANCH),denzil)
 TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
@@ -110,7 +111,8 @@ TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/kernel-overview-1.png figures/kernel-overview-2.png \
            figures/kernel-overview-3-denzil.png \
            figures/source-repos.png figures/yp-download.png \
-           figures/wip.png
+           figures/wip.png \
+           eclipse
         else
 TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
@@ -119,10 +121,11 @@ TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/kernel-overview-1.png figures/kernel-overview-2.png \
            figures/kernel-overview-3-denzil.png \
            figures/source-repos.png figures/yp-download.png \
-           figures/wip.png
+           figures/wip.png \
+           eclipse
 	endif
 
-MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
+MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse
 FIGURES = figures
 STYLESHEET = $(DOC)/*.css
 
-- 
1.7.7.6


