Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59D94E00349; Mon, 10 Aug 2015 00:52:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4B0BE00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 00:52:55 -0700 (PDT)
Received: by ioii16 with SMTP id i16so161805868ioi.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 00:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=idSeavAzGWGle5DybEBIu+EOhR6gSXWWxu4O1bplveY=;
	b=LMdbeyr17AVegKOS4hfp4WYjIKiN6IBINUuiA+N8LYr62bzBNQfHhHd3lEoRGC01cC
	wJlZgknO37cP2ggTk1dJJhGtli0ywNPSMzLtxkY/cwH2FpaxHjsKnH5TcKugAvotCk4i
	XvhPi/8E2GQTIzMp+85LTmQXhrHAnOLyNzKDul1CM5zyhcdXhi7rDcyGDR077BqCLuRz
	58hZpSYyZPcYZf+Z1PiuqROpRF8Ls+CRwnWKToDIxLJ1fR+z8jCjWf8YMz0w97XoufOe
	Cv/h9ecM3Sr9eMa6avzhqJz1LsaWUi4sJGpZtvjzJxVF7AF9on9hSUPmOrrGPRL555mD
	msKg==
X-Received: by 10.107.149.11 with SMTP id x11mr18871742iod.141.1439193174964; 
	Mon, 10 Aug 2015 00:52:54 -0700 (PDT)
Received: from dvm-ch2e-038.sys.comcast.net (a-96-119-89-79.sys.comcast.net.
	[96.119.89.79]) by smtp.gmail.com with ESMTPSA id
	i123sm12686639ioi.13.2015.08.10.00.52.54
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 10 Aug 2015 00:52:54 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Aug 2015 00:52:47 -0700
Message-Id: <1439193167-20618-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH 2/2] README: Add extra iformation on creating/sending patches using git
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
X-List-Received-Date: Mon, 10 Aug 2015 07:52:57 -0000

Current instructions could be improvised to help user in creating
properly formatted patches with some command help on git format-patch
and git send-email

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 README | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/README b/README
index d70f21f..e32de3a 100644
--- a/README
+++ b/README
@@ -232,9 +232,14 @@ above specified mailing list.
 The patches should be compliant with the openembedded patch guidelines:
 http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
 
-To send changes to mailing list use something like:
-    git send-email --to yocto@yoctoproject.org \
-    --subject-prefix='meta-raspberrypi][PATCH'
+
+When creating patches, please use something like:
+
+    git format-patch -s --subject-prefix='meta-raspberrypi][PATCH' origin
+
+When sending patches to mailing list, please use something like:
+
+    git send-email --to yocto@yoctoproject.org <generated patch>
 
 5.B. Redmine
 ============
-- 
2.1.4


