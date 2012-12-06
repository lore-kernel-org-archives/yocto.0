Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D444DE01446
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 01:19:56 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id AACFC400E0;
	Thu,  6 Dec 2012 09:44:17 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 10:19:52 +0100
Message-Id: <5dee34b6c71047e0660b3caadf9f9b47b3cf82bc.1354783770.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <8181ddd630f6e73119875240a410dcb0345ce1f7.1354783770.git.timo.mueller@bmw-carit.de>
References: <cover.1354783770.git.timo.mueller@bmw-carit.de>
	<8181ddd630f6e73119875240a410dcb0345ce1f7.1354783770.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354783770.git.timo.mueller@bmw-carit.de>
References: <cover.1354783770.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 2/3] documentation/tools/eclipse-help.sed: Fix whitespace
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
X-List-Received-Date: Thu, 06 Dec 2012 09:19:57 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

---
 documentation/tools/eclipse-help.sed |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/tools/eclipse-help.sed b/documentation/tools/eclipse-help.sed
index 71d3395..38690bc 100644
--- a/documentation/tools/eclipse-help.sed
+++ b/documentation/tools/eclipse-help.sed
@@ -1,12 +1,12 @@
 # Processes poky-ref-manual and yocto-project-qs manual (<word>-<word>-<word> style)
 # For example:
-#   "ulink" href="http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#faq" 
+#   "ulink" href="http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#faq"
 #   -> "link" href="../poky-ref-manual/faq.html"
 s/\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/[^\/]*\/\([a-z]*-[a-z]*-[a-z]*\)\/[a-z]*-[a-z]*-[a-z]*.html#\([^\"]*\)\"/\"link\" href=\"\.\.\/\1\/\2.html\"/g
 
 # Processes all other manuals (<word>-<word> style)
 # For example:
-#   "ulink" href="http://www.yoctoproject.org/docs/1.3/kernel-manual/kernel-manual.html#faq" 
+#   "ulink" href="http://www.yoctoproject.org/docs/1.3/kernel-manual/kernel-manual.html#faq"
 #   -> "link" href="../kernel-manual/faq.html"
 s/\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/[^\/]*\/\([a-z]*-[a-z]*\)\/[a-z]*-[a-z]*.html#\([^\"]*\)\"/\"link\" href=\"\.\.\/\1\/\2.html\"/g
 
-- 
1.7.7.6


