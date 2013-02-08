Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6CFADE01470
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:21:42 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 0E383402D9;
	Fri,  8 Feb 2013 13:41:12 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:21:30 +0100
Message-Id: <40c355fb6c70197a95394d838dd857c4b6a4b508.1360314086.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <140697404f61a10cc15693c495a3bfc85c2ec8d1.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
	<7393f8a857c5434755f958d7c558debc904634a5.1360314086.git.timo.mueller@bmw-carit.de>
	<184ca006bc27634a3b6ae74e7c1cd8e6d8b420f2.1360314086.git.timo.mueller@bmw-carit.de>
	<abcbb4bad59de14a85decfce6537f580d795a5b8.1360314086.git.timo.mueller@bmw-carit.de>
	<bb79645732f611720419085288300b2ac9a84cad.1360314086.git.timo.mueller@bmw-carit.de>
	<5971456014229e0f6109f94430f880d7007c4453.1360314086.git.timo.mueller@bmw-carit.de>
	<8d2c3ddcb314975fe59a77151af6c84efa3d853b.1360314086.git.timo.mueller@bmw-carit.de>
	<ec013a8269ebe6fcc892fddd1dfc0359e55b41e5.1360314086.git.timo.mueller@bmw-carit.de>
	<51b874b4d123e14d1fb3f20878e05fb94cc52a6f.1360314086.git.timo.mueller@bmw-carit.de>
	<aa09177857ef0ff59305293c39046cbd2e748cf0.1360314086.git.timo.mueller@bmw-carit.de>
	<cd58e0a25a3385594fbf5b6a578ebaf07dcfba8d.1360314086.git.timo.mueller@bmw-carit.de>
	<9ba91b0024293037cbfef60a8033c9d4fe6c26b3.1360314086.git.timo.mueller@bmw-carit.de>
	<140697404f61a10cc15693c495a3bfc85c2ec8d1.1360314086.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 13/18] Makefile: logic to make all for kernel-dev and cleanup
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
X-List-Received-Date: Fri, 08 Feb 2013 13:21:42 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Eclipse help documents are now created when calling the 'make all'
target on the kernel-dev. Resulting files are archived into
the tarball as well. When calling 'make clean' artefacts of the
eclipse documentation build are deleted.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 documentation/Makefile | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 67017b8..3d2923d 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -258,10 +258,11 @@ endif
 
 ifeq ($(DOC),kernel-dev)
 XSLTOPTS = --xinclude
-ALLPREQ = html pdf tarball
+ALLPREQ = html pdf eclipse tarball
 TARFILES = kernel-dev.html kernel-dev.pdf kernel-dev-style.css figures/kernel-dev-title.png \
-           figures/kernel-architecture-overview.png
-MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
+           figures/kernel-architecture-overview.png \
+           eclipse
+MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse
 FIGURES = figures
 STYLESHEET = $(DOC)/*.css
 endif
-- 
1.7.11.7


