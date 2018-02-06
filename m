Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A24AE00E4F; Tue,  6 Feb 2018 07:43:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD234E00E11
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:47 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id g17so764374pfh.1
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=jIuQpDnlo+E+svq4P35rVJj0hTBE25aplyeUPR3LrJ0=;
	b=ZSVDY534SkJ2835/YnRoBUQuRz9RVZFviJHWu1itbKzOgnRpKPK5N1aejrTVuR3wsr
	XBkQr6uqQ4pxMUyguTUElhYvBLXOnG84li95WcU0+zs2vzvTXn0Vz4fnu+eARlvR/n43
	MH04taQEsNSIHJ8BD7RYzgUKfNqiS5+KzOZZ1KPKCAK6E+hJEJka++B6Ub5C9g02CxWg
	v5XOV5oXLuJke4LRNpgaoClQ4YAvkQ2CaSzj6DgyYLcJ2YegklniJaiDCqECKJtTVSNy
	y6jAfEgX837anoxOeF5LAUp1WlvzVyrtk1gljdO3RJ0gErWd21tdXyhsfYX9EZaMFsNh
	i1Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=jIuQpDnlo+E+svq4P35rVJj0hTBE25aplyeUPR3LrJ0=;
	b=Wgj3K13asTxiZ9eveUA7rKprnwgn/hiaIsRxxCSjVCjka54csNww6yrBSGPOEdwBu4
	sTqzXVnsL8wyb+m/Qs8iRMZxRMr530UmqUsWc6k6sdh+Uld2ysG+ZdUaKevpuvL4ydA1
	iaSIGtPlYt/Cnl/QPPR8dlDPvxnkypJ6xybZBr+XGiiXa3GIwLf9JvV0sK/56u10gPiU
	wuuxynkGsNAFecKlwVKTZBFOjLIbOB4tT+IDmJfCaGyAgj+Pr+1eVGbyc/dt1WIIT+D8
	dpiGy1rL3RHIY8h27JGUhvDqTnaY6yR9psQjItS6ibM50dtLQZtruCvDpKV2Niwz9rTo
	ZZdQ==
X-Gm-Message-State: APf1xPAlifawXFVAAb8ERculeFhfjmfWTM++NznqRu1dZws+E8Az0cqR
	GC4BbfKVMA7pNpNhZuXHe6Y=
X-Google-Smtp-Source: AH8x225LrZLoMfWPLXn8GjTOarNDFxY/VVugZlNVcagWgRqQDX9YunlVW+fLPeoj+lf419af/+MBIw==
X-Received: by 10.98.73.157 with SMTP id r29mr2860884pfi.218.1517931826933;
	Tue, 06 Feb 2018 07:43:46 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:46 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:24 +0530
Message-Id: <1517931813-13010-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 03/12] scapy: update to 2.3.3
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
X-List-Received-Date: Tue, 06 Feb 2018 15:43:50 -0000

Drop patch included in update.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scapy/scapy/scapy-Pickling-issues-fixed.patch  | 111 ---------------------
 .../scapy/{scapy_2.3.2.bb => scapy_2.3.3.bb}       |   5 +-
 2 files changed, 2 insertions(+), 114 deletions(-)
 delete mode 100644 recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
 rename recipes-security/scapy/{scapy_2.3.2.bb => scapy_2.3.3.bb} (88%)

