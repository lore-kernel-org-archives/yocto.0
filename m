Return-Path: <paul@paulbarker.me.uk>
Received: from mo1.mail-out.ovh.net (18.mo1.mail-out.ovh.net [46.105.35.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B464E013C9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 13:19:46 -0700 (PDT)
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 025F2FF89AA
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 22:19:45 +0200 (CEST)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 22 Apr 2013 22:19:44 +0200
Received: from 94-192-12-83.zone6.bethere.co.uk (HELO
	b5-server.betafive.co.uk) (paul@betafive.co.uk@94.192.12.83)
	by ns0.ovh.net with SMTP; 22 Apr 2013 22:19:42 +0200
Received: from b5-vm-mint0.betafive.co.uk (b5-vm-mint0.betafive.co.uk
	[192.168.0.100])
	by b5-server.betafive.co.uk (Postfix) with ESMTP id ADF8716010F;
	Mon, 22 Apr 2013 21:19:38 +0100 (BST)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
X-Ovh-Mailout: 178.32.228.1 (mo1.mail-out.ovh.net)
Date: Mon, 22 Apr 2013 21:19:37 +0100
Message-Id: <1366661977-26631-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.7.10.4
X-Ovh-Tracer-Id: 11195385724809480586
X-Ovh-Remote: 94.192.12.83 (94-192-12-83.zone6.bethere.co.uk)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: 0
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeifedrfeehucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeifedrfeehucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Subject: [meta-raspberrypi][PATCH] netbase: Remove bbappend and files
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
X-List-Received-Date: Mon, 22 Apr 2013 20:19:46 -0000

Dropped raspberrypi modifications to hosts and interfaces files as they are
unnecessary.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-core/netbase/netbase-5.0/raspberrypi/hosts      |    2 --
 recipes-core/netbase/netbase-5.0/raspberrypi/interfaces |   15 ---------------
 recipes-core/netbase/netbase_5.0.bbappend               |    3 ---
 3 files changed, 20 deletions(-)
 delete mode 100644 recipes-core/netbase/netbase-5.0/raspberrypi/hosts
 delete mode 100644 recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
 delete mode 100644 recipes-core/netbase/netbase_5.0.bbappend

diff --git a/recipes-core/netbase/netbase-5.0/raspberrypi/hosts b/recipes-core/netbase/netbase-5.0/raspberrypi/hosts
deleted file mode 100644
index 7d87a18..0000000
--- a/recipes-core/netbase/netbase-5.0/raspberrypi/hosts
+++ /dev/null
@@ -1,2 +0,0 @@
-127.0.0.1	localhost.localdomain		localhost	raspberrypi	rpi
-
diff --git a/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces b/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
deleted file mode 100644
index 00ae607..0000000
--- a/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
+++ /dev/null
@@ -1,15 +0,0 @@
-# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
- 
-# The loopback interface
-auto lo
-iface lo inet loopback
-
-# Wireless interfaces
-iface wlan0 inet dhcp
-	wireless_mode managed
-	wireless_essid any
-	wpa-driver wext
-	wpa-conf /etc/wpa_supplicant.conf
-
-# Bluetooth networking
-iface bnep0 inet dhcp
diff --git a/recipes-core/netbase/netbase_5.0.bbappend b/recipes-core/netbase/netbase_5.0.bbappend
deleted file mode 100644
index 36432f5..0000000
--- a/recipes-core/netbase/netbase_5.0.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-# Don't forget to bump PRINC if you update the extra files.
-PRINC = "1"
-- 
1.7.10.4


