Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4388FE0143A
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:18 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 716FD40264;
	Fri, 21 Sep 2012 16:14:20 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:08 +0200
Message-Id: <33b736ffaca72740bedf1b1415b11a8f653fa5ba.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <020c6213dadc157b2d47f4d99db197c3ded6e90b.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
	<e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
	<ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
	<020c6213dadc157b2d47f4d99db197c3ded6e90b.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 05/12] feature/sdk: Added org.yocto.sdk.doc feature.
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

The feature is added to the yocto main feature so it will be part of
the build. Also when installing the documentation feature will also be
installed.

To be able to install the documentation feature is has to be available
via an eclipse update site. It is currently not part of the official
yocto update site. Therefor the feature has to be installed manually
until it is part of the yocto update site.
---
 features/org.yocto.sdk/feature.xml |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/features/org.yocto.sdk/feature.xml b/features/org.yocto.sdk/feature.xml
index 785a7be..94ad007 100644
--- a/features/org.yocto.sdk/feature.xml
+++ b/features/org.yocto.sdk/feature.xml
@@ -8,6 +8,7 @@
    
     Contributors:
         Intel - initial API and implementation
+        BMW Car IT GmbH - added yocto documentation feature
  -->
 <feature
       id="org.yocto.sdk"
@@ -34,6 +35,10 @@
    <includes
          id="org.yocto.sdk.source"/>
 
+   <includes
+         id="org.yocto.sdk.doc"
+         version="0.0.0"/>
+
    <requires>
       <import plugin="org.eclipse.core.runtime"/>
       <import plugin="org.eclipse.osgi"/>
-- 
1.7.7.6


