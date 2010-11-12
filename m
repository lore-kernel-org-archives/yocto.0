Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A30504C80BCF
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:50:34 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Nov 2010 07:50:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="626144519"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 12 Nov 2010 07:50:13 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:47:22 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 12 Nov 2010 23:47:21 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:47:19 +0800
Thread-Topic: [PATCH 0/8] [PULL] graphics recipes upgrade
Thread-Index: AcuCffkKOmVoljjKQdaudX+Bp+47sAAAoMzg
Message-ID: <33AB447FBD802F4E932063B962385B353030AE48@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 0/8] [PULL] graphics recipes upgrade
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
X-List-Received-Date: Fri, 12 Nov 2010 15:50:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/11-12
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dkyu3/11-1=
2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (8):
  xmodmap: upgrade from 1.0.4 to 1.0.5
  xf86-input-evdev: upgrade from 2.4.0 to 2.5.0
  xf86-input-mouse: upgrade from 1.5.0 to 1.6.0
  xf86-video-vmware: upgrade from 11.0.1 to 11.0.3
  xf86-input-vmmouse: upgrade from 12.6.9 to 12.6.10
  xwininfo: upgrade from 1.0.5 to 1.1.1
  xset: upgrade from 1.1.0 to 1.2.1
  xauth: upgrade from 1.0.4 to 1.0.5

 .../distro/include/preferred-xorg-versions.inc     |   12 ++++++------
 .../xorg-app/{xauth_1.0.4.bb =3D> xauth_1.0.5.bb}    |    0
 .../{xmodmap_1.0.4.bb =3D> xmodmap_1.0.5.bb}         |    0
 .../xorg-app/xset/disable-xkb.patch                |   20 +++++++++++++---=
----
 .../xorg-app/{xset_1.1.0.bb =3D> xset_1.2.1.bb}      |    0
 .../{xwininfo_1.0.5.bb =3D> xwininfo_1.1.0.bb}       |    0
 ...ut-evdev_2.4.0.bb =3D> xf86-input-evdev_2.5.0.bb} |    2 +-
 ...ut-mouse_1.5.0.bb =3D> xf86-input-mouse_1.6.0.bb} |    0
 ...use_12.6.9.bb =3D> xf86-input-vmmouse_12.6.10.bb} |    0
 ...mware_11.0.1.bb =3D> xf86-video-vmware_11.0.3.bb} |    2 +-
 10 files changed, 21 insertions(+), 15 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xauth_1.0.4.bb =3D> xauth_1.0.5.bb}=
 (100%)
 rename meta/recipes-graphics/xorg-app/{xmodmap_1.0.4.bb =3D> xmodmap_1.0.5=
.bb} (100%)
 rename meta/recipes-graphics/xorg-app/{xset_1.1.0.bb =3D> xset_1.2.1.bb} (=
100%)
 rename meta/recipes-graphics/xorg-app/{xwininfo_1.0.5.bb =3D> xwininfo_1.1=
.0.bb} (100%)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-evdev_2.4.0.bb =3D> x=
f86-input-evdev_2.5.0.bb} (94%)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-mouse_1.5.0.bb =3D> x=
f86-input-mouse_1.6.0.bb} (100%)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-vmmouse_12.6.9.bb =3D=
> xf86-input-vmmouse_12.6.10.bb} (100%)
 rename meta/recipes-graphics/xorg-driver/{xf86-video-vmware_11.0.1.bb =3D>=
 xf86-video-vmware_11.0.3.bb} (96%)


