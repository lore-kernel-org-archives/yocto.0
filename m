Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E3BE00788; Wed, 16 Jul 2014 01:59:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28DB5E0076A
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:10 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id bs8so5729151wib.3
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=qc4bviyxLs1nXcl98fQS3aKH6amz9d5+xCNovmLgZUI=;
	b=EMDZjq4WAV7yHZkNTIuypBsg9YAgotF/0lx5el0TGILhZoZzPZiCAAZO4fPDMeELw1
	m4LSlBgGRGs+MHbiQcJGhkgsmSMcwCwhqIzf/4JsLYsOnAnXQIbmR0znU+ncbKdyhlzh
	WVz/3tticEUh8dp/A9R++S08T3igzIFk/G5eKadwzrAvDr6GIykA4jrpPdVNhyX8KXIi
	dclGoQLI9cHiyRfU8wsRIdE4YSuPgKiG5j14eqPKqCFG3r6W3cKkqbp7t2GXPqsA8uCN
	pNhZ54bm00mQXCoqYyd+yz2+1YlU3xHamjaXiLTStnHgOtGZmXw0DKCAi9y0XEE1Vf/g
	3dbg==
X-Gm-Message-State: ALoCoQn/LNfFYhLJcxX8E9QxfkRwUMxRxkUNQJt+ZCDb9kBpCratoK9mBp+pGzu3Tw/HCFkHWhSI
X-Received: by 10.194.10.167 with SMTP id j7mr19710667wjb.100.1405501149189;
	Wed, 16 Jul 2014 01:59:09 -0700 (PDT)
Received: from localhost ([2001:610:612:0:beee:7bff:fe9e:ae56])
	by mx.google.com with ESMTPSA id w9sm6551632wif.12.2014.07.16.01.59.07
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Jul 2014 01:59:08 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 16 Jul 2014 10:58:45 +0200
Message-Id: <1405501129-28327-3-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
References: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
Subject: [meta-raspberrypi][for-daisy][PATCH 3/7] linux-raspberrypi: Update kernel to 3.12.21
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
X-List-Received-Date: Wed, 16 Jul 2014 08:59:16 -0000

From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>

Amongst other patches, this release includes a fix to an issue with
gstreamer1.0 and v4l2src blocking

ref: https://bugzilla.gnome.org/show_bug.cgi?id=726521

ref: http://tinyurl.com/mkqooeg

To make use of the optional fix the module parameter gst_v4l2src_is_broken
needs to be set when loading bcm2835-v4l2.ko

With this in place, and with userland and gstreamer1.0-omx patches,
gstreamer1.0 can be used with PiCam via v4l2src instead of raspivid.

(There may still be performance issues to be addressed for v4l2src vs
raspivid pipe & fdsrc).

Change-Id: Ia0ed4e6c8f27df9bb12ae2350526f6314e016d51
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 .../{linux-raspberrypi_3.12.18.bb => linux-raspberrypi_3.12.21.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-kernel/linux/{linux-raspberrypi_3.12.18.bb => linux-raspberrypi_3.12.21.bb} (77%)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
similarity index 77%
rename from recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
rename to recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
index 736be5f..a40b54f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
@@ -1,4 +1,4 @@
-SRCREV = "b09a27249d61475e4423607f7632a5aa6e7b3a53"
+SRCREV = "cb53ea88f75180cc1ba74f7f197c8e3fd4f47cfe"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.9.0


