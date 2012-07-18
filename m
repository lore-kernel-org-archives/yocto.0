Return-Path: <timo@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCEBDE00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:03:08 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from localhost (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 139891D5607E;
	Wed, 18 Jul 2012 15:03:08 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 18 Jul 2012 15:02:58 +0200
Message-Id: <cad0c3d02deed3168db032b8deb4bbd2a8752dd1.1342614895.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <8b1c614175c4587bfe46b8f0ac8ca4a9fba4a86c.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<8bbcd40cc56d25517ad2de1dbc3a9b1d5bfd61e9.1342614895.git.timo.mueller@bmw-carit.de>
	<e4d6d3bb6e59ce31a6c70e99260c36a1ab6a578c.1342614895.git.timo.mueller@bmw-carit.de>
	<5f1a6b30ceb23444478d4e5bf313fb135d256451.1342614895.git.timo.mueller@bmw-carit.de>
	<b8938f0d94423c7b584d9203ea9a8d206020baf8.1342614895.git.timo.mueller@bmw-carit.de>
	<8393b7e36cf0054754e5de7af7e3a1606fe8c363.1342614895.git.timo.mueller@bmw-carit.de>
	<8b1c614175c4587bfe46b8f0ac8ca4a9fba4a86c.1342614895.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 7/8] features/sdk.site: Added eclipse help feature to update site
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
X-List-Received-Date: Wed, 18 Jul 2012 13:03:09 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Using the update site the user is able to install the documentation
feature.  As it is required by yocto's main feature it will be
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


