Return-Path: <darren@apps.dvhart.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A96DBE01363
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:04:58 -0700 (PDT)
Received: by mail-iy0-f176.google.com with SMTP id w33so3687124iag.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:04:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=Xo7kpzLdMSlCEjunhqLcw9UQi4P3/dulhzbEdfFwYkw=;
	b=ZRX0aiBrF//Q71MdPTMHyFORZ19gkjyIM54q9N+nDx3ApZmBGGNcXh3ORvGpFhxKYw
	k/Ipg9k74SBIcTrARcGr4wtO0xYcLcVnEQ4esJzP4P+43CEEmvewxBBdVuFsee+mLivg
	evt8AGuLqkDkjjGu8fg9iwfIynfAKzeO5O69gYwPDnFINX5S04FWfXWWeWAH45l4zlq/
	MO8SRRWXKsY3rOb4Zx/CmE9SpjPrt21e7mynrcUF1ihFZ0Tj/bsy8WUnCRkivSoqBWp9
	HnLVxnmQXF0cvBVSidCa+dgehOSFUxvirs7mvsfMHZHWzfkDVv/2iMCDUuMn/HzN+u7Y
	1U/Q==
Received: by 10.50.203.74 with SMTP id ko10mr6353333igc.7.1331755498526;
	Wed, 14 Mar 2012 13:04:58 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id gh8sm13121824igb.16.2012.03.14.13.04.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 13:04:57 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2012 13:04:47 -0700
Message-Id: <20c253b945137412fbf82f09cb60958d2e544510.1331755469.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
References: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQlxlXgdRiZWuqZe+I76YoU1iZYE5GX3Srm0rbUujhJ2YlAPS1toLI8JZAYyIhyY/+IQg/J+
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/4] fri2: Update serial console settings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Mar 2012 20:04:58 -0000

With the pch_uart changes now in tree, update the machine config
to make use of it.

Trick syslinux into using the port by IO address and a magic baud rate.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    9 ++++++---
 meta-fri2/conf/machine/fri2.conf        |    9 ++++++---
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index a0eb8a0..9ba5753 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -15,9 +15,12 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_VESA} \
            "
 
-SYSLINUX_OPTS = "serial 0 115200"
-SERIAL_CONSOLE = "115200 ttyS0"
-APPEND += "console=ttyS0,115200 console=tty0"
+# Syslinux does not know about the 64MHz uart clock and it does not detect the
+# serial device by number. Use the IO port directly and divide the baud down to
+# trick syslinux into configuring a 115200 baud.
+SYSLINUX_OPTS = "serial 0xb060 3318"
+SERIAL_CONSOLE = "115200 ttyPCH1"
+APPEND += "console=ttyPCH1,115200 console=tty0"
 
 # EFI boot will ignore this and use the EFI framebuffer at 800x600
 APPEND += "video=vesafb vga=0x318"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 3947736..3801836 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -18,9 +18,12 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
 
-SYSLINUX_OPTS = "serial 0 115200"
-SERIAL_CONSOLE = "115200 ttyS0"
-APPEND += "console=ttyS0,115200 console=tty0"
+# Syslinux does not know about the 64MHz uart clock and it does not detect the
+# serial device by number. Use the IO port directly and divide the baud down to
+# trick syslinux into configuring a 115200 baud.
+SYSLINUX_OPTS = "serial 0xb060 3318"
+SERIAL_CONSOLE = "115200 ttyPCH1"
+APPEND += "console=ttyPCH1,115200 console=tty0"
 
 # EFI boot will ignore this and use the EFI framebuffer at 800x600
 APPEND += "video=vesafb vga=0x318"
-- 
1.7.5.4


