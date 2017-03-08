Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E691E007AA; Wed,  8 Mar 2017 09:32:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70393E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 09:31:59 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id f203so6591078itf.2
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 09:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=iq7pwOURXRuR2tb5zlSjKSGUHh33CNx+i8CQLHSAPuE=;
	b=VpA91Vdw/Jw5fdosxEpS5tnEbreFWso+P1YGJ3r+T2gCPQIBZboNI0icMpijBv4ngD
	Qp5yx8s5UZ53ZMTTLMypPhyvYkpDzyxcwz2Rwa7KORQoRPmqqiVjSYu2FDlEhleuMXhL
	hpzqASgN/VDknx+cYyR6MD5rPHoBye8QF9liZzoIC0+D9UJQ4lhFUZjHP2km8Nlh3roW
	Y9uNi9/JomW7ALPlMj361bdQ2hb/S2zKCB0PgL9xujvhFKBGQ3i5cmOWaMp8BUacwLC/
	9/7vc0WM34Aw7mRwpsgJllzmJXBQZmD0pah1Jg8uFTcB8htEOF5LDc49Z2r3Ipe8V5RX
	qRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=iq7pwOURXRuR2tb5zlSjKSGUHh33CNx+i8CQLHSAPuE=;
	b=hRKKrp0kD1hltZp1l/95EUpvYer1NjSKkBNiI6jiQIgIS3ymM9y6oy5sHVxGalTmZu
	QFiQ73wB/0YI2HR9mXkxGAqpIq7CKoa1IzgFd2at/n5iwk5AepjfSHW83OwPjGiPNrhw
	wLoFV7Ck1VJF++O5N/VYtiU8eMckX6puGsr4xWtEpKp3WKwxViMmwemh89ogUfjFxpv/
	EfmfN20U1V1w63/MNcI9cB+qNMnRAO3GHuEl2JdiUmsRrtGp/j13qRoGUZsYfwSBFEqe
	zq09bq7ckAcbQ/QLJH7uIk0/IWjPEDwW6XHeV9wwBa0cJcELq9tttIn15B1M4Im/DudH
	rxDg==
X-Gm-Message-State: AMke39lIJCDNk0w2+YexzAVZg8SOiUQBxB0mWDF3NGMxs0EIngH0IOIVkf1ct6ISCCML6A==
X-Received: by 10.36.44.12 with SMTP id i12mr7300761iti.92.1488994319237;
	Wed, 08 Mar 2017 09:31:59 -0800 (PST)
Received: from linux-uys3.suse (104-247-246-30.cpe.teksavvy.com.
	[104.247.246.30]) by smtp.gmail.com with ESMTPSA id
	w75sm1785916itc.21.2017.03.08.09.31.58 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 08 Mar 2017 09:31:58 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Mar 2017 12:31:47 -0500
Message-Id: <20170308173147.21841-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Subject: [meta-rockchip][PATCH] u-boot-rockchip: fix for binutils-2.28
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
X-List-Received-Date: Wed, 08 Mar 2017 17:32:02 -0000

openembedded-core updated bintuils from 2.27 to 2.28 which causes u-boot to
fail to compile:

	arm-oe-linux-gnueabi-ld.bfd: u-boot: Not enough room for program headers, try linking with -N

Building with -N does fix the issue, so this patch simply adds that flag to
the build so it succeeds.

This has been build-tested, as well as run-tested on the firefly.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/files/binutils-2.28-ld-fix.patch | 13 +++++++++++++
 recipes-bsp/u-boot/u-boot-rockchip_git.bb           |  5 ++++-
 2 files changed, 17 insertions(+), 1 deletion(-)
 create mode 100644 recipes-bsp/u-boot/files/binutils-2.28-ld-fix.patch

diff --git a/recipes-bsp/u-boot/files/binutils-2.28-ld-fix.patch b/recipes-bsp/u-boot/files/binutils-2.28-ld-fix.patch
new file mode 100644
index 0000000..9dfc463
--- /dev/null
+++ b/recipes-bsp/u-boot/files/binutils-2.28-ld-fix.patch
@@ -0,0 +1,13 @@
+Index: git/arch/arm/config.mk
+===================================================================
+--- git.orig/arch/arm/config.mk
++++ git/arch/arm/config.mk
+@@ -89,7 +89,7 @@ PLATFORM_LIBS := arch/arm/lib/eabi_compa
+ endif
+ 
+ # needed for relocation
+-LDFLAGS_u-boot += -pie
++LDFLAGS_u-boot += -N -pie
+ 
+ #
+ # FIXME: binutils versions < 2.22 have a bug in the assembler where
diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
index 3b4f109..4887d5d 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -9,7 +9,10 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
 COMPATIBLE_MACHINE = "(firefly-rk3288)"
 
-SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
+SRC_URI = " \
+	git://github.com/rockchip-linux/u-boot.git;branch=release; \
+	file://binutils-2.28-ld-fix.patch \
+	"
 SRCREV = "${AUTOREV}"
 S = "${WORKDIR}/git"
 
-- 
2.12.0.rc1.48.g076c053


