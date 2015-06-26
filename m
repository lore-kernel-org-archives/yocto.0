Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5BC1E00A4B; Thu, 25 Jun 2015 21:16:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90613E00A26
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 21:16:48 -0700 (PDT)
Received: by qkbp125 with SMTP id p125so49499832qkb.2
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 21:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=kmnH9xZFSiDaTcYjBJGThk557AqA94/whaTa9Qt7ydI=;
	b=ZDcfOpgXgkhEMciJQ6cv3mL7jyixGC7uy+7yxeJlxoByA3sWQ6kCCNd/Tb4Fn5Vzvk
	XmpMS2pTzyBXOxm6ejsf+QUNZ2NQDl4JmhN6HYOBmIg7B8LRowccaedxdoPIppwv+/qv
	1IZFZTDe2OHt0LTmK5tRtK0SzEsgEh8PvhZnmxWroLxv2GdGSWk+nx1jeAImkJZ8UBqs
	qX87z0BU2iKvoqeNWRYfnGc0+N9x76Ks4VGW+eJJQRrfeOW46lx5F85wwJnULW8Of0IP
	1ZVMOMFv3WnKUGPsrwAWR70KN1twOriYtZRVeuHmKIVetyYwNJx9roBSCSiheUcB9DuA
	q8ZA==
X-Received: by 10.55.31.155 with SMTP id n27mr106582714qkh.5.1435292207614;
	Thu, 25 Jun 2015 21:16:47 -0700 (PDT)
Received: from localhost.localdomain (cpe-66-66-110-14.rochester.res.rr.com.
	[66.66.110.14])
	by mx.google.com with ESMTPSA id 7sm6226349qky.29.2015.06.25.21.16.45
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 25 Jun 2015 21:16:46 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Jun 2015 00:16:28 -0400
Message-Id: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
X-Mailer: git-send-email 2.1.4
Cc: Jon Szymaniak <jon.szymaniak@gmail.com>
Subject: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 04:16:54 -0000

GitHub provides this ability to download repository contents at
a specified changeset as a zip file. This is generally *much* quicker
than fetching the entire git repository.

This resolves some do_fetch() failures I've seen for bcm2835-bootfiles
in which the clone operation takes a very long time, and the connection
eventually hangs and errors out.

Signed-off-by: Jon Szymaniak <jon.szymaniak@gmail.com>
---
 recipes-bsp/common/firmware.inc | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index ad3176a..5830bb0 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,8 +1,10 @@
 RPIFW_SRCREV ?= "e42a747e8d5c4a2fb3e837d0924c7cc39999936a"
 RPIFW_DATE ?= "20150206"
-RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
-RPIFW_S ?= "${WORKDIR}/git"
+RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/${RPIFW_SRCREV}.zip"
+RPIFW_S ?= "${WORKDIR}/firmware-${RPIFW_SRCREV}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
+SRC_URI[md5sum] = "a0cd8bc3a82fa708e26da62350fcf485"
+SRC_URI[sha256sum] = "eebf3bbe2fda533da4b44e713090428e6c14306445543243ae03bca774894840"
 SRCREV = "${RPIFW_SRCREV}"
 PV = "${RPIFW_DATE}"
-- 
2.1.4


