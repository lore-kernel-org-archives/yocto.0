Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5003E00294
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 00:59:56 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id F15AA40239;
	Fri, 30 Nov 2012 09:24:43 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 09:59:22 +0100
Message-Id: <d9bf052b5f144b5188dfcde7b1384a843c8c81b5.1354264975.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <14c72e38f8845ff1c42e0b5bc5e01c76d45dbe57.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
	<ae85de5617553768dab8adfb8e33682d6f496f98.1354264975.git.timo.mueller@bmw-carit.de>
	<0ef502fd88b1e7806abb8d93ebd53cd89769a1db.1354264975.git.timo.mueller@bmw-carit.de>
	<f1b31f8514fc06af68ab00b9920498a2ba3271f6.1354264975.git.timo.mueller@bmw-carit.de>
	<14c72e38f8845ff1c42e0b5bc5e01c76d45dbe57.1354264975.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 05/35] documentation/adt-manual/adt-manual.xml: Added Title tag
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

The title of the document used to create metadata for output formats
such as eclipse help.
---
 documentation/adt-manual/adt-manual.xml |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index 25bc27e..3b99547 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -16,7 +16,9 @@
             </imageobject>    
         </mediaobject>
 
-        <title></title>
+        <title>
+            The Yocto Project Application Developer's Guide
+        </title>
 
         <authorgroup>
             <author>
-- 
1.7.7.6


