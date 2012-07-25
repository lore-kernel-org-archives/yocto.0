Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61101E00342
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:14:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6P9E0MT021588
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Jul 2012 02:14:00 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 25 Jul 2012 02:14:00 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <saul.wold@intel.com>
Date: Wed, 25 Jul 2012 17:13:52 +0800
Message-ID: <47ac1c80ccb6f291c6030e8927d86e3f6a92d4a3.1343207401.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1343207401.git.kai.kang@windriver.com>
References: <cover.1343207401.git.kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/2] maintainers.inc: update some packages' maintainer info
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
X-List-Received-Date: Wed, 25 Jul 2012 09:14:02 -0000
Content-Type: text/plain

Take over some packages belongs to Xiaofeng.Yang.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index e4dda21..0f34d64 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -55,7 +55,7 @@ RECIPE_MAINTAINER_pn-bc = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-bdwgc = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-beecrypt = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-bigreqsproto = "Radu Moisan <radu.moisan@intel.com>"
-RECIPE_MAINTAINER_pn-bind = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
+RECIPE_MAINTAINER_pn-bind = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-binutils = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-bison = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-blktool = "Scott Garman <scott.a.garman@intel.com>"
@@ -124,8 +124,8 @@ RECIPE_MAINTAINER_pn-dbus-wait = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-dhcp = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-diffstat = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-diffutils = "Radu Moisan <radu.moisan@intel.com>"
-RECIPE_MAINTAINER_pn-directfb = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
-RECIPE_MAINTAINER_pn-directfb-examples = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
+RECIPE_MAINTAINER_pn-directfb = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-directfb-examples = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-distcc = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-dmxproto = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-docbook-dsssl-stylesheet = "Scott Garman <scott.a.garman@intel.com>"
@@ -267,7 +267,7 @@ RECIPE_MAINTAINER_pn-less = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libacpi = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libarchive = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
+RECIPE_MAINTAINER_pn-libarchive = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libart-lgpl = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-libassuan = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-libatomics-ops = "Scott Garman <scott.a.garman@intel.com>"
@@ -359,7 +359,7 @@ RECIPE_MAINTAINER_pn-libusb1 = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-libvorbis = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libx11 = "Valentin Popa <valentin.popa@intel.com>"
-RECIPE_MAINTAINER_pn-libx11-diet = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
+RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libx11-trim = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-libxau = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-libxaw = "Valentin Popa <valentin.popa@intel.com>"
@@ -454,7 +454,7 @@ RECIPE_MAINTAINER_pn-mesa-dri-glsl-native = "Valentin Popa <valentin.popa@intel.
 RECIPE_MAINTAINER_pn-mesa-xlib = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-metacity = "Valentin Popa <valentin.popa@intel.com>"
-RECIPE_MAINTAINER_pn-mingetty = "Xiaofeng.Yan <xiaofeng@windriver.com>"
+RECIPE_MAINTAINER_pn-mingetty = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-minicom = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-mkfontdir = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-mkfontscale = "Radu Moisan <radu.moisan@intel.com>"
@@ -547,7 +547,7 @@ RECIPE_MAINTAINER_pn-qemu-config = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-nativesdk = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_MAINTAINER_pn-qemugl ="Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-qmmp = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
+RECIPE_MAINTAINER_pn-qmmp = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-qt-mobility-embedded = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qt-mobility-x11 = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qt4-embedded = "Paul Eggleton <paul.eggleton@linux.intel.com>"
@@ -723,11 +723,11 @@ RECIPE_MAINTAINER_pn-xproxymanagementprotocol = "Laurentiu Palcu <laurentiu.palc
 RECIPE_MAINTAINER_pn-xrandr = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xrdb = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xrestop = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-RECIPE_MAINTAINER_pn-xserver-kdrive = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
+RECIPE_MAINTAINER_pn-xserver-kdrive = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-xserver-nodm-init = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xf86-config = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xorg = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-RECIPE_MAINTAINER_pn-xserver-xorg-lite = "Xiaofeng Yan <xiaofeng.yan@windriver.com>"
+RECIPE_MAINTAINER_pn-xserver-xorg-lite = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-xset = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xtrans = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xtscal = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-- 
1.7.5.4


