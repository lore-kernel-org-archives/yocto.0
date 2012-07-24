Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wi0-f196.google.com (mail-wi0-f196.google.com
	[209.85.212.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8A22E00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:20 -0700 (PDT)
Received: by wibhm11 with SMTP id hm11so897391wib.11
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=l+Ad8P2t54M72uuWbWnSLXLc5OXROU0GwE4IW3vFTps=;
	b=nv7X1HwMaTErkcJwWF8cz8gAXN0CGn+sDO+c4gFLzC27F8+7/izByqWKd0fi6JFg9+
	fm3223vQMYDrdYB8s9nSarLpkSsKWP98HJx/b0WRIE1MoEQI8KIx8xAOEzHuzPT5S4Qm
	o8FqOixnmEUS2osucOLvkl66NUupGIVapZQLqWYPGzJ5s9r1bQRpyWGr8xQ/j2hMeh/S
	SQOFK6eA+6kN9AQ0RYHk0F91EB8QVaxWR4w4iiYbI+ACbm8Tq9ufRLHLsXpIlMNCzg0+
	uFNlaRoSD3DW8l75V7hQC0PBkvnl2Ag47mzcHLUjBh7fAe7yXVzmFRR1qXz69sO3DrFE
	zSIA==
Received: by 10.216.195.40 with SMTP id o40mr7309933wen.36.1343145320014;
	Tue, 24 Jul 2012 08:55:20 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id 49sm256418eej.10.2012.07.24.08.55.18
	(version=SSLv3 cipher=OTHER); Tue, 24 Jul 2012 08:55:19 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Jul 2012 17:53:51 +0200
Message-Id: <b8b8ef46215eaa127bc46702e20bc603289b9509.1343140579.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
Subject: [RFC 2/3] feature/sdk: Added user doc plugin
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
X-List-Received-Date: Tue, 24 Jul 2012 15:55:21 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The added doc plugin org.yocto.sdk.ide.doc.user will provide help
contents for this feature (e.g help documents, cheat sheets).
---
 features/org.yocto.sdk/feature.xml |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/features/org.yocto.sdk/feature.xml b/features/org.yocto.sdk/feature.xml
index 785a7be..e82cec2 100644
--- a/features/org.yocto.sdk/feature.xml
+++ b/features/org.yocto.sdk/feature.xml
@@ -8,6 +8,7 @@
    
     Contributors:
         Intel - initial API and implementation
+        BMW Car IT - added user documentation plugin to the feature
  -->
 <feature
       id="org.yocto.sdk"
@@ -93,4 +94,11 @@
          version="0.0.0"
          unpack="false"/>
 
+   <plugin
+         id="org.yocto.sdk.ide.doc.user"
+         download-size="0"
+         install-size="0"
+         version="0.0.0"
+         unpack="false"/>
+
 </feature>
-- 
1.7.5.4


