Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B6E4E00444
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 07:15:26 -0800 (PST)
Received: by mail-wi0-f170.google.com with SMTP id hi5so596281wib.3
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 07:15:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Br24+KBQf6SZQ53Zi01fhHTFtpXJCB7psBDaFXK+bB0=;
	b=crRZrmpm/wb7oE7BpLyq67C+xEAOl3R2ycVXhzd4Woityh4JG2MkHRfJLvQsMCyxdr
	Jz+n8UeYYZbYzXLr4t7w4DPE+NDOWpwimcpRUx3C9eqCGu3gqrzi+lThEv0giJcKnMWR
	Y3hD90u2molpszqblNy9dWIgL37WUPIFG5xeWH+8mo42bLj/Px8IMZYxE/p9d4Qo1UO/
	Dt4yZwruNiEq0bFbV9TnM/atI1d1kqqHPXtZmZpU37+2vdPNa47aeSRHcVYEB+KAvkjW
	HQHEtV0bqXJS2eoheK6l7FWZ0RKK0XAIONBlodPxmDm6HMlhSrc7LIDMvqmRr/ZRfC7Q
	RlwQ==
X-Gm-Message-State: ALoCoQkMLqWVHUFOtRjGTGCulw4sT3zsKAGOE5BG80ClkbOXlnCod8gniE11nbGqHx69qe+AH4QN
X-Received: by 10.180.102.42 with SMTP id fl10mr2748354wib.42.1392390925251;
	Fri, 14 Feb 2014 07:15:25 -0800 (PST)
Received: from localhost ([2001:610:612:0:21c:42ff:fef0:7f75])
	by mx.google.com with ESMTPSA id f1sm5775737wik.1.2014.02.14.07.15.24
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Feb 2014 07:15:24 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Fri, 14 Feb 2014 16:15:06 +0100
Message-Id: <1392390906-2516-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.8.5.3
Subject: [meta-raspberrypi][dora][PATCH] xserver-xf86-config: don't use wildcards in SRC_URI
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
X-List-Received-Date: Fri, 14 Feb 2014 15:15:28 -0000

It is strongly discouraged to use wildcards in SRC_URI since it breaks
when using multiple bbappends and immediate expansion of FILESDIR.

This fixes a do_install failure when building with multiple BSPs
enabled.

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 65931e2..3e86645 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -6,7 +6,7 @@ PRINC := "${@int(PRINC) + 5}"
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
 
-SRC_URI_append_raspberrypi = " file://xorg.conf.d/* "
+SRC_URI_append_raspberrypi = " file://xorg.conf.d/10-evdev.conf "
 
 do_install_append_raspberrypi () {
 	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
-- 
1.8.3.4


