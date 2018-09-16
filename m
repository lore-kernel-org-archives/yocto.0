Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F792E00ABE; Sun, 16 Sep 2018 08:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B074E00B5C
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:32 -0700 (PDT)
Received: by mail-pf1-f169.google.com with SMTP id i26-v6so6393120pfo.12
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=6LIcBcKii/qndHqitVE9LRQQ2URY8sOEBhhtManE6QQ=;
	b=YXZMbsS9wB4JBOcMRNfWdX67aCDKuoCdKY1aJbbYjGPQjlWJHBSoxms1Ww/iXgt8QA
	ZF8vKC42c4Rs24kH2ZEZ11+3Fg2C788RMi9Dy1FOLjtw1cLLBBAANX3J5ZMuGW8bPmCM
	VrO1oBZt4SIpuTVWYIexacTWeEed/wc2q9gQFREBPQkmQRisHPan8vyfhNf3NoHZ1aw9
	FMHxUxwmjnxTbtwketPzUu/0U9nAVyFvUTQneYtkotRQK65L1jzYBwbQ2oEbEJz7zYu6
	0wFjvoDiFRJGSEmq1ZHVk1PoeOguhoi0IXOJ4uFdwcm/S47DIBKSADKOg/9iAT4U9kOs
	O1Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=6LIcBcKii/qndHqitVE9LRQQ2URY8sOEBhhtManE6QQ=;
	b=OEamzmYnhiWTGKPnfDnxS6iWcfARTJRGmWfrJQNW/QFmUxcVdz50RMCHDnSyBofi4O
	crYebYYZtTIoqQJY1g+wKwJdCq1G/LF4sEyIrOknZ7EAZUzOARTloCBe5tS9N0kNra0x
	CVSrL3OB1tYyVLUu9H5BOYUL3piv10Vjcu23wYD9l1Evu8yAblb7gSWPGjCK8HqYRygu
	EJ7ZYjWTK3pIWlfgbjY0EsL9aacUoMqkIYTgrlQrFg+B7bZ0pwlrZvD5EbcRpzQuRKpX
	6sgGFERD/8+kGsFKhusWCcRp+E3vUnqS7nGbUEmkMElTmgdgndAfwPOPpJmwukrX8Kqn
	R4jg==
X-Gm-Message-State: APzg51BhDfQaWYLkF2difgWLQK+O9lYCeoaieKGo5MtEz1IU8EEVa6Vh
	rfaNYlvGdtGvlbKBWPl/F8Aj8qTA
X-Google-Smtp-Source: ANB0Vdb7CJkGHq4Q2SItrHHyLkqcNmWC2VG0yTFnnd2icefXteYNUPqb1HaQ1alAbAtEPpLjq5UPJA==
X-Received: by 2002:a63:6c89:: with SMTP id
	h131-v6mr19961155pgc.237.1537113451754; 
	Sun, 16 Sep 2018 08:57:31 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.30
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:05 -0700
Message-Id: <20180916155719.9911-11-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 11/25] tpm2-abrmd: update to 2.0.1
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:34 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2-abrmd_1.2.0.bb => tpm2-abrmd_2.0.1.bb}          | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2-abrmd/{tpm2-abrmd_1.2.0.bb => tpm2-abrmd_2.0.1.bb} (87%)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.2.0.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
similarity index 87%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.2.0.bb
rename to meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
index a5d6843..31e90f8 100644
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.2.0.bb
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
@@ -9,14 +9,15 @@ SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 
-DEPENDS += "autoconf-archive dbus glib-2.0 pkgconfig tpm2.0-tss glib-2.0-native"
+DEPENDS += "autoconf-archive dbus glib-2.0 pkgconfig tpm2.0-tss glib-2.0-native \
+            libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
 
 SRC_URI = "\
     git://github.com/01org/tpm2-abrmd.git \
     file://tpm2-abrmd-init.sh \
     file://tpm2-abrmd.default \
 "
-SRCREV = "59ce1008e5fa3bd5a143437b0f7390851fd25bd8"
+SRCREV = "80f8966b90d6394ad568e362d2936b333c2822bb"
 
 S = "${WORKDIR}/git"
 
@@ -37,7 +38,6 @@ PACKAGECONFIG ?="udev"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
 
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --with-systemdsystemunitdir=no"
-PACKAGECONFIG[udev] = "--with-udevrulesdir=${sysconfdir}/udev/rules.d, --without-udevrulesdir"
 
 do_install_append() {
     install -d "${D}${sysconfdir}/init.d"
@@ -49,6 +49,6 @@ do_install_append() {
 
 FILES_${PN} += "${libdir}/systemd/system-preset"
 
-RDEPENDS_${PN} += "libgcc dbus-glib libtss2 libtctidevice libtctisocket"
+RDEPENDS_${PN} += "tpm2.0-tss"
 
 BBCLASSEXTEND = "native"
-- 
2.17.1


