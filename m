Return-Path: <timo@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85F95E006EA
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:03:06 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from localhost (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id B39D31D5607D;
	Wed, 18 Jul 2012 15:03:05 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 18 Jul 2012 15:02:55 +0200
Message-Id: <b8938f0d94423c7b584d9203ea9a8d206020baf8.1342614895.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <5f1a6b30ceb23444478d4e5bf313fb135d256451.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<8bbcd40cc56d25517ad2de1dbc3a9b1d5bfd61e9.1342614895.git.timo.mueller@bmw-carit.de>
	<e4d6d3bb6e59ce31a6c70e99260c36a1ab6a578c.1342614895.git.timo.mueller@bmw-carit.de>
	<5f1a6b30ceb23444478d4e5bf313fb135d256451.1342614895.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 4/8] feature/sdk.doc: Added org.yocto.sdk.doc.user plugin
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
X-List-Received-Date: Wed, 18 Jul 2012 13:03:06 -0000

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


