Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB7DFE0071C; Wed,  2 Nov 2016 02:52:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E8E2E0070F
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 02:52:10 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id p190so256416172wmp.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 02:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=qXAYFCjf94NoBA+jJyRhVRNA/ncfsPzBPD1pTNK4dpA=;
	b=EzrpfeVYE+NlNAXb53DUCsV0ql5aCEl9rvrCErx8HZmNtYuAnn2P1Dx+8freP5BSGI
	zsMUwwoSZ60+zyJedZpWjJmvawzpB3UlI21HiDonokRp7eaehCiM95Be6C6laXqufSVI
	eSdQFV2b2cf86BGGbizkiCHhMuGq4lsXu6f8DlFfMdkU6/DJQVizzkbvJMJxse5CcUu1
	jILwxFkU7F6guBJhf8V/U9OWSJqnupTDHYpqe7Zm5r1V3OcbXjJKpaNgRoliphQUBs7r
	WcK5uySz3HBe/XrvPI+BCUW1nKUygBB13u1ahMcMDSxXyhM4MI4TEOIqA6UsGCWBeFT2
	5Uuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=qXAYFCjf94NoBA+jJyRhVRNA/ncfsPzBPD1pTNK4dpA=;
	b=kIuovx5AaTa5/lGjW/am7cSEwqpxZokV/E0dkDuwRZR0SSWLL3+h4pxiUS10gRLLR7
	lYyhZRbMCTfwrPQpy4TDVVBIfw8aUk3L6IihtCVHC+J+28ULlmSwl/wDbIEF0EDtOHc8
	fcoJhmi8ccxevw7F9414wERI3SmQc2VYyTPZieggtEIKaXKpVcjtg8VWAHhmmh4j+Rlo
	Ii7FNWoBlN0u5tbmkW8ul3xqD4Dwa2ncEX01UFE/EaT/fUDG2jXDazhRQ3cCnBce/rae
	vz+VnObtXzEa60vwF5HBEwkkTU5b4X4/kJQAOJLBka0GiVyfGJHaScqL/fwV3b8Fx/F9
	rvJQ==
X-Gm-Message-State: ABUngvfpjfWyMH4romJWAUtGPFcucAB5RHa5tRcVo8VN0iPc4+YfT/KgZZcQ2rP8C2b95Q==
X-Received: by 10.28.196.79 with SMTP id u76mr2394947wmf.25.1478080329406;
	Wed, 02 Nov 2016 02:52:09 -0700 (PDT)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	us3sm1688719wjb.32.2016.11.02.02.52.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Nov 2016 02:52:09 -0700 (PDT)
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Wed,  2 Nov 2016 10:52:01 +0100
Message-Id: <1478080321-19857-2-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1478080321-19857-1-git-send-email-piotr.lewicki@elfin.de>
References: <1478080321-19857-1-git-send-email-piotr.lewicki@elfin.de>
Subject: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi: remove not needed bundle_initramfs_append()
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
X-List-Received-Date: Wed, 02 Nov 2016 09:52:11 -0000

---
 recipes-kernel/linux/linux-raspberrypi.inc | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 6184402..98229d9 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -54,16 +54,3 @@ do_deploy_append() {
     fi
     echo "${CMDLINE}${PITFT_PARAMS}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
 }
-
-do_bundle_initramfs_append() {
-    if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" = x1 ]; then
-        if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
-            if test -n "${KERNEL_DEVICETREE}"; then
-                # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-                for type in ${KERNEL_IMAGETYPES} ; do
-                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
-                done
-            fi
-        fi
-    fi
-}
-- 
2.7.4


