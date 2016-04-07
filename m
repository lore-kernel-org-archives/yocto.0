Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B7D6E00C1F; Thu,  7 Apr 2016 00:06:08 -0700 (PDT)
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
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF42CE00BEA
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 00:06:04 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id r184so27238108qkc.1
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 00:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=B2qqrZwuyL5oQehfEzELsMMmvvGUw2YSwfTmMi7ZuWc=;
	b=kxKwPhYlrO1b/1CM96mxYqAhEaKQgxZmzl7XkVxEEzuvMzFcr1TEx18LHf9pyMj6Fm
	eotv87PF8+QtaSmAN8J5FNxz5gui0yYtl70O6cpbMJ5TDQArVpN+vlXPg/T+zmdNR5lq
	VNAGtu5DnKnRv/XGWnfyTLYLM7jPecQG7QLcRwhXGItTRc+V7Diz6R4bAOqNTRwNlky1
	w1AcQ4IYj3CiDNmv/z7uZowe8JnyJREVCRDh5G6v7U3ENpNCAGHwiOVPPutuQBaqKMXD
	GR82KYnfjAryWxasI9Om7iaKVQTyg3wC9vmeWQNYTO2rKiqiZ8fNJZ3gc0RRR4k3vhpq
	Iwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=B2qqrZwuyL5oQehfEzELsMMmvvGUw2YSwfTmMi7ZuWc=;
	b=Rqd5JjFLU74SwnjQ3q8T5HPzSLyxqgl7/qJlRpveeLP71yBm/juIqjK0/CGdeigObT
	HbjH/i9KBb8XrLZ8bg6ftWLsm1HOUVXgoVlc289h8Avppu+maPEBcvG5ih6VwR6gkVs/
	6/CjyLmyqztSYhEoVYxElqpaBgrbaLtXWa0KjuHGwL5dQHRVkUWa4SO/pPN75TxQtqBP
	Ba9Qy8V4wP0PtpBLGj2I9ia0aS0QHB9Kpkfe6H4uZSDu83oNY/lhChEqrYZVK3fRKRaK
	0W0kZcfNYHLosL0Krd/V5zyo/RXAuNtbbJKY4jJ0teUh7nyKwI7+NauxvEJPgU2IkpZQ
	c8ug==
X-Gm-Message-State: AD7BkJIG3+g5+ToLFRi2o/y+Sj7ZCA43cDy1uXZPmhnqFabsW4l1/BgxH3sm9wSqmwqXsg==
X-Received: by 10.55.48.80 with SMTP id w77mr1620335qkw.7.1460012764123;
	Thu, 07 Apr 2016 00:06:04 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	c90sm2853391qkj.47.2016.04.07.00.06.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Apr 2016 00:06:03 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Apr 2016 07:05:58 +0000
Message-Id: <1460012758-19090-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-poky][PATCH] poky-tiny: Switch to using kernel 4.4 and busybox for init
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
X-List-Received-Date: Thu, 07 Apr 2016 07:06:08 -0000

busybox based init system is available and used in many
other distributions e.g. buildroot, therefore use that
combination with mdev gives a scalable image and chance
to execute sysvinit scripts as well, adding nothing to
image size.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 0ac46ac..4d30bde 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -37,7 +37,7 @@ TCLIBC = "musl"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "4.1%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "4.4%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
@@ -80,11 +80,13 @@ DISTRO_FEATURES_append_libc-musl = " largefile"
 DISTRO_FEATURES_class-native = "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 DISTRO_FEATURES_class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-# Use tmpdevfs and the busybox runtime services
-VIRTUAL-RUNTIME_dev_manager = ""
-VIRTUAL-RUNTIME_login_manager = ""
-VIRTUAL-RUNTIME_init_manager = "tiny-init"
-VIRTUAL-RUNTIME_keymaps = ""
+# enable mdev/busybox for init
+VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
+VIRTUAL-RUNTIME_login_manager = "busybox"
+VIRTUAL-RUNTIME_init_manager = "busybox"
+VIRTUAL-RUNTIME_initscripts = "initscripts"
+VIRTUAL-RUNTIME_keymaps = "keymaps"
+DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
 
 # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
 # packagegroup-core-base to select modutils-initscripts or not.  Similar with "net" and
-- 
1.9.1