diff --git a/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch b/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
deleted file mode 100644
index 9901f91..0000000
--- a/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
+++ /dev/null
@@ -1,111 +0,0 @@
-From 331dff6c73f89307d108f9ae89264b9548e22dc6 Mon Sep 17 00:00:00 2001
-From: Guillaume Valadon <guillaume.valadon@ssi.gouv.fr>
-Date: Wed, 31 Aug 2016 13:59:21 +0200
-Subject: [PATCH] Pickling issues fixed
-
-Backport from:
-https://github.com/secdev/scapy/pull/284
-
-Upstream-Status: Backport
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
----
- scapy/layers/inet.py  |  6 ++++--
- scapy/layers/inet6.py |  4 +++-
- scapy/layers/l2.py    | 14 +++++++++-----
- scapy/route.py        |  1 -
- 4 files changed, 16 insertions(+), 9 deletions(-)
-
-diff --git a/scapy/layers/inet.py b/scapy/layers/inet.py
-index 4b66946..e35a247 100644
---- a/scapy/layers/inet.py
-+++ b/scapy/layers/inet.py
-@@ -734,8 +734,10 @@ conf.l3types.register(ETH_P_IP, IP)
- conf.l3types.register_num2layer(ETH_P_ALL, IP)
- 
- 
--conf.neighbor.register_l3(Ether, IP, lambda l2,l3: getmacbyip(l3.dst))
--conf.neighbor.register_l3(Dot3, IP, lambda l2,l3: getmacbyip(l3.dst))
-+def inet_register_l3(l2, l3):
-+    return getmacbyip(l3.dst)
-+conf.neighbor.register_l3(Ether, IP, inet_register_l3)
-+conf.neighbor.register_l3(Dot3, IP, inet_register_l3)
- 
- 
- ###################
-diff --git a/scapy/layers/inet6.py b/scapy/layers/inet6.py
-index ba5674c..195ca9c 100644
---- a/scapy/layers/inet6.py
-+++ b/scapy/layers/inet6.py
-@@ -474,7 +474,9 @@ class IPv6(_IPv6GuessPayload, Packet, IPTools):
-             return self.payload.answers(other.payload)
- 
- 
--conf.neighbor.register_l3(Ether, IPv6, lambda l2,l3: getmacbyip6(l3.dst))
-+def inet6_register_l3(l2, l3):
-+    return getmacbyip6(l3.dst)
-+conf.neighbor.register_l3(Ether, IPv6, inet6_register_l3)
- 
- 
- class IPerror6(IPv6):
-diff --git a/scapy/layers/l2.py b/scapy/layers/l2.py
-index 3d88961..47fa386 100644
---- a/scapy/layers/l2.py
-+++ b/scapy/layers/l2.py
-@@ -183,8 +183,10 @@ class LLC(Packet):
-                     XByteField("ssap", 0x00),
-                     ByteField("ctrl", 0) ]
- 
--conf.neighbor.register_l3(Ether, LLC, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
--conf.neighbor.register_l3(Dot3, LLC, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
-+def l2_register_l3(l2, l3):
-+    return conf.neighbor.resolve(l2, l3.payload)
-+conf.neighbor.register_l3(Ether, LLC, l2_register_l3)
-+conf.neighbor.register_l3(Dot3, LLC, l2_register_l3)
- 
- 
- class CookedLinux(Packet):
-@@ -203,7 +205,7 @@ class SNAP(Packet):
-     fields_desc = [ X3BytesField("OUI",0x000000),
-                     XShortEnumField("code", 0x000, ETHER_TYPES) ]
- 
--conf.neighbor.register_l3(Dot3, SNAP, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
-+conf.neighbor.register_l3(Dot3, SNAP, l2_register_l3)
- 
- 
- class Dot1Q(Packet):
-@@ -236,7 +238,7 @@ class Dot1Q(Packet):
-             return self.sprintf("802.1q (%Dot1Q.type%) vlan %Dot1Q.vlan%")
- 
-             
--conf.neighbor.register_l3(Ether, Dot1Q, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
-+conf.neighbor.register_l3(Ether, Dot1Q, l2_register_l3)
- 
- class STP(Packet):
-     name = "Spanning Tree Protocol"
-@@ -351,7 +353,9 @@ class ARP(Packet):
-         else:
-             return self.sprintf("ARP %op% %psrc% > %pdst%")
-                  
--conf.neighbor.register_l3(Ether, ARP, lambda l2,l3: getmacbyip(l3.pdst))
-+def l2_register_l3_arp(l2, l3):
-+    return getmacbyip(l3.pdst)
-+conf.neighbor.register_l3(Ether, ARP, l2_register_l3_arp)
- 
- class GRErouting(Packet):
-     name = "GRE routing informations"
-diff --git a/scapy/route.py b/scapy/route.py
-index 52a9562..4bd27b7 100644
---- a/scapy/route.py
-+++ b/scapy/route.py
-@@ -20,7 +20,6 @@ from error import Scapy_Exception,warning
- class Route:
-     def __init__(self):
-         self.resync()
--        self.s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
-         self.cache = {}
- 
-     def invalidate_cache(self):
--- 
-2.8.3
-
diff --git a/recipes-security/scapy/scapy_2.3.2.bb b/recipes-security/scapy/scapy_2.3.3.bb
similarity index 88%
rename from recipes-security/scapy/scapy_2.3.2.bb
rename to recipes-security/scapy/scapy_2.3.3.bb
index 2965c72..1c8685b 100644
--- a/recipes-security/scapy/scapy_2.3.2.bb
+++ b/recipes-security/scapy/scapy_2.3.3.bb
@@ -7,11 +7,10 @@ LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4
 
 SRC_URI = "https://github.com/secdev/${BPN}/archive/v${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
            file://run-ptest \
-           file://scapy-Pickling-issues-fixed.patch \
 "
 
-SRC_URI[md5sum] = "00f11df3d6b46fe6ac306efd757486f9"
-SRC_URI[sha256sum] = "1b8a86d687feb8ed01114c0c016b428674cbfec04e3eb6f5249a018c427c4f6a"
+SRC_URI[md5sum] = "336d6832110efcf79ad30c9856ef5842"
+SRC_URI[sha256sum] = "67642cf7b806e02daeddd588577588caebddc3426db7904e7999a0b0334a63b5"
 
 inherit setuptools ptest
 
-- 
2.7.4


