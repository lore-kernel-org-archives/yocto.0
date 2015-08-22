Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43823E00B4C; Sat, 22 Aug 2015 01:34:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C25CE00A99
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 01:34:15 -0700 (PDT)
Received: by pdbmi9 with SMTP id mi9so34623757pdb.3
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 01:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=akKFSrfeaZg3zbahuYEiK1r6aPtT+VhlnGTRCYPWiiM=;
	b=l/gsWBS/xVrnDODKNvGqu3854mI/cP28Zyc0fPk63wvtYwxHyWkInulWlvCQvRF7d+
	tU7+dyRvSpHgaaVat7wa/VEyPfY99Zdgd/JXm5KIVaK0gc8zMCVguMRzUXP06CnH7D3S
	1Qlh45nboCj1y7Ozst8YLv0ixCbQRg5BnEqMtYYOJ48Au1pRFVy8K8oO04JpK5vMkr3I
	90WHssQbpyAqSdsCWuDHUHIaCFQXQw7fnF2qLRfoTez4deTrg2MBZGEhqf2bUZlghiuI
	swPb/avgHc1RG9FMBlEazQGJ+TMeznrIPbbayihCogljA1096eO+I6OiO02huhte/pTn
	yiGg==
X-Received: by 10.70.41.100 with SMTP id e4mr25947057pdl.169.1440232454977;
	Sat, 22 Aug 2015 01:34:14 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	nv8sm8397461pdb.92.2015.08.22.01.34.13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 22 Aug 2015 01:34:14 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Aug 2015 18:33:38 +1000
Message-Id: <1440232418-4519-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: remove unrecognized configure option
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
X-List-Received-Date: Sat, 22 Aug 2015 08:34:20 -0000

The --with-egl-window-system=rpi configure option is not recognized
in the current version.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index 39ded59..ab0280e 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -1,3 +1,2 @@
 EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
-                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
-                                    --with-egl-window-system=rpi"
+                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
-- 
2.5.0


