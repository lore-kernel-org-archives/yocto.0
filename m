Return-Path: <timo@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7E3E013A6
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:03:08 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from localhost (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 6B0ED1D5607D;
	Wed, 18 Jul 2012 15:03:07 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 18 Jul 2012 15:02:57 +0200
Message-Id: <8b1c614175c4587bfe46b8f0ac8ca4a9fba4a86c.1342614895.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <8393b7e36cf0054754e5de7af7e3a1606fe8c363.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<8bbcd40cc56d25517ad2de1dbc3a9b1d5bfd61e9.1342614895.git.timo.mueller@bmw-carit.de>
	<e4d6d3bb6e59ce31a6c70e99260c36a1ab6a578c.1342614895.git.timo.mueller@bmw-carit.de>
	<5f1a6b30ceb23444478d4e5bf313fb135d256451.1342614895.git.timo.mueller@bmw-carit.de>
	<b8938f0d94423c7b584d9203ea9a8d206020baf8.1342614895.git.timo.mueller@bmw-carit.de>
	<8393b7e36cf0054754e5de7af7e3a1606fe8c363.1342614895.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 6/8] feature/sdk: Added org.yocto.sdk.doc feature.
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
X-List-Received-Date: Wed, 18 Jul 2012 13:03:08 -0000

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
index 0fce8db..7ee6575 100644
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


