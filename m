Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 454EBE0144A
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:18 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 92F2E40295;
	Fri, 21 Sep 2012 16:14:20 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:09 +0200
Message-Id: <08c85c21ce236477ddc53176fa1a961881aba94c.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <33b736ffaca72740bedf1b1415b11a8f653fa5ba.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
	<e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
	<ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
	<020c6213dadc157b2d47f4d99db197c3ded6e90b.1348237278.git.timo.mueller@bmw-carit.de>
	<33b736ffaca72740bedf1b1415b11a8f653fa5ba.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 06/12] features/sdk.site: Added eclipse help feature to update site
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:18 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Using the update site the user is able to install the documentation
feature. As it is required by yocto's main feature it will be
automatically installed during the main features installation.
---
 features/org.yocto.sdk.site/category.xml |    6 ++++++
 features/org.yocto.sdk.site/site.xml     |    3 +++
 2 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/features/org.yocto.sdk.site/category.xml b/features/org.yocto.sdk.site/category.xml
index 9fb50b2..e21f3fb 100644
--- a/features/org.yocto.sdk.site/category.xml
+++ b/features/org.yocto.sdk.site/category.xml
@@ -6,5 +6,11 @@
    <feature url="features/org.yocto.sdk.source_@featureVerion@.jar" id="org.yocto.sdk.source" version="@featureVerion@">
       <category name="Yocto SDK"/>
    </feature>
+   <feature url="features/org.yocto.sdk.doc_@featureVerion@.jar" id="org.yocto.sdk.doc" version="@featureVerion@">
+      <category name="Yocto SDK"/>
+   </feature>
+   <feature url="features/org.yocto.sdk.doc.source_@featureVerion@.jar" id="org.yocto.sdk.doc.source" version="@featureVerion@">
+      <category name="Yocto SDK"/>
+   </feature>
    <category-def name="Yocto SDK" label="Development tools &amp; SDKs for Yocto Linux"/>
 </site>
diff --git a/features/org.yocto.sdk.site/site.xml b/features/org.yocto.sdk.site/site.xml
index 59ebbd5..e33e91a 100644
--- a/features/org.yocto.sdk.site/site.xml
+++ b/features/org.yocto.sdk.site/site.xml
@@ -6,5 +6,8 @@
    <feature url="features/org.yocto.sdk_@genVerion@.jar" id="org.yocto.sdk" version="@genVerion@">
       <category name="Yocto SDK"/>
    </feature>
+   <feature url="features/org.yocto.sdk.doc_@genVerion@.jar" id="org.yocto.sdk.doc" version="@genVerion@">
+      <category name="Yocto SDK"/>
+   </feature>
    <category-def name="Yocto SDK" label="Development tools &amp; SDKs for Yocto Linux"/>
 </site>
-- 
1.7.7.6


