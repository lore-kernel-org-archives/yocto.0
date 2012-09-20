Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D40BE0144A
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:37 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 73CB44043B;
	Thu, 20 Sep 2012 15:08:41 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:29 +0200
Message-Id: <5178dada7642b1fbf83611b5ab10d9bfe71999eb.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <5de2c829fd6aba22434130ebf284fcf62c0c4fc7.1348147047.git.timo.mueller@bmw-carit.de>
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
	<c01903c65c0ecf5275d2be20651ad35c31521eb2.1348147047.git.timo.mueller@bmw-carit.de>
	<d19bce02914cfd6801976c2b50186ea821bfb541.1348147047.git.timo.mueller@bmw-carit.de>
	<af081481147189299afc1e0946601cae353a16db.1348147047.git.timo.mueller@bmw-carit.de>
	<10af34d54489f0cefeb5d0597a055d8c7ee3838c.1348147047.git.timo.mueller@bmw-carit.de>
	<d5344147fcd64278155e4c7683a5ec6350ed7cfa.1348147047.git.timo.mueller@bmw-carit.de>
	<f4a5aa8497f8fc22e7c004a9bae93a3180cf81b8.1348147047.git.timo.mueller@bmw-carit.de>
	<83a7d834c42866c8114b7999b2cbaebec3eaaed0.1348147047.git.timo.mueller@bmw-carit.de>
	<31c360070266660b65a88428f373de241361f714.1348147047.git.timo.mueller@bmw-carit.de>
	<a068f0e22e133f86aa56a5b19a1b9b15592e7e8b.1348147047.git.timo.mueller@bmw-carit.de>
	<949c1cf12e34dcd44d65881666bae13ac8dc992f.1348147047.git.timo.mueller@bmw-carit.de>
	<fe9828237af095ea6f85f2167ed58b722bf29e4c.1348147047.git.timo.mueller@bmw-carit.de>
	<6ef29bc93e9a3c85e0d9afd8ef050d81a605dc24.1348147047.git.timo.mueller@bmw-carit.de>
	<027d4cc539d917b35800115c31b91ab42c66efd8.1348147047.git.timo.mueller@bmw-carit.de>
	<5de2c829fd6aba22434130ebf284fcf62c0c4fc7.1348147047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348147047.git.timo.mueller@bmw-carit.de>
References: <cover.1348147047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 25/25] documentation/Makefile: logic to make all for yocto-project-qs and cleanup
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
X-List-Received-Date: Thu, 20 Sep 2012 13:38:38 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Eclipse help documents are now created when calling the 'make all'
target on the yocto-project-qs. Resulting files are archived into
the tarball as well. When calling 'make clean' artefacts of
the eclipse documentation build are deleted.
---
 documentation/Makefile |    9 ++++++---
 1 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 1a29af5..4965c30 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -130,9 +130,12 @@ endif
 
 ifeq ($(DOC),yocto-project-qs)
 XSLTOPTS = --xinclude
-ALLPREQ = html tarball
-TARFILES = yocto-project-qs.html qs-style.css figures/yocto-environment.png figures/building-an-image.png figures/using-a-pre-built-image.png figures/yocto-project-transp.png
-MANUALS = $(DOC)/$(DOC).html
+ALLPREQ = html eclipse tarball
+TARFILES = yocto-project-qs.html qs-style.css figures/yocto-environment.png \
+           figures/building-an-image.png figures/using-a-pre-built-image.png \
+           figures/yocto-project-transp.png \
+           eclipse
+MANUALS = $(DOC)/$(DOC).html $(DOC)/eclipse
 FIGURES = figures
 STYLESHEET = $(DOC)/*.css
 endif
-- 
1.7.7.6


