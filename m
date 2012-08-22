Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F153DE00283
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 10:19:17 -0700 (PDT)
Received: from mail-wg0-f44.google.com ([74.125.82.44])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 22 Aug 2012 10:12:08 -0700
Received: by wgbdr13 with SMTP id dr13so671738wgb.13
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 10:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=ejj3wznX7x2ZGHxizgGrhHxLRCOMFzi1DOM5aBKvQR0=;
	b=a2DMRqHuEiN2j7ydcYJmYtAuYJaIfg4TVH+bYS2MCt3ExFAvtoJhI5CkYbMWykGzUU
	3exaitL2/8G2ZlUwqPFRZUEPbd6gHFj9e0z/ajmgSQAMN5fV7R0QVFqnhogfHUnV3tXd
	QezuKwQ0eB9Be56m6dQd3tXWPZeHguo/ILvqexmiu70vCmmulthiMeCwe7XeiAsvEvuc
	vippIqHHBH+Tq6zkdNYHMKJc/9AQC0deIoM5azj1qoRSVqE9YifwNuJowXbT8gg5WiJW
	hPwmqZSXxBuuuL3PMW4F5Rsc3dMlJr6hzJj4eUuJSMwqsbyl6lWxdzQVnGhRB8y05SWs
	Ja+g==
Received: by 10.180.84.104 with SMTP id x8mr7394620wiy.20.1345655526631;
	Wed, 22 Aug 2012 10:12:06 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id bc2sm13920163wib.0.2012.08.22.10.12.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Aug 2012 10:12:05 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 22 Aug 2012 18:11:23 +0100
Message-Id: <1345655483-10933-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1345655483-10933-1-git-send-email-ross.burton@intel.com>
References: <1345655483-10933-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQlmubOMyXzl+DORS7wbb1fLVEre+NaCwEX+TBYjK7CFNv9jqelPGVrrG0IUncb5u5YyaUrP
Subject: [PATCH 2/2] routerstationpro: switch to Xorg instead of kdrive
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
X-List-Received-Date: Wed, 22 Aug 2012 17:19:18 -0000

All of the other BSPs are using Xorg and kdrive is only maintained for Xephyr.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/machine/routerstationpro.conf |    9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index 3c2f56f..645a94a 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -11,9 +11,14 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
-PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
-XSERVER = "xserver-kdrive-fbdev"
 
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-extmod \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-video-fbdev"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.10


