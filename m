Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8364E004AB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 02:04:59 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 535A440181;
	Thu,  6 Sep 2012 10:35:56 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:04:39 +0200
Message-Id: <7daaeb51a4fa19cc1a2405ab8d0b4891574a9d31.1346922110.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <128ba200ca531e3afddd08414a5ea1da2895090f.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
	<9c31105cfa8f5bfe6f7ec025de1084e79221e88f.1346922110.git.timo.mueller@bmw-carit.de>
	<bdbc5cf7f1e7b188ccabf9979b69b844f9735490.1346922110.git.timo.mueller@bmw-carit.de>
	<6c9ad3a6e10e00777c86a664e5b4faf78e411fed.1346922110.git.timo.mueller@bmw-carit.de>
	<73db3a531bfdde7d26ea5f77e4bf76c7e8249aad.1346922110.git.timo.mueller@bmw-carit.de>
	<128ba200ca531e3afddd08414a5ea1da2895090f.1346922110.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 6/6] documentation/Makefile: Added eclipse target to adt-manual documentation
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
X-List-Received-Date: Thu, 06 Sep 2012 09:05:00 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Eclipse help documents are now created when calling the 'make all'
target on the adt-manual. Resulting files are archived into
the tarball as well. When calling 'make clean' artefacts of
the eclipse documentation build are deleted.
---
 documentation/Makefile |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 87e1fde..0537c22 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -214,9 +214,10 @@ endif
 
 ifeq ($(DOC),adt-manual)
 XSLTOPTS = --xinclude
-ALLPREQ = html pdf tarball
-TARFILES = adt-manual.html adt-manual.pdf adt-style.css figures/adt-title.png
-MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
+ALLPREQ = html pdf eclipse tarball
+TARFILES = adt-manual.html adt-manual.pdf adt-style.css figures/adt-title.png \
+			eclipse
+MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse
 FIGURES = figures
 STYLESHEET = $(DOC)/*.css
 endif
@@ -329,4 +330,4 @@ publish:
 	fi
 
 clean:
-	rm -f $(MANUALS)
+	rm -rf $(MANUALS)
-- 
1.7.7.6


