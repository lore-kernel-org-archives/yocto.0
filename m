Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2FB1E01443
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 01:19:56 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 8DD44400B1;
	Thu,  6 Dec 2012 09:44:17 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 10:19:51 +0100
Message-Id: <8181ddd630f6e73119875240a410dcb0345ce1f7.1354783770.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1354783770.git.timo.mueller@bmw-carit.de>
References: <cover.1354783770.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354783770.git.timo.mueller@bmw-carit.de>
References: <cover.1354783770.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 1/3] documentation/Makefile: Fix copying of figures folder
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

When calling the eclipse target twice without calling clean in between
the figures folder was copied as a subfolder of the existing figures
folder. This patch fixes the copy command to correctly copy the
figures folder.
---
 documentation/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 7da14a4..ddef079 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -291,7 +291,7 @@ else
 				-o eclipse/$(DOC).html \
 				$(DOC)-eclipse-customization.xsl $(DOC).xml && \
 		mv eclipse/toc.xml eclipse/$(DOC)-toc.xml && \
-		cp -rf $(FIGURES) eclipse/$(BASE_DIR)/$(FIGURES) && \
+		cp -rf $(FIGURES) eclipse/$(BASE_DIR) && \
 		cd ..;
 
 	$(call modify-eclipse)
-- 
1.7.7.6


