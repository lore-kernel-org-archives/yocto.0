Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F401E011DB
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:44 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 3C97240341;
	Wed, 10 Oct 2012 11:23:19 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:54:08 +0200
Message-Id: <3be0d3b2813a6c786d67e8a1a04d159c892d3a30.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <f14c54079076b48ae05494161c45d82f53facc88.1349444489.git.timo.mueller@bmw-carit.de>
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
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 15/35] documentation/bsp-guide/bsp-guide.xml: Added Title tag
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

The title of the document used to create metadata for output formats
such as eclipse help.
---
 documentation/bsp-guide/bsp-guide.xml |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index 3b7ab6a..8ea48d6 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -16,7 +16,9 @@
             </imageobject>    
         </mediaobject>
 
-        <title></title> 
+        <title>
+            The Yocto Project Board Support Package Developer's Guide
+        </title>
 
         <authorgroup>
             <author>
-- 
1.7.7.6


