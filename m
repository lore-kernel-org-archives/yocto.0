Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29927E0091D; Thu, 28 Feb 2019 18:51:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9153CE007B3
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 18:51:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x212pJ1A029021
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Feb 2019 18:51:19 -0800 (PST)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 28 Feb 2019 18:51:19 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 1 Mar 2019 10:44:49 +0800
Message-ID: <20190301024449.38924-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: Disable the glamor acceleration for the beaglebone
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
X-List-Received-Date: Fri, 01 Mar 2019 02:51:22 -0000
Content-Type: text/plain

In the commit ec6d61cbddc3 ("mesa: enable native and nativesdk
variants"), the gallium is enabled for the mesa. Since we use the
modesetting driver for the Xorg on the beagleboard and the glamor
acceleration method is enabled by the modesetting driver, the gallium
DRI driver will be used after this commit. But the gallium DRI driver
only support 32bpp and we choose to use 16bpp on beaglebone in commit
e7434c17b4b3 ("meta-yocto-bsp: workaround the X malfunction on
beaglebone"), the mismatch between them causes the malfunction of the
Xorg. I have hacked the kernel to enable the 32bpp for the beagllebone,
but it has the following issues:
  1. The color is abnormal.
  2. The Xorg hang occasionally.
  3. The performance of using glamor acceleration based on gallium is
     pretty bad.
So I choose to disable the glamor on this board.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../xorg-xserver/xserver-xf86-config/beaglebone-yocto/xorg.conf          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone-yocto/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone-yocto/xorg.conf
index 2f40dae15710..5da15888d44b 100644
--- a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone-yocto/xorg.conf
+++ b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone-yocto/xorg.conf
@@ -5,6 +5,7 @@ EndSection
 Section "Device"
         Identifier      "Builtin Default fbdev Device 0"
         Driver  "modesetting"
+        Option  "AccelMethod" "none"
 EndSection
 
 Section "Screen"
-- 
2.14.4


