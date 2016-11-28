Return-Path: <meerkoetter@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90596E00C2E; Mon, 28 Nov 2016 11:37:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (meerkoetter[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E17E00BFF
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 11:37:52 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id a20so20834125wme.2
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 11:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=e6viXfs8qiBy1eCytUjNKvZIdU38y7DUzvJnJNIVPWk=;
	b=XU6a/zlKAOwZyBLlsgKkqDjwMvEwkSaINfpjeMiF/ZV/Swe2RhGwlW+CnEl+yolIrv
	kD6XSSOQPhYa1EEB59pfk/ApSF9GDx29QVSOdE6JjPVujme134H6e47VPabTx3hQtCu+
	QOdGiBQsmQyDdQLOUNrnjnJiiHlWkOLX4IFNWuHpv+SBRabicfN8tXij6WCIYUPSTsXb
	p/VU5ndNaKgO+st2vLOH4zi7XFpPV0sUYde4W3/8q9PQ5twpLlT7Pqj2XBYRifUpTqH2
	urNzYLyBK9WbzvmcjTWLnWf9LQjMYfbxHF0pOJ1MiYOfVEezaQIFG/9Hgj4RND79Fene
	EZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=e6viXfs8qiBy1eCytUjNKvZIdU38y7DUzvJnJNIVPWk=;
	b=jckTfF7v9kSeCuTg+mJZChcot2aleMTLJtz2XQEzAbUlLsP0qZd3jqdGGK8V1e9obA
	/93aaoSYSqO0O/YFkvjbXg1HEPNDfI2By4W9iIDFulrjUE3q6FshjT6gomj76E0x/lJF
	FONRZ6ZdNzeNKRKWE+1rAX/rBmpmR0ZMrGokiFN3EFJVtQdG69I3dlLF88Hb+sn4xuTd
	yIuBMIxz27ZSl+PlB9S0/AvcbUH1zNteQBOxHy8l80QMG0mpa9KavLGyZswpJy/aBWPL
	niW3olAJ2t/OmOHASWcPdpx7mLU//6z9bWKBnTuBX6L0BraxJg1kvmR9FxFTcTFCVoxO
	9pmA==
X-Gm-Message-State: AKaTC017/zeXSRzX4u3uuNA2irUALv8ijgBW2iIomsUm3S4t0xOIqrfXfYYYHG2h99NTdg==
X-Received: by 10.28.232.85 with SMTP id f82mr19867830wmh.127.1480361871243;
	Mon, 28 Nov 2016 11:37:51 -0800 (PST)
Received: from naos.fritz.box
	(p20030071EF27C90038C08788B208AAEC.dip0.t-ipconnect.de.
	[2003:71:ef27:c900:38c0:8788:b208:aaec])
	by smtp.gmail.com with ESMTPSA id 81sm30447464wmw.7.2016.11.28.11.37.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Nov 2016 11:37:50 -0800 (PST)
From: Frank Meerkoetter <meerkoetter@googlemail.com>
X-Google-Original-From: Frank Meerkoetter <frank@meerkoetter.org>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 20:37:45 +0100
Message-Id: <1480361865-9547-1-git-send-email-frank@meerkoetter.org>
X-Mailer: git-send-email 2.7.4
Cc: Frank Meerkoetter <frank@meerkoetter.org>
Subject: [meta-raspberrypi][PATCH] Do not rely on DISTRO_TYPE to enable/disable kernel debug
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
X-List-Received-Date: Mon, 28 Nov 2016 19:37:56 -0000

DISTRO_TYPE doesn't seem to be set anywhere in OE/poky. This causes
CMDLINE_DEBUG to default to "debug" which is very noisy. This is
especially true when building a systemd based system, as systemd
also looks at the kernel commandline to set the debug level.
Such a system is nearly unuseable from the serial console due
to the amount of data logged by systemd.
---
 recipes-kernel/linux/linux-rpi.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 95a9530..53383b0 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -13,9 +13,9 @@ ARM_KEEP_OABI ?= "1"
 # Quirk for udev greater or equal 141
 UDEV_GE_141 ?= "1"
 
-# Set the verbosity of kernel messages during runtime
-# You can define CMDLINE_DEBUG in your local.conf or distro.conf to override this behaviour
-CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet", "debug", d)}'
+# You can define CMDLINE_DEBUG as "debug" in your local.conf or distro.conf
+# to enable kernel debugging.
+CMDLINE_DEBUG ?= ""
 CMDLINE_append = " ${CMDLINE_DEBUG}"
 
 KERNEL_INITRAMFS ?= '${@base_conditional("INITRAMFS_IMAGE_BUNDLE", "1", "1", "", d)}'
-- 
2.7.4


