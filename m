Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 821C24C80FD4
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:55:55 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 07:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="856889393"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2010 07:55:45 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:53:27 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 12 Nov 2010 23:53:27 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:53:26 +0800
Thread-Topic: [PATCH 4/8] xf86-video-vmware: upgrade from 11.0.1 to 11.0.3
Thread-Index: AcuCfgGZC7+X8bhzTLuzQ8Y8/aJ8ygAA7OwQ
Message-ID: <33AB447FBD802F4E932063B962385B353030AE4C@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 4/8] xf86-video-vmware: upgrade from 11.0.1 to 11.0.3
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
X-List-Received-Date: Fri, 12 Nov 2010 15:55:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 ...mware_11.0.1.bb =3D> xf86-video-vmware_11.0.3.bb} |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-video-vmware_11.0.1.bb =3D>=
 xf86-video-vmware_11.0.3.bb} (96%)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.1.bb =
b/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.1.bb
rename to meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
index 56daa86..c05cee7 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.1.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
@@ -7,6 +7,6 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D4641deddaa80fe7c=
a88e944e1fd94a94"
 DEPENDS +=3D "virtual/libx11 libxvmc drm glproto \
 	    virtual/libgl xineramaproto libpciaccess"
=20
-PR =3D "r1"
+PR =3D "r0"
=20
 COMPATIBLE_HOST =3D '(i.86.*-linux|x86_64.*-linux)'
--=20
1.7.0.4


