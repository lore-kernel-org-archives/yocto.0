Return-Path: <drew.moseley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E13F6E00B3D; Tue,  6 Jun 2017 15:15:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (drew.moseley[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B190AE00A94
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 15:15:25 -0700 (PDT)
Received: by mail-yw0-f194.google.com with SMTP id y64so10398388ywe.0
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 15:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=AXOHb998M3RtNL0VAPiCmQs2YNEtW1jkR+6HUQ2V6l4=;
	b=GNlSCCASL1U/BtZRf5xrbnDC/q+2mhleBWhDCsamDFEoqPLxSN97Mx9JmbBwUpH7gh
	1axvux4nW6gmSym2b3egyjJBZUsgWzzRnM5L2zJ+IMmFL31oZ4ppWoFd64uSwE0+PeXr
	rAuXiH0ZJ+TnH7AyvPLZUKBMU+T6X3VJyAm4WZSoh4jiXEBgdcoBsVmp9omBSBRhiNBv
	QX9xinRTrPdMDK1VZUyZEV4Pe0sh1GNx04F/wAEXXxl5SWKqtaSixZrSHe0k+7403Sdm
	CKIA1FU6ULM1kH8Hve4H+6l6pgjwPjkoy0uA6V3ai9LmGibU5VdsuMZg7C7y54ZuyssP
	rz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=AXOHb998M3RtNL0VAPiCmQs2YNEtW1jkR+6HUQ2V6l4=;
	b=pHrgeZfYFOKow2ofaJStWUgvTWNJ7XmL4yEXoT+U9B3kAhIhrxify1tEsuSsvdqi4g
	WlE7w5HO0Xp/Q1+FUp5Gr8eKUEm2X0Qo8aG8sN/UT62Ydi/280L8lo2HYzxcpOh5fUcu
	+YHBc0EMMKpnORRUjpxexZ8JkTrlQxSvEagXuQ9a85/7TPw2ExgNgJhEN5QUjla/6S4/
	dIHJ4z6SZSzPazxzhfgfFN9yFOmKO/xnYZ8o10kYMl4tOrljzoP600cTWhiOEJJNYHAl
	EPEyQBvL7In4eqy0ivK/vA6ulSKAcOr75W446JFMpf1af98sXT+4A5H0tdWA7zNlZmpY
	y9eA==
X-Gm-Message-State: AODbwcAorpcsaUWVw0TRQYBVbB5k8m7C8kdBHAV5bE5+hGdZH7HPhStm
	TkDNsawoeIZk3DFaMEE=
X-Received: by 10.13.203.137 with SMTP id n131mr4409396ywd.72.1496787324098;
	Tue, 06 Jun 2017 15:15:24 -0700 (PDT)
Received: from tobago.home.moseleynet.net (65-35-172-144.res.bhn.net.
	[65.35.172.144]) by smtp.googlemail.com with ESMTPSA id
	b78sm17315054ywh.73.2017.06.06.15.15.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Jun 2017 15:15:23 -0700 (PDT)
From: drew.moseley@gmail.com
X-Google-Original-From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Tue,  6 Jun 2017 18:13:17 -0400
Message-Id: <1496787197-8964-1-git-send-email-drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Sat, 10 Jun 2017 06:58:52 -0700
Subject: [meta-chip][PATCH] chip: Unclude kernel-image and kernel-devicetree in all images.
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
X-List-Received-Date: Tue, 06 Jun 2017 22:15:29 -0000

From: Drew Moseley <drew.moseley@mender.io>

Add the kernel-image and kernel-devicetree packages to
MACHINE_ESSENTIAL_EXTRA_RDEPENDS to ensure they are deployed
into the UBI image since that is where UBoot expects to find
it.

Signed-off-by: Drew Moseley <drew.moseley@mender.io>
---
 conf/machine/chip.conf                 | 3 ++-
 recipes-core/images/chip-hwup-image.bb | 6 ------
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
index 0a1f4d4..7624de6 100644
--- a/conf/machine/chip.conf
+++ b/conf/machine/chip.conf
@@ -2,7 +2,8 @@
 #@NAME: C.H.I.P. board
 #@DESCRIPTION: Machine configuration for C.H.I.P. board
 
-MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = " kernel-image kernel-devicetree"
 
 EXTRA_IMAGEDEPENDS += "u-boot"
 
diff --git a/recipes-core/images/chip-hwup-image.bb b/recipes-core/images/chip-hwup-image.bb
index 717669c..9742628 100644
--- a/recipes-core/images/chip-hwup-image.bb
+++ b/recipes-core/images/chip-hwup-image.bb
@@ -1,8 +1,2 @@
 # Base this image on core-image-minimal
 include recipes-core/images/core-image-minimal.bb
-
-IMAGE_INSTALL += " \
-    kernel-image \
-    kernel-modules \
-    kernel-devicetree \
-    "
-- 
2.7.4


