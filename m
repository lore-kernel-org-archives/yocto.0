Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB45AE0142C
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:36 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 164EC40295;
	Thu, 20 Sep 2012 15:08:39 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:10 +0200
Message-Id: <ee7ceec0f795156840ecf5fbfde6e623e3674eeb.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <3d0a07f43721d2662899b371a3c6e8521e401323.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348147047.git.timo.mueller@bmw-carit.de>
	<0d6c673c3b5ee40fe7dc5a9ca91ec7d8d35440a0.1348147047.git.timo.mueller@bmw-carit.de>
	<b7d9dbe40bd79fca4d81128448c0b2becec50589.1348147047.git.timo.mueller@bmw-carit.de>
	<e8d106d7f16af5bc0819650ae9471f7936b0d71e.1348147047.git.timo.mueller@bmw-carit.de>
	<3d0a07f43721d2662899b371a3c6e8521e401323.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 06/25] documentation/Makefile: logic to make all for adt manual and cleanup
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
X-List-Received-Date: Thu, 20 Sep 2012 13:38:37 -0000

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


