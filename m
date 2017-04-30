Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2986DE00A5C; Sat, 29 Apr 2017 19:24:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1143EE00929
	for <yocto@yoctoproject.org>; Sat, 29 Apr 2017 19:24:00 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id k87so16421347ioi.0
	for <yocto@yoctoproject.org>; Sat, 29 Apr 2017 19:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=wjOC+nm54YFcNUnKKcsKDp5X5QNgymDD61v77XY2XTs=;
	b=kF7HFpgDkzd5Zm+cXzaidI1e3dkQxuhZACgRwudp6TfGzSmLNyDWil/99mNnpraVbC
	UDeP/C0kMFjeCMhpSbL0vbMBTQgyE9kGYyxhJxQzaRdsuS2RlxYuEZzLwSbMRFIv2uIQ
	lyLpD17CBbei0OckQ+zaQjg5iIo1vPKFgkywv68uk6Hv+wBgmvU0b/6tMyshbERuk1TO
	9RHE4uIE7+muEBHpnHViQjM8E404yd0fDGjsLhSbqg2uFmDuqPQ9U8ZpZXZOHyKAHplR
	xyRcM5MpAg6q8c+XlpVL9XTi9fE9WysQsA+HEnjwlIXETPIRSeyFu5c21RoBZlgdkO77
	H9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=wjOC+nm54YFcNUnKKcsKDp5X5QNgymDD61v77XY2XTs=;
	b=KNnAQfvRN41elDp9rPk82/I0d2HaaA88cO/M8dzQNjXZTO91s5mC/DrWslE6LP3eYs
	6IirgcU1C8CV/YK9FOq36Y+QSWJClJwRi1lECo0KwPaNZH/sz2ON1+OdlatlZJ/jUPX0
	jZgBM8m7XiF+KGb310mBoKWRg1iF2zGTYvjV65OZ1Dm2LvQN7zQpxay88HsVY880e8UO
	GenII1oNnLq8d3+2AFE6XLU74vubX6w6kl3Stzd3gbilU/G4G0uVcUYRMOtt/Yazhi4q
	T9giaTBNXTHvppfV1gOZsXc9BEKS5o70B17U1yEGz3PkmPiAqNUsr1GpGMglnZYJ0o0n
	xoyw==
X-Gm-Message-State: AN3rC/5izkV/ytmhDuvY+H9RpB6Ipi5xUoSFRRQ4CzWMWJuVSvUvS/yk
	P+2xV854NSWW+DtziCE=
X-Received: by 10.107.188.193 with SMTP id m184mr18477138iof.148.1493519040014;
	Sat, 29 Apr 2017 19:24:00 -0700 (PDT)
Received: from linux-uys3.suse ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id
	h42sm4548276ioi.16.2017.04.29.19.23.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 29 Apr 2017 19:23:58 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Date: Sat, 29 Apr 2017 22:23:45 -0400
Message-Id: <20170430022345.23508-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH] README: remove irrelevant information
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
X-List-Received-Date: Sun, 30 Apr 2017 02:24:04 -0000

As of openembedded-core commit 2b3ae58f5eaecc8474761c543ff5347aa0e3c4c8 hardfp
is enabled by default.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/README b/README
index b2e89f3..7f4a499 100644
--- a/README
+++ b/README
@@ -49,7 +49,6 @@ Table of Contents
   I. Configure yocto/oe environment
  II. Building a second level bootloader based on kexec
 III. Booting your device
- IV. Performance
 
 I. Configure yocto/oe environment
 ========================================
@@ -127,18 +126,3 @@ linux-next from tftp='tftp://192.168.0.5/zImage dtb=tftp://192.168.0.5/<MACHINE>
 Then, plug your SDCARD into your Rockchip device and power on the board. If
 everything worked fine, Petitboot should be started automatically and list all 
 entries found in the configuration file.
-
-IV. Performance
-===============
-
-By default a BSP layer should not be tuning a build, this is a DISTRO-level
-decision. As such the default machine settings are meant to be the lowest
-common denominator in order to maximize generality. If you are interested in
-tweaking your build to maximize performance you can either use a DISTRO that
-has these same goals, or you can add settings in your configuration files
-(e.g. local.conf) as follows:
-
-	for rk3288:
-		DEFAULTTUNE = "cortexa17hf-neon-vfpv4"
-	for rk3066:
-		DEFAULTTUNE = "cortexa9-neon"
-- 
2.12.0.rc1.48.g076c053


