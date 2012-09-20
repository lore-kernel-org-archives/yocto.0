Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3163E0144A
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:36 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B27A1402D6;
	Thu, 20 Sep 2012 15:08:39 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:15 +0200
Message-Id: <c01903c65c0ecf5275d2be20651ad35c31521eb2.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <f5caa376895e25a5a277dffcf4e34b8cd9a8502c.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348147047.git.timo.mueller@bmw-carit.de>
	<0d6c673c3b5ee40fe7dc5a9ca91ec7d8d35440a0.1348147047.git.timo.mueller@bmw-carit.de>
	<b7d9dbe40bd79fca4d81128448c0b2becec50589.1348147047.git.timo.mueller@bmw-carit.de>
	<e8d106d7f16af5bc0819650ae9471f7936b0d71e.1348147047.git.timo.mueller@bmw-carit.de>
	<3d0a07f43721d2662899b371a3c6e8521e401323.1348147047.git.timo.mueller@bmw-carit.de>
	<ee7ceec0f795156840ecf5fbfde6e623e3674eeb.1348147047.git.timo.mueller@bmw-carit.de>
	<3b3b4cc6a87b643b7b37ceb9c9266dd154bc9c9a.1348147047.git.timo.mueller@bmw-carit.de>
	<cbcf755d00342b6f2141e1b12bee502e2a25b3a5.1348147047.git.timo.mueller@bmw-carit.de>
	<fec560f6ad9c686a28995a32c53565cbe1b1a5a5.1348147047.git.timo.mueller@bmw-carit.de>
	<f5caa376895e25a5a277dffcf4e34b8cd9a8502c.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 11/25] documentation/Makefile: logic to make all for bsp guide and cleanup
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
target on the bsp-guide. Resulting files are archived into
the tarball as well. When calling 'make clean' artefacts of
the eclipse documentation build are deleted.
---
 documentation/Makefile |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 815ab53..02206b5 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -71,9 +71,10 @@
 
 ifeq ($(DOC),bsp-guide)
 XSLTOPTS = --xinclude
-ALLPREQ = html pdf tarball
-TARFILES = bsp-style.css bsp-guide.html bsp-guide.pdf figures/bsp-title.png
-MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
+ALLPREQ = html pdf eclipse tarball
+TARFILES = bsp-style.css bsp-guide.html bsp-guide.pdf figures/bsp-title.png \
+           eclipse
+MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse
 FIGURES = figures
 STYLESHEET = $(DOC)/*.css
 
-- 
1.7.7.6


