Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 945DAE00320
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 02:17:24 -0700 (PDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mrbap3) with ESMTP (Nemesis)
	id 0MANGk-1Qzhqb1Ff8-00BfoL; Wed, 17 Aug 2011 11:17:31 +0200
Date: Wed, 17 Aug 2011 11:17:30 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: xiaofeng.yan@windriver.com
Message-ID: <20110817091730.GA21560@localhost.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:Ey42LEhgrM4TAEb2GwsMAC+D52G7kV+rcWf30Tz2i4x
	1Mcl0/g1Lim04MX9WsEsOzD4AnRVcEo9/YZbqmXMePilOrMkay
	eWxvPSeeR7BYQAIB2CSgFZjAUUmGHAQlB4uiJlElbKG49fGZ1K
	+3bpQcxxZ+EmgA1rqgBOJ8buqgs0jvHUDX1k4IQRSwRQl6VYlu
	npHXKlKrlGTqay5t6PSiJ6+TBglGZ+0g4Snj7vVenM=
Cc: yocto@yoctoproject.org
Subject: meta-qt3: qt3-x11-native compile fix on Fedora 15 x86-64
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
X-List-Received-Date: Wed, 17 Aug 2011 09:17:25 -0000
X-Groupsio-MsgNum: 2361
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

This patch fixes compilation of qt-x11-native_3.3.5 on Fedora 15 x86-64.
The compiler was complainig about unknown type ptrdiff_t. Including the
appropriate header in qvaluelist.h helps.

Can this be integrated into the meta-qt3 git repository?

cheers,

Andre

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="qt-x11-free-native_3.3.5-cstddef-fix.patch"

diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index e64256f..526c42f 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -4,7 +4,7 @@ PRIORITY = "optional"
 LICENSE = "GPL | QPL"
 DEPENDS = "xmu-native"
 HOMEPAGE = "http://www.trolltech.com"
-PR = "r0"
+PR = "r1"
 
 PROVIDES += "qt-x11-free-native"
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
@@ -13,7 +13,9 @@ LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=629178675a7d49c9fa19dfe9f43ea256 \
                     file://LICENSE.QPL;md5=fff372435cb41647bc0b3cb940ea5c51"
 
 SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
-	   file://no-examples.patch"
+	   file://no-examples.patch \
+           file://qt3-cstddef.patch"
+
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
 #

--4Ckj6UjgE2iN1+kY--
