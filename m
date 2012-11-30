Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23E60E011AF
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 00:59:57 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id AA73D4029C;
	Fri, 30 Nov 2012 09:24:44 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 09:59:28 +0100
Message-Id: <899749cce559d9c6894343fae844873c337fd5b5.1354264975.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <d9192a08f1bb84cd8ef7ab924d41eb0e81aefbea.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
	<ae85de5617553768dab8adfb8e33682d6f496f98.1354264975.git.timo.mueller@bmw-carit.de>
	<0ef502fd88b1e7806abb8d93ebd53cd89769a1db.1354264975.git.timo.mueller@bmw-carit.de>
	<f1b31f8514fc06af68ab00b9920498a2ba3271f6.1354264975.git.timo.mueller@bmw-carit.de>
	<14c72e38f8845ff1c42e0b5bc5e01c76d45dbe57.1354264975.git.timo.mueller@bmw-carit.de>
	<d9bf052b5f144b5188dfcde7b1384a843c8c81b5.1354264975.git.timo.mueller@bmw-carit.de>
	<abc49ebf76d55dbb646b05fb451b08b780a921ab.1354264975.git.timo.mueller@bmw-carit.de>
	<0e3b5ea52a5229679c6abc875652bf7e9b64f323.1354264975.git.timo.mueller@bmw-carit.de>
	<b44f86f7f3af703ff4528a35eb82c7108586330e.1354264975.git.timo.mueller@bmw-carit.de>
	<7893fff34faec13f7073016ca5221a342d92df61.1354264975.git.timo.mueller@bmw-carit.de>
	<d9192a08f1bb84cd8ef7ab924d41eb0e81aefbea.1354264975.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 11/35] documentation/Makefile: logic to make all for dev manual and cleanup
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
X-List-Received-Date: Fri, 30 Nov 2012 08:59:57 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Eclipse help documents are now created when calling the 'make all'
target on the dev-manual. Resulting files are archived into
the tarball as well. When calling 'make clean' artefacts of
the eclipse documentation build are deleted.
---
 documentation/Makefile |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index e57f5c3..c535517 100644
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
@@ -116,10 +116,11 @@ TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
            figures/git-workflow.png figures/index-downloads.png figures/kernel-dev-flow.png \
            figures/kernel-overview-1.png figures/kernel-overview-2-generic.png \
-           figures/source-repos.png figures/yp-download.png
+           figures/source-repos.png figures/yp-download.png \
+           eclipse
 	endif
 
-MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
+MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse
 FIGURES = figures
 STYLESHEET = $(DOC)/*.css
 
-- 
1.7.7.6


