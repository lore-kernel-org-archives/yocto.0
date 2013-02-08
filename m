Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 33520E006EF
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 5C980400A2;
	Fri,  8 Feb 2013 13:44:17 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:32 +0100
Message-Id: <5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 02/12] Fixed typo in version variable name
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
X-List-Received-Date: Fri, 08 Feb 2013 13:24:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 features/org.yocto.bc.headless.build/customTargets.xml  | 4 ++--
 features/org.yocto.sdk.headless.build/customTargets.xml | 4 ++--
 features/org.yocto.sdk.site/category.xml                | 6 +++---
 features/org.yocto.sdk.site/site.xml                    | 4 ++--
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/features/org.yocto.bc.headless.build/customTargets.xml b/features/org.yocto.bc.headless.build/customTargets.xml
index a3c87ff..b6d7ed7 100644
--- a/features/org.yocto.bc.headless.build/customTargets.xml
+++ b/features/org.yocto.bc.headless.build/customTargets.xml
@@ -81,7 +81,7 @@
 		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/category.xml" todir="${buildDirectory}" />
 		<xmlproperty file="${otherSrcDirectory}/features/org.yocto.bc/feature.xml" />
 		<replace file="${buildDirectory}/category.xml">
-			<replacefilter token="@bcfeatureVerion@" value="${feature(version)}"/>
+			<replacefilter token="@bcfeatureVersion@" value="${feature(version)}"/>
 		</replace>
 	</target>
 
@@ -177,7 +177,7 @@
 		<property file="${buildDirectory}/finalFeaturesVersions.properties" />
 		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/site.xml" todir="${buildDirectory}" />
 		<replace file="${buildDirectory}/site.xml">
-			<replacefilter token="@bcgenVerion@" value="${org.yocto.bc}"/>
+			<replacefilter token="@bcgenVersion@" value="${org.yocto.bc}"/>
 		</replace>
 		<zip destfile="${buildDirectory}/${buildLabel}/org.yocto.bc-${buildId}-group.group.group.zip" update="true">
 			<zipfileset dir="${buildDirectory}">
diff --git a/features/org.yocto.sdk.headless.build/customTargets.xml b/features/org.yocto.sdk.headless.build/customTargets.xml
index 45cb4c9..cb08f91 100644
--- a/features/org.yocto.sdk.headless.build/customTargets.xml
+++ b/features/org.yocto.sdk.headless.build/customTargets.xml
@@ -81,7 +81,7 @@
 		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/category.xml" todir="${buildDirectory}" />
 		<xmlproperty file="${otherSrcDirectory}/features/org.yocto.sdk/feature.xml" />
 		<replace file="${buildDirectory}/category.xml">
-			<replacefilter token="@featureVerion@" value="${feature(version)}"/>
+			<replacefilter token="@featureVersion@" value="${feature(version)}"/>
 		</replace>
 	</target>
 
@@ -177,7 +177,7 @@
 		<property file="${buildDirectory}/finalFeaturesVersions.properties" />
 		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/site.xml" todir="${buildDirectory}" />
 		<replace file="${buildDirectory}/site.xml">
-			<replacefilter token="@genVerion@" value="${org.yocto.sdk}"/>
+			<replacefilter token="@genVersion@" value="${org.yocto.sdk}"/>
 		</replace>
 		<zip destfile="${buildDirectory}/${buildLabel}/org.yocto.sdk-${buildId}-group.group.group.zip" update="true">
 			<zipfileset dir="${buildDirectory}">
diff --git a/features/org.yocto.sdk.site/category.xml b/features/org.yocto.sdk.site/category.xml
index 6b1812c..6466ea5 100644
--- a/features/org.yocto.sdk.site/category.xml
+++ b/features/org.yocto.sdk.site/category.xml
@@ -1,12 +1,12 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <site>
-   <feature url="features/org.yocto.sdk_@featureVerion@.jar" id="org.yocto.sdk" version="@featureVerion@">
+   <feature url="features/org.yocto.sdk_@featureVersion@.jar" id="org.yocto.sdk" version="@featureVersion@">
       <category name="Yocto Project ADT"/>
    </feature>
-   <feature url="features/org.yocto.sdk.source_@featureVerion@.jar" id="org.yocto.sdk.source" version="@featureVerion@">
+   <feature url="features/org.yocto.sdk.source_@featureVersion@.jar" id="org.yocto.sdk.source" version="@featureVersion@">
       <category name="Yocto Project ADT"/>
    </feature>
-   <feature url="features/org.yocto.bc_@bcfeatureVerion@.jar" id="org.yocto.bc" version="@bcfeatureVerion@">
+   <feature url="features/org.yocto.bc_@bcfeatureVersion@.jar" id="org.yocto.bc" version="@bcfeatureVersion@">
       <category name="Yocto Project Bitbake Commander"/>
    </feature>
    <category-def name="Yocto Project ADT" label="Yocto Project ADT Plug-in"/>
diff --git a/features/org.yocto.sdk.site/site.xml b/features/org.yocto.sdk.site/site.xml
index c2af2bd..d477279 100644
--- a/features/org.yocto.sdk.site/site.xml
+++ b/features/org.yocto.sdk.site/site.xml
@@ -3,11 +3,11 @@
    <description name="Yocto Project update site" url="http://yoctoproject.org/downloads/eclipse-plugin/">
       Yocto Project update site
    </description>
-   <feature url="features/org.yocto.sdk_@genVerion@.jar" id="org.yocto.sdk" version="@genVerion@">
+   <feature url="features/org.yocto.sdk_@genVersion@.jar" id="org.yocto.sdk" version="@genVersion@">
       <category name="Yocto Project ADT"/>
    </feature>
    <category-def name="Yocto Project ADT" label="Yocto Project ADT plug-in"/>
-   <feature url="features/org.yocto.bc_@bcgenVerion@.jar" id="org.yocto.bc" version="@bcgenVerion@">
+   <feature url="features/org.yocto.bc_@bcgenVersion@.jar" id="org.yocto.bc" version="@bcgenVersion@">
       <category name="Yocto Project Bitbake Commander"/>
    </feature>
    <category-def name="Yocto Project Bitbake Commander" label="Yocto Project Bitbake Commander plug-in"/>
-- 
1.7.11.7


