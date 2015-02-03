Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECF29E008CC; Mon,  2 Feb 2015 19:10:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 719B1E008A6
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 19:09:56 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id kx10so90203476pab.11
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 19:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=AUtG0Qusxe+vvzt1f2oOeshfRciccvSnNX5v4Z1nHhs=;
	b=vFOBTkPeFoRgaQhn8jgjQvoEW/lnNNHFsYlb8W7GHNTJYoQ/b+p/hKFE0VLGqHXHCz
	ijvhvAgVS6A5plhBAAzAlSRoGJJ4fLq4dL6aTr+hEz4EEunEgwzb/JEj9xWLxJEwnttT
	dSmoB/O8j4j2hQg2HhQG50oUi3aRYM/LuvtmXhGh/BpTaQcsy2+ZAiZjofETYRQSr+AA
	fCvikqA8TNlqIhUTfsa78lKEfMyQ0rLC1zaQGshIYGCSFpyihBJ8BOWoSXPBorZwT7WQ
	v/xULgOu35TwGC4qI+vj5HEUCdtoUjYvZ5k/+GmzgpA8C1QKwGrxC32oviO3AJ1mPIkm
	UDXQ==
X-Received: by 10.68.245.169 with SMTP id xp9mr2788824pbc.46.1422932995995;
	Mon, 02 Feb 2015 19:09:55 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id ph7sm450214pbb.6.2015.02.02.19.09.53
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Feb 2015 19:09:54 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Feb 2015 19:09:48 -0800
Message-Id: <1422932988-18592-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] README: update layer information
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Feb 2015 03:10:08 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/README b/README
index 71378d9..ef80f2b 100644
--- a/README
+++ b/README
@@ -24,6 +24,11 @@ This layer depends on:
   revision: HEAD
   prio: default
 
+  URI: git://git.openembedded.org/meta-openembedded/meta-networking
+  branch: master
+  revision: HEAD
+  prio: default
+
 Adding the security layer to your build
 ========================================
 
@@ -39,6 +44,8 @@ other layers needed. e.g.:
     /path/to/oe-core/meta \
     /path/to/meta-openembedded/meta-oe \
     /path/to/meta-openembedded/meta-perl \
+    /path/to/meta-openembedded/meta-python \
+    /path/to/meta-openembedded/meta-networking \
     /path/to/layer/meta-security \
 
 Contents and Help
-- 
1.9.1


