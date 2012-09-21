Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B549BE0144C
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:17 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 44CFB40206;
	Fri, 21 Sep 2012 16:14:20 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:07 +0200
Message-Id: <020c6213dadc157b2d47f4d99db197c3ded6e90b.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
	<e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
	<ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 04/12] feature/sdk.doc: Added org.yocto.sdk.doc.user plugin
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:17 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The added plugin will contain the official documentation of the yocto
project.
---
 features/org.yocto.sdk.doc/feature.xml |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/features/org.yocto.sdk.doc/feature.xml b/features/org.yocto.sdk.doc/feature.xml
index f4b7605..1300f55 100644
--- a/features/org.yocto.sdk.doc/feature.xml
+++ b/features/org.yocto.sdk.doc/feature.xml
@@ -29,4 +29,12 @@
       <import plugin="org.eclipse.ui.cheatsheets"/>
       <import plugin="org.eclipse.help"/>
    </requires>
+
+   <plugin
+         id="org.yocto.sdk.doc.user"
+         download-size="0"
+         install-size="0"
+         version="0.0.0"
+         unpack="false"/>
+
 </feature>
-- 
1.7.7.6


