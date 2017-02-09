Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A922E0093F; Wed,  8 Feb 2017 18:51:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E01B5E006C6
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 18:51:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v192pWmN017434
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 8 Feb 2017 18:51:32 -0800 (PST)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Wed, 8 Feb 2017 18:51:31 -0800
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 Feb 2017 10:44:27 +0800
Message-ID: <20170209024427.30212-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.8.3
MIME-Version: 1.0
Subject: [meta-security][PATCH] scapy: fix the pickling issue
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
X-List-Received-Date: Thu, 09 Feb 2017 02:51:38 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Backport a patch to fix the pickling issue when save_session:

PicklingError: Can't pickle <type 'function'>: attribute lookup __builtin__.function failed

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../scapy/scapy/scapy-Pickling-issues-fixed.patch  | 111 +++++++++++++++++++++
 recipes-security/scapy/scapy_2.3.2.bb              |   1 +
 2 files changed, 112 insertions(+)
 create mode 100644 recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch

diff --git a/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch b/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
new file mode 100644
index 0000000..9901f91
--- /dev/null
+++ b/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
@@ -0,0 +1,111 @@
+From 331dff6c73f89307d108f9ae89264b9548e22dc6 Mon Sep 17 00:00:00 2001
+From: Guillaume Valadon <guillaume.valadon@ssi.gouv.fr>
+Date: Wed, 31 Aug 2016 13:59:21 +0200
+Subject: [PATCH] Pickling issues fixed
+
+Backport from:
+https://github.com/secdev/scapy/pull/284
+
+Upstream-Status: Backport
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ scapy/layers/inet.py  |  6 ++++--
+ scapy/layers/inet6.py |  4 +++-
+ scapy/layers/l2.py    | 14 +++++++++-----
+ scapy/route.py        |  1 -
+ 4 files changed, 16 insertions(+), 9 deletions(-)
+
+diff --git a/scapy/layers/inet.py b/scapy/layers/inet.py
+index 4b66946..e35a247 100644
+--- a/scapy/layers/inet.py
++++ b/scapy/layers/inet.py
+@@ -734,8 +734,10 @@ conf.l3types.register(ETH_P_IP, IP)
+ conf.l3types.register_num2layer(ETH_P_ALL, IP)
+ 
+ 
+-conf.neighbor.register_l3(Ether, IP, lambda l2,l3: getmacbyip(l3.dst))
+-conf.neighbor.register_l3(Dot3, IP, lambda l2,l3: getmacbyip(l3.dst))
++def inet_register_l3(l2, l3):
++    return getmacbyip(l3.dst)
++conf.neighbor.register_l3(Ether, IP, inet_register_l3)
++conf.neighbor.register_l3(Dot3, IP, inet_register_l3)
+ 
+ 
+ ###################
+diff --git a/scapy/layers/inet6.py b/scapy/layers/inet6.py
+index ba5674c..195ca9c 100644
+--- a/scapy/layers/inet6.py
++++ b/scapy/layers/inet6.py
+@@ -474,7 +474,9 @@ class IPv6(_IPv6GuessPayload, Packet, IPTools):
+             return self.payload.answers(other.payload)
+ 
+ 
+-conf.neighbor.register_l3(Ether, IPv6, lambda l2,l3: getmacbyip6(l3.dst))
++def inet6_register_l3(l2, l3):
++    return getmacbyip6(l3.dst)
++conf.neighbor.register_l3(Ether, IPv6, inet6_register_l3)
+ 
+ 
+ class IPerror6(IPv6):
+diff --git a/scapy/layers/l2.py b/scapy/layers/l2.py
+index 3d88961..47fa386 100644
+--- a/scapy/layers/l2.py
++++ b/scapy/layers/l2.py
+@@ -183,8 +183,10 @@ class LLC(Packet):
+                     XByteField("ssap", 0x00),
+                     ByteField("ctrl", 0) ]
+ 
+-conf.neighbor.register_l3(Ether, LLC, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
+-conf.neighbor.register_l3(Dot3, LLC, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
++def l2_register_l3(l2, l3):
++    return conf.neighbor.resolve(l2, l3.payload)
++conf.neighbor.register_l3(Ether, LLC, l2_register_l3)
++conf.neighbor.register_l3(Dot3, LLC, l2_register_l3)
+ 
+ 
+ class CookedLinux(Packet):
+@@ -203,7 +205,7 @@ class SNAP(Packet):
+     fields_desc = [ X3BytesField("OUI",0x000000),
+                     XShortEnumField("code", 0x000, ETHER_TYPES) ]
+ 
+-conf.neighbor.register_l3(Dot3, SNAP, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
++conf.neighbor.register_l3(Dot3, SNAP, l2_register_l3)
+ 
+ 
+ class Dot1Q(Packet):
+@@ -236,7 +238,7 @@ class Dot1Q(Packet):
+             return self.sprintf("802.1q (%Dot1Q.type%) vlan %Dot1Q.vlan%")
+ 
+             
+-conf.neighbor.register_l3(Ether, Dot1Q, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
++conf.neighbor.register_l3(Ether, Dot1Q, l2_register_l3)
+ 
+ class STP(Packet):
+     name = "Spanning Tree Protocol"
+@@ -351,7 +353,9 @@ class ARP(Packet):
+         else:
+             return self.sprintf("ARP %op% %psrc% > %pdst%")
+                  
+-conf.neighbor.register_l3(Ether, ARP, lambda l2,l3: getmacbyip(l3.pdst))
++def l2_register_l3_arp(l2, l3):
++    return getmacbyip(l3.pdst)
++conf.neighbor.register_l3(Ether, ARP, l2_register_l3_arp)
+ 
+ class GRErouting(Packet):
+     name = "GRE routing informations"
+diff --git a/scapy/route.py b/scapy/route.py
+index 52a9562..4bd27b7 100644
+--- a/scapy/route.py
++++ b/scapy/route.py
+@@ -20,7 +20,6 @@ from error import Scapy_Exception,warning
+ class Route:
+     def __init__(self):
+         self.resync()
+-        self.s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
+         self.cache = {}
+ 
+     def invalidate_cache(self):
+-- 
+2.8.3
+
diff --git a/recipes-security/scapy/scapy_2.3.2.bb b/recipes-security/scapy/scapy_2.3.2.bb
index 0a42ad9..2965c72 100644
--- a/recipes-security/scapy/scapy_2.3.2.bb
+++ b/recipes-security/scapy/scapy_2.3.2.bb
@@ -7,6 +7,7 @@ LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4
 
 SRC_URI = "https://github.com/secdev/${BPN}/archive/v${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
            file://run-ptest \
+           file://scapy-Pickling-issues-fixed.patch \
 "
 
 SRC_URI[md5sum] = "00f11df3d6b46fe6ac306efd757486f9"
-- 
2.8.3


