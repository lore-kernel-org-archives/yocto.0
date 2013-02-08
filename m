Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 854A9E0047F
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:21:39 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 4B4CD400A2;
	Fri,  8 Feb 2013 13:41:10 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:21:19 +0100
Message-Id: <184ca006bc27634a3b6ae74e7c1cd8e6d8b420f2.1360314086.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <7393f8a857c5434755f958d7c558debc904634a5.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
	<7393f8a857c5434755f958d7c558debc904634a5.1360314086.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 02/18] Makefile: Modify DOC filter for eclipse-generate target
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
X-List-Received-Date: Fri, 08 Feb 2013 13:21:39 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Filter now explicitely lists the doc parts from which eclipse help can
be generated.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 documentation/Makefile | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index fac2c85..773c41f 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -332,9 +332,17 @@ eclipse: eclipse-generate eclipse-resolve-links
 .PHONY : eclipse-generate eclipse-resolve-links
 
 eclipse-generate:
-ifeq ($(DOC),mega-manual)
+ifeq ($(filter $(DOC), adt-manual bsp-guide dev-manual kernel-dev profile-manual ref-manual yocto-project-qs),)
 	@echo " "
-	@echo "ERROR: You cannot generate eclipse documentation for the mega-manual"
+	@echo "ERROR: You can only create eclipse documentation"
+	@echo "       of the following documentation parts:"
+	@echo "       - adt-manual"
+	@echo "       - bsp-guide"
+	@echo "       - dev-manual"
+	@echo "       - kernel-dev"
+	@echo "       - profile-manual"
+	@echo "       - ref-manual"
+	@echo "       - yocto-project-qs"
 	@echo " "
 else
 	@echo " "
-- 
1.7.11.7


