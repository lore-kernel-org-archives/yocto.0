Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11E19E0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 14:26:06 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1S3ERq-0004ps-7C from Hollis_Blanchard@mentor.com 
	for yocto@yoctoproject.org; Thu, 01 Mar 2012 14:26:06 -0800
Received: from SVR-ORW-FEM-02.mgc.mentorg.com ([147.34.96.206]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 1 Mar 2012 14:25:32 -0800
Received: from [172.30.13.52] (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.1.289.1;
	Thu, 1 Mar 2012 14:26:05 -0800
Message-ID: <4F4FF77D.9060607@mentor.com>
Date: Thu, 1 Mar 2012 14:26:05 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginalArrivalTime: 01 Mar 2012 22:25:32.0953 (UTC)
	FILETIME=[375B8090:01CCF7FA]
Subject: [PATCH] include usbinit package with usbgadget feature
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
X-List-Received-Date: Thu, 01 Mar 2012 22:26:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

The g_ether kernel module, in the kernel-module-g-ether package, allows 
targets to use a USB connection as a network interface. However, that's 
not useful until the module is loaded.

The usbinit package provides the /etc/init.d/usb-gether script to load 
the g_ether module at boot, so it should be included along with 
kernel-module-g-ether.

Tested with core-image-base on beagleboard.

Signed-off-by: Hollis Blanchard <hollis_blanchard@mentor.com>
---

diff --git a/meta/recipes-core/tasks/task-base.bb b/meta/recipes-core/tasks/task-base.bb
index 2032432..fda0384 100644
--- a/meta/recipes-core/tasks/task-base.bb
+++ b/meta/recipes-core/tasks/task-base.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Merge machine and distro options to create a basic machine task/p
  LICENSE = "MIT"
  LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                      file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r73"
+PR = "r74"

  inherit task

@@ -248,7 +248,8 @@ RRECOMMENDS_task-base-usbgadget = "\
      kernel-module-gadgetfs \
      kernel-module-g-file-storage \
      kernel-module-g-serial \
-    kernel-module-g-ether"
+    kernel-module-g-ether \
+    usbinit"

  RDEPENDS_task-base-usbhost = "\
      usbutils "



