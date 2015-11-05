Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 597C9E007C9; Thu,  5 Nov 2015 08:57:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2088BE0049B
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 08:57:50 -0800 (PST)
Received: by iody8 with SMTP id y8so96034434iod.1
	for <yocto@yoctoproject.org>; Thu, 05 Nov 2015 08:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=j4eXmnl5bSXQQxycJIDqKep9Bu9Who593csWiq0rTyI=;
	b=J26Upn72WpquL4ZeuyPPOvIHHPIDQtGYDmT/4jmJPT5TixEnqVh4jD46J4Z/jZtiID
	IPt1sNnYHGlACmj0JzmHl1m+6bl4HdrYP/QGEddowHySFT9LTQdpgwDKyy4Kf3WgVB5E
	WxEtNO3R61ar/Ez98HKrNOK98caKO1C4lYT1i7gWA5oJNPhDrVjOOfw3TdIZAHc/EPyw
	VEOXHd6z9ASmxMc2jIXSIQpioA7mP8fvIYusWvXOt633CSFiidSYrU+P4MLTPgeStdAQ
	bDPXFHD828iDt72p/MZNUR/GcfmUQHA0vhykZ6bsvH3SfWxvDb/5dGAsByxWCfgZfiXV
	26vQ==
X-Received: by 10.107.151.195 with SMTP id z186mr12872711iod.8.1446742670200; 
	Thu, 05 Nov 2015 08:57:50 -0800 (PST)
Received: from localhost.localdomain (mail.novatech-llc.com. [64.126.95.172])
	by smtp.gmail.com with ESMTPSA id
	ro3sm3169929igb.8.2015.11.05.08.57.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 05 Nov 2015 08:57:49 -0800 (PST)
From: George McCollister <george.mccollister@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Nov 2015 10:56:54 -0600
Message-Id: <1446742614-8298-1-git-send-email-george.mccollister@gmail.com>
X-Mailer: git-send-email 2.4.5
Subject: [meta-selinux][PATCH] selinux-image: Fix RE error getting POL_TYPE
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
X-List-Received-Date: Thu, 05 Nov 2015 16:57:54 -0000

Change [:space:] to [[:space:]]. [:space:] is incorrect and is treated
as a list of characters. Prior to this change having a policy of
'standard' resulted in POL_TYPE being set to 'tandard'.

Change the regular expression to match from the beginning of the line
since correcting the [:space:] error causes the '# SELINUXTYPE= can
take one of these values:' line to match.

Signed-off-by: George McCollister <george.mccollister@gmail.com>
---
 classes/selinux-image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
index 362ca5c..9303610 100644
--- a/classes/selinux-image.bbclass
+++ b/classes/selinux-image.bbclass
@@ -1,5 +1,5 @@
 selinux_set_labels () {
-    POL_TYPE=$(sed -n -e "s&SELINUXTYPE[:space:]*=[:space:]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
+    POL_TYPE=$(sed -n -e "s&^SELINUXTYPE[[:space:]]*=[[:space:]]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
     setfiles -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS} || exit 1;
 }
 
-- 
2.4.5


