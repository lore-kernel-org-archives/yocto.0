Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DFF3E00B93; Tue, 24 Jan 2017 11:09:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45AC2E00B8E
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:09:23 -0800 (PST)
Received: by mail-lf0-f65.google.com with SMTP id h65so18394720lfi.3
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=6VxLt3KsmLmjedY9IxdSHhZyNsMlgI/KOOvt7OyfIUo=;
	b=a7RcoU1TCim8xcu6J8idiSMNTd4r1O3aT94KyyVlX0XdXCXJOOS+R0n9h7sxzOmaDa
	5qqhM+U4ZDbJofYklT+5El7fQYf7j1WiRfYEoVwFTBh7g5mh+9mL5UHwwVFrJ2MP3MnY
	EpVRbPesqaUjIRxf85CqqPxIQi+OdGGSbpmPGJmL4FqIMJaMy/RB9YLbXs1gsrNgf15q
	CKRm9hbbMBuZvBHouKrONZ3inCDFTGoFNau6cwFndn9rxUqizpxJoV2sTW/05hj7yBlH
	/hCHunHzt215MXdSsJ0o0Ytat/DnyP8fkFNdDDmauH960t7MMtMMHFhaJ4v0agexabUn
	VPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6VxLt3KsmLmjedY9IxdSHhZyNsMlgI/KOOvt7OyfIUo=;
	b=ieFm5HOdprROUsQ5SkVVSLvM4yw/fRodSz/CMiRpgg9vvJYgc0TpBiSav+idXn+yc/
	tb9Cc7WcmrQn+v3cyuSczxjMrG62pYV6iccgC73iYo8NQQpWjDT+qEfisyRmZ1zyAJqR
	TeoyF6G+rH+3fpTUSZPmJs3zxXhGjPGwUwNjY4hMMBJjAvHmz3Fdd8+ppaXlj7M6Hmtm
	pUs1Li27SzxqXmE9L2jx6rMW1d8lxSAefLExvoVZHklIfoNUkk0QDkZ0ZSn8j7A5zzpR
	/e/Aixyhtk3re3p1ouCA+Vzm53aifl45DqFPRhk6KTr4kWp61vLS0Yyx58vU1Ab3m0/T
	I0cQ==
X-Gm-Message-State: AIkVDXKqXnVkpdYxrsxUmpbkLKlVE+G7uctioqH0hRfLbCxITJB8KIjptkejd/WcEUeT8A==
X-Received: by 10.25.141.12 with SMTP id p12mr4395123lfd.147.1485284962556;
	Tue, 24 Jan 2017 11:09:22 -0800 (PST)
Received: from debian.lan (78-71-171-99-no154.tbcn.telia.com. [78.71.171.99])
	by smtp.gmail.com with ESMTPSA id
	f8sm7769763lji.2.2017.01.24.11.09.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 24 Jan 2017 11:09:22 -0800 (PST)
From: Mirza Krak <mirza.krak@gmail.com>
X-Google-Original-From: Mirza Krak < mirza.krak@gmail.com >
To: yocto@yoctoproject.org
Date: Tue, 24 Jan 2017 19:10:40 +0100
Message-Id: <1485281440-6280-1-git-send-email-mirza.krak@gmail.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][morty][PATCH] Revert "u-boot: drop patch to include lowlevel_init"
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
X-List-Received-Date: Tue, 24 Jan 2017 19:09:25 -0000

From: Mirza Krak <mirza.krak@gmail.com>

Not applicaple on U-boot 2016.03 which is used in poky/morty.

This reverts commit 031e26954b95d49a66ea4677b9e867d08441f450.

[Issue #43]

Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
---
 .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ++++++++++++++++++++++
 recipes-bsp/u-boot/u-boot_%.bbappend               |  1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch

diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
new file mode 100644
index 0000000..ce0273f
--- /dev/null
+++ b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
@@ -0,0 +1,25 @@
+From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
+From: Paul Barker <paul@paulbarker.me.uk>
+Date: Tue, 29 Nov 2016 19:47:49 +0000
+Subject: [PATCH] Include lowlevel_init.o for rpi2
+
+Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
+Upstream-status: Inappropriate
+    (not needed upstream as rpi_2 board directory is removed in latest
+    version)
+---
+ board/raspberrypi/rpi_2/Makefile | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2/Makefile
+index d82cd21..9f865c5 100644
+--- a/board/raspberrypi/rpi_2/Makefile
++++ b/board/raspberrypi/rpi_2/Makefile
+@@ -5,3 +5,4 @@
+ #
+ 
+ obj-y	:= ../rpi/rpi.o
++obj-y	+= ../rpi/lowlevel_init.o
+-- 
+2.1.4
+
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 0edc8dc..a4545f0 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -3,4 +3,5 @@ RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
 SRC_URI_append_rpi = " \
     file://0001-arm-add-save_boot_params-for-ARM1176.patch \
     file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
+    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
     "
-- 
2.1.4


