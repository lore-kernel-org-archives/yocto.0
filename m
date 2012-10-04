Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C40EE0049B
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 07:54:22 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id ik5so358936bkc.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 07:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=l+Ad8P2t54M72uuWbWnSLXLc5OXROU0GwE4IW3vFTps=;
	b=YUFsOrS0RiyTNUSmIKJyn8t1u+5lBoTepaH+JeiEMJmW6Ur0ghYmH3MKls5lEt1qsH
	q8ThYp9bR+VBBBbUjTS+ju2kVBTEHLX27GxqHUtNwk5C4kuTjwnK56la+bM+qnhmFp9q
	0jGMfHfGKLUOjTQhXD1oVSgrsHZRjmZgY/X0/hT6PEs28T2v4FREDFfxpOjVsXWlcFkP
	oMjSpJOcPBpYpy1N+HC+KwlRTWuEaANyG9QmOC1TM5bt3+1YxgVBp8uuxCdOohBjds2h
	T+MNHukKX8ezDd1lmkH0bC7KKhj92cQLInULG92SC43zm9Wpmm3T4BeLCfPl3hoovw3z
	5jPA==
Received: by 10.204.156.18 with SMTP id u18mr1739151bkw.131.1349362461031;
	Thu, 04 Oct 2012 07:54:21 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id 9sm5932224bkq.13.2012.10.04.07.54.19
	(version=SSLv3 cipher=OTHER); Thu, 04 Oct 2012 07:54:20 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 16:54:05 +0200
Message-Id: <fef2e3a43cd710dbe5498efa418e2aa057848f3d.1349362044.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1349362044.git.atanas.gegov@bmw-carit.de>
References: <cover.1349362044.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1349362044.git.atanas.gegov@bmw-carit.de>
References: <cover.1349362044.git.atanas.gegov@bmw-carit.de>
Subject: [RFCv2 2/3] feature/sdk: Added user doc plugin
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
X-List-Received-Date: Thu, 04 Oct 2012 14:54:22 -0000

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


