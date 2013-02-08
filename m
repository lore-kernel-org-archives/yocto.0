Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CC9A9E01471
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:21:42 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B930940342;
	Fri,  8 Feb 2013 13:41:12 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:21:35 +0100
Message-Id: <787e18be63ab638da28b3abf0f6300190bc925d0.1360314086.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <6c939e65dd61b842c42e61e8bdd7d2bec885aa56.1360314086.git.timo.mueller@bmw-carit.de>
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
	<40c355fb6c70197a95394d838dd857c4b6a4b508.1360314086.git.timo.mueller@bmw-carit.de>
	<6e55e85336c7bc9fb8eea8e3e97bbbf3c102a647.1360314086.git.timo.mueller@bmw-carit.de>
	<fe7fe7b58bff50d69417852e67e125a859a5bb69.1360314086.git.timo.mueller@bmw-carit.de>
	<ad28fbaa3d0793f80ab200f021895623166a8d6a.1360314086.git.timo.mueller@bmw-carit.de>
	<6c939e65dd61b842c42e61e8bdd7d2bec885aa56.1360314086.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 18/18] Makefile: logic to make all for profile-manual and cleanup
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
X-List-Received-Date: Fri, 08 Feb 2013 13:21:43 -0000

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
index a9ba020..c3c6a3c 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -228,7 +228,7 @@ endif
 
 ifeq ($(DOC),profile-manual)
 XSLTOPTS = --xinclude
-ALLPREQ = html pdf tarball
+ALLPREQ = html pdf eclipse tarball
 TARFILES = profile-manual.html profile-manual.pdf profile-manual-style.css \
            figures/profile-title.png figures/kernelshark-all.png \
            figures/kernelshark-choose-events.png figures/kernelshark-i915-display.png \
@@ -245,8 +245,9 @@ TARFILES = profile-manual.html profile-manual.pdf profile-manual-style.css \
            figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-hidden.png figures/pybootchartgui-linux-yocto.png \
            figures/pychart-linux-yocto-rpm.png figures/pychart-linux-yocto-rpm-nostrip.png \
            figures/sched-wakeup-profile.png figures/sysprof-callers.png \
-           figures/sysprof-copy-from-user.png figures/sysprof-copy-to-user.png
-MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
+           figures/sysprof-copy-from-user.png figures/sysprof-copy-to-user.png \
+           eclipse
+MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse
 FIGURES = figures
 STYLESHEET = $(DOC)/*.css
 endif
-- 
1.7.11.7


