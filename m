Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2292CE004FE
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:21:41 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 2E0314029C;
	Fri,  8 Feb 2013 13:41:11 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:21:23 +0100
Message-Id: <8d2c3ddcb314975fe59a77151af6c84efa3d853b.1360314086.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <5971456014229e0f6109f94430f880d7007c4453.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
	<7393f8a857c5434755f958d7c558debc904634a5.1360314086.git.timo.mueller@bmw-carit.de>
	<184ca006bc27634a3b6ae74e7c1cd8e6d8b420f2.1360314086.git.timo.mueller@bmw-carit.de>
	<abcbb4bad59de14a85decfce6537f580d795a5b8.1360314086.git.timo.mueller@bmw-carit.de>
	<bb79645732f611720419085288300b2ac9a84cad.1360314086.git.timo.mueller@bmw-carit.de>
	<5971456014229e0f6109f94430f880d7007c4453.1360314086.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 06/18] Makefile: Remove duplicate parameters
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
X-List-Received-Date: Fri, 08 Feb 2013 13:21:41 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Standard stylesheet parameters are already defined in the docbook
customization file tying them to the docbook stylesheet used. Removing
these parameters simplifies the Makefile.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 documentation/Makefile | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 773c41f..d997f3d 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -206,12 +206,7 @@ STYLESHEET = $(DOC)/*.css
 endif
 
 ifeq ($(DOC),ref-manual)
-XSLTOPTS = --stringparam html.stylesheet ref-style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  appendix.autolabel A \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-           --xinclude
+XSLTOPTS = --xinclude
 ALLPREQ = html pdf tarball
 TARFILES = ref-manual.html ref-style.css figures/poky-title.png \
 	figures/buildhistory.png figures/buildhistory-web.png
-- 
1.7.11.7


