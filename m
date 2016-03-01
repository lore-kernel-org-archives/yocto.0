Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07331E00BEF; Tue,  1 Mar 2016 05:35:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 694C7E00B9C
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:35:54 -0800 (PST)
Received: by mail-pf0-f181.google.com with SMTP id 4so34677372pfd.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=5xJm8y+HB3f9Jsa7HcvN6JkNecLOL+so3dbnmzmS18M=;
	b=PZj5+7ylg2RL57W601r95N3P/o0dehjrvf6vYcVuHh2bKQ6m3zxuAeeAwylgitiOMX
	pxq1vy/MLPjcud/Jeuzhko0TyC4WTb9JtE+PF81GKghi5A2brVJ80bhTkrMF2aVmb/jO
	GrBx3mHUwrMn/6aCm6Tm+96h/9fUOXYWrHZQU1mCcaeJ/IieiQgcAWLgJ+BG0GtYuzha
	+KylE7oKQr+Vu2nG8wKMrLbmu3kKgRcOObMiV2d9P9lIswl+Ye9edxc9SEigwp9Z+uAh
	JeDPPP9Adl6ynGKZaW6uHyx8xQMaY9iv0IfsL1XFBDe+HtenqGyq7bp81J5UodsMAWIg
	zDXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=5xJm8y+HB3f9Jsa7HcvN6JkNecLOL+so3dbnmzmS18M=;
	b=QsJhhvWfTGN3zDAG1NMjB6fa/kBi3l0OgqSJVALvA77Uo4mXiJLa6F4a5iamlt+WBm
	bchKPLTHCPepchLv+QApiTQs1z0RO2KTQ9Bjq+44k7aWrxnI0R6XfvrWheuSvLHn6RAF
	VKhohT1gnd1XA9EwyOTEdehNkRsYQtuXGjqBRXeVXp8ZYHWYso5/20ndDNZPb/dYVGS9
	bY5Z8U9w91AFVgXZIpABgaGD+lyl3/L+mWO1Dii3658dn4sbtbM6DdMoyUsXo1duUdxH
	ADvKjOWRKjDgIZBISqTGpfSGsjhMqmUU1b7qVYb/vZLUMCVwiGBqMlrT8NlPigpuZqAp
	upLA==
X-Gm-Message-State: AD7BkJKs6UVr8W02DLFZBqbmMhskldV6LlYjuzTgha6d45DeVeGJqXw27gJ5qyfefv3kwg==
X-Received: by 10.98.79.203 with SMTP id f72mr5471723pfj.102.1456839354171;
	Tue, 01 Mar 2016 05:35:54 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	ko9sm45859699pab.37.2016.03.01.05.35.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:35:52 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:35:58 +1100
Message-Id: <1456839359-12501-2-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
In-Reply-To: <1456839359-12501-1-git-send-email-net147@gmail.com>
References: <1456839359-12501-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] linux-raspberrypi: update path to mkknlimg
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
X-List-Received-Date: Tue, 01 Mar 2016 13:35:58 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 8c7c46c..8abe7f2 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
     if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
         if test -n "${KERNEL_DEVICETREE}"; then
             # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
+            ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
         fi
     fi
 }
-- 
2.7.1


