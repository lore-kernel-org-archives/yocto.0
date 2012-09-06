Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B96E1E013DB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 02:04:59 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 360E44011F;
	Thu,  6 Sep 2012 10:35:56 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:04:38 +0200
Message-Id: <128ba200ca531e3afddd08414a5ea1da2895090f.1346922110.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <73db3a531bfdde7d26ea5f77e4bf76c7e8249aad.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
	<9c31105cfa8f5bfe6f7ec025de1084e79221e88f.1346922110.git.timo.mueller@bmw-carit.de>
	<bdbc5cf7f1e7b188ccabf9979b69b844f9735490.1346922110.git.timo.mueller@bmw-carit.de>
	<6c9ad3a6e10e00777c86a664e5b4faf78e411fed.1346922110.git.timo.mueller@bmw-carit.de>
	<73db3a531bfdde7d26ea5f77e4bf76c7e8249aad.1346922110.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1346922110.git.timo.mueller@bmw-carit.de>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 5/6] documentation/adt-manual/adt-manual.xml: Added title to bookinfo
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

The title of the document used to create metadata for output formats
such as eclipse help.
---
 documentation/adt-manual/adt-manual.xml |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index e34dc1c..614a38e 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -16,7 +16,10 @@
             </imageobject>    
         </mediaobject>
 
-        <title></title>
+        <title>
+            The Yocto Project Application Development Toolkit (ADT)
+            User's Guide.
+        </title>
 
         <authorgroup>
             <author>
-- 
1.7.7.6


