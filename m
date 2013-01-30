Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C142E0144A
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 06:01:36 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id D249B4029C;
	Wed, 30 Jan 2013 14:21:48 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 15:01:27 +0100
Message-Id: <d8794536b470d26adb1215bca4bdc548ee0d24bc.1359476560.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <7cf27bee15d63bef3f80921b5d3cb7cad3ee0a3d.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
	<d8ee0c11e8def36416453669cc11dcaf9a53d282.1359476560.git.timo.mueller@bmw-carit.de>
	<95c2be703c8568993b9ed156ac5c6f3f55f5f5ac.1359476560.git.timo.mueller@bmw-carit.de>
	<162236628ecd020d007df425c5e92d560154c856.1359476560.git.timo.mueller@bmw-carit.de>
	<401cffb10bb37b8c09cc619aa964195c7f86a53a.1359476560.git.timo.mueller@bmw-carit.de>
	<6b6e68cb4b9d938918456b1089a3218fb5d1306b.1359476560.git.timo.mueller@bmw-carit.de>
	<7cf27bee15d63bef3f80921b5d3cb7cad3ee0a3d.1359476560.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 07/13] features/sdk.site: Added yocto.doc feature to update site
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
X-List-Received-Date: Wed, 30 Jan 2013 14:01:36 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 features/org.yocto.sdk.site/category.xml | 4 ++++
 features/org.yocto.sdk.site/site.xml     | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/features/org.yocto.sdk.site/category.xml b/features/org.yocto.sdk.site/category.xml
index 6466ea5..4dd0178 100644
--- a/features/org.yocto.sdk.site/category.xml
+++ b/features/org.yocto.sdk.site/category.xml
@@ -9,6 +9,10 @@
    <feature url="features/org.yocto.bc_@bcfeatureVersion@.jar" id="org.yocto.bc" version="@bcfeatureVersion@">
       <category name="Yocto Project Bitbake Commander"/>
    </feature>
+   <feature url="features/org.yocto.doc_@docFeatureVersion@.jar" id="org.yocto.doc" version="@docFeatureVersion@">
+      <category name="Yocto Project Documentation"/>
+   </feature>
    <category-def name="Yocto Project ADT" label="Yocto Project ADT Plug-in"/>
    <category-def name="Yocto Project Bitbake Commander" label="Yocto Project Bitbake Commander Plug-in"/>
+   <category-def name="Yocto Project Documentation" label="Yocto Project Documentation plug-in"/>
 </site>
diff --git a/features/org.yocto.sdk.site/site.xml b/features/org.yocto.sdk.site/site.xml
index d477279..33f36cd 100644
--- a/features/org.yocto.sdk.site/site.xml
+++ b/features/org.yocto.sdk.site/site.xml
@@ -11,4 +11,8 @@
       <category name="Yocto Project Bitbake Commander"/>
    </feature>
    <category-def name="Yocto Project Bitbake Commander" label="Yocto Project Bitbake Commander plug-in"/>
+   <feature url="features/org.yocto.doc_@docGenVersion@.jar" id="org.yocto.doc" version="@docGenVersion@">
+      <category name="Yocto Project Documentation"/>
+   </feature>
+   <category-def name="Yocto Project Documentation" label="Yocto Project Documentation plug-in"/>
 </site>
-- 
1.7.11.7


