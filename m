Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F41AE00C28; Tue,  1 Mar 2016 05:54:21 -0800 (PST)
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
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED22E00C11
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:54:15 -0800 (PST)
Received: by mail-pf0-f173.google.com with SMTP id w128so68536313pfb.2
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=TfNrjcPe/F7BmHKbVbjvGCgu8feoRhnP8NiF7n7Thtk=;
	b=V0Okfa1xh9hL1fYfJLK1JAmpP4o43HfZUj4mQocE/pDizIDjU2+tsBZ7bmUbcIrn31
	IJup6Thq13X/68OsxMbnexwUFwmLHR8UyhkdFzifa6cJQoQGHhN8Y9Jj3V6bNhbxesnm
	X+yg5v+DsrklkMs8jXDRBkW32DCX4bljNEitBYm7GdAjf2+YObEOQqdepnmvqjcPHsk1
	5vgx7ATZJRNggPc9I22R3a4i3dnVPpB9PxYHTWalF/eLK/v7F95EAz9ok6A0RVa0vpbM
	50bm5W9gL3iaBlTEDGurW0GNpT9+MywTSBPZdc0z68SROWVhWN4K9WKaiSVpF6MfKxer
	psIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=TfNrjcPe/F7BmHKbVbjvGCgu8feoRhnP8NiF7n7Thtk=;
	b=h5GMyTu6sdCwoz95+ndryhDLFH9yBUdJ25SVpD4qhghzug5kk31QZMfEQ7VXa16kuD
	cKqQHuBnBVJvheRSaUgXwiluq1L62gYx93uGA5huJHCimQ58KQ/HmAN0shfBJtJCU2IS
	umZVsHwJeMjDk5+sDVQQ+HdqZrHkA9ziAH4yg2g5mh416pFb/E6S+K9wsm7hFx+ayqe9
	p6+zjcySNe8BlSP1wA9Ol4ada9MTl+YSCYaxlHW/bW5vF+pIN7ve6aHq7KzKkT6nUf8b
	n0VgD0jmiJxh7pcRF37R9/dvAv7d8oWEa2wuCAze27jwFHUuauNF/rMB30C4sBS2vo0h
	h+fQ==
X-Gm-Message-State: AD7BkJIua/MqalF8N0ziURAYZcMcb7HqGzRLCMad50go8UI5Jj+6o0NELliFqVodphl31A==
X-Received: by 10.98.64.4 with SMTP id n4mr30191169pfa.58.1456840454871;
	Tue, 01 Mar 2016 05:54:14 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	n68sm45873790pfj.46.2016.03.01.05.54.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:54:13 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:54:36 +1100
Message-Id: <1456840476-14244-2-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
In-Reply-To: <1456840476-14244-1-git-send-email-net147@gmail.com>
References: <1456840476-14244-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH v2 2/2] u-boot-rpi: update path to imagetool-uncompressed.py
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
X-List-Received-Date: Tue, 01 Mar 2016 13:54:21 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/u-boot/u-boot-rpi_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
index 8bffaa3..3e8d377 100644
--- a/recipes-bsp/u-boot/u-boot-rpi_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rpi_git.bb
@@ -24,6 +24,6 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 do_compile_append() {
     # Create kernel.img from uboot.bin and name it u-boot.img
-    ${STAGING_LIBEXECDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
+    ${STAGING_BINDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
     mv kernel.img u-boot.img
 }
-- 
2.7.1


