Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E75EE013AF
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:44 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 466CE404E2;
	Wed, 10 Oct 2012 11:23:21 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:54:24 +0200
Message-Id: <7da8b333cba6d41a66ff7b78c9078444394e197d.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <62995a82f0e3d03540c076f056ef980864cffa48.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
	<8f13498e19681bb4922e3094fb165b4cf93d87e1.1349444489.git.timo.mueller@bmw-carit.de>
	<590057989cc2c7239f170407ecc57677d89f8427.1349444489.git.timo.mueller@bmw-carit.de>
	<8741c48acce523dc2403fddad90e253542970689.1349444489.git.timo.mueller@bmw-carit.de>
	<6df121f8751652c6872e72d6ef0c6973c11cffcb.1349444489.git.timo.mueller@bmw-carit.de>
	<5e1b21dd499bf7458e62beedc89a3e0e65c8d67c.1349444489.git.timo.mueller@bmw-carit.de>
	<e8162ea92a9cdac2478992e9d72e40cb35ff31fe.1349444489.git.timo.mueller@bmw-carit.de>
	<89991b32b195b9abc0d03302f563dbb995d0fa73.1349444489.git.timo.mueller@bmw-carit.de>
	<f2d1283260c98c90bc9d9069b215f89d5208506d.1349444489.git.timo.mueller@bmw-carit.de>
	<5522560475d0569a160dd86405b54bf8b46e65fc.1349444489.git.timo.mueller@bmw-carit.de>
	<f2b3916d97d7de730b9e88d45e8b921dcbb4f038.1349444489.git.timo.mueller@bmw-carit.de>
	<b1c9e8e275abb7e4740e3bfa9811422af808c00e.1349444489.git.timo.mueller@bmw-carit.de>
	<5fad608ef3f11cba3a7bc3ee0da3294ad7eeaf85.1349444489.git.timo.mueller@bmw-carit.de>
	<42a2e8839164b9f17ce2846e21125cabe6f0896b.1349444489.git.timo.mueller@bmw-carit.de>
	<f14c54079076b48ae05494161c45d82f53facc88.1349444489.git.timo.mueller@bmw-carit.de>
	<3be0d3b2813a6c786d67e8a1a04d159c892d3a30.1349444489.git.timo.mueller@bmw-carit.de>
	<2c7bf9dd12ea207e71031b7d41bf1cc47ad8ccd6.1349444489.git.timo.mueller@bmw-carit.de>
	<1071daedb70a3f451c37eb0038ab5cc9fa90c12a.1349444489.git.timo.mueller@bmw-carit.de>
	<a200d390a430a902046badff1c96697404384c51.1349444489.git.timo.mueller@bmw-carit.de>
	<2e807b75265e7d2895d1d8a4fc9facaf163297ea.1349444489.git.timo.mueller@bmw-carit.de>
	<1f19b8ff550ec6678587af36fbe27af99ea5b186.1349444489.git.timo.mueller@bmw-carit.de>
	<c5ba11c1e9b04b04be4ae1856c7e2e8cedb357d2.1349444489.git.timo.mueller@bmw-carit.de>
	<695af81ff1e9d882533ac6918b136a9d316abf69.1349444489.git.timo.mueller@bmw-carit.de>
	<24ba3060c9581d4f3a32535319e5cde061332826.1349444489.git.timo.mueller@bmw-carit.de>
	<ca4eedcded6f2a5ef36fb677cbe41f6935f9c517.1349444489.git.timo.mueller@bmw-carit.de>
	<361f4f5a3d7ee68fa20dceab69c053abc0fc8a0c.1349444489.git.timo.mueller@bmw-carit.de>
	<222e8c37a31b0ea405774a255b0bd2e4117e34b9.1349444489.git.timo.mueller@bmw-carit.de>
	<24053bac29a28c6774f6f5856fef42dd8e6a369f.1349444489.git.timo.mueller@bmw-carit.de>
	<d3134050f49bc4fe2d665891f7cab2a15b4f484f.1349444489.git.timo.mueller@bmw-carit.de>
	<ed5fa3fbcabc31af488d36713ef3f15a756f20f9.1349444489.git.timo.mueller@bmw-carit.de>
	<62995a82f0e3d03540c076f056ef980864cffa48.1349444489.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 31/35] documentation/yocto-project-qs/yocto-project-qs.xml: Convert fake-title section into articleinfo
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
X-List-Received-Date: Wed, 10 Oct 2012 09:54:44 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The fake title section is converted into a docbook
article.articleinfo. If used with a custom title page this will lead
to the excapt same output. But I will enable the creation of metadata
from this title information.
---
 .../yocto-project-qs/yocto-project-qs.xml          |   20 ++++++++++++++------
 1 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index ca6f65b..390c24c 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -3,12 +3,20 @@
 [<!ENTITY % poky SYSTEM "../poky.ent"> %poky; ] >
 
 <article id='intro'>
-   <imagedata fileref="figures/yocto-project-transp.png" width="6in" depth="1in" align="right" scale="25" />
-
-<section id='fake-title'>
-    <title>The Yocto Project Quick Start</title>
-    <para>Copyright &copy; &COPYRIGHT_YEAR; Linux Foundation</para>
-</section>
+    <articleinfo>
+        <title>The Yocto Project Quick Start</title>
+
+        <copyright>
+            <year>&COPYRIGHT_YEAR;</year>
+            <holder>Linux Foundation</holder>
+        </copyright>
+
+        <abstract>
+            <imagedata fileref="figures/yocto-project-transp.png"
+                        width="6in" depth="1in"
+                        align="right" scale="25" />
+        </abstract>
+    </articleinfo>
 
 <section id='welcome'>
     <title>Welcome!</title>
-- 
1.7.7.6


