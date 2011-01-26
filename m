Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D24D84C81146
	for <yocto@yoctoproject.org>; Wed, 26 Jan 2011 17:59:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 15:59:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,382,1291622400"; d="scan'208";a="701048234"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 26 Jan 2011 15:59:22 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 27 Jan 2011 07:58:57 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 27 Jan 2011 07:58:57 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 27 Jan 2011 07:58:56 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Chris Tapp <opensource@keylevel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 27 Jan 2011 07:58:55 +0800
Thread-Topic: [yocto] rootfs image size
Thread-Index: Acu9Wl8yCcp2EQ8iTSaJJZ9Vqs9jbQAWaosA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7593@shsmsx502.ccr.corp.intel.com>
References: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>
	<46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
In-Reply-To: <46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: rootfs image size
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
X-List-Received-Date: Wed, 26 Jan 2011 23:59:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Chris Tapp
> Sent: Wednesday, January 26, 2011 9:09 PM
>=20
> I know this is probably a basic question, but I'm not having much luck !
>=20
> I've built poky-image-minimal for atom-pc using the 0.9 Poky release.
>=20
> This gives me an ext3 rootfs of over 80MB, which doesn't sound minimal
> to me ;-)

This is a known issue in 0.9. the switch from ipk to rpm leaves some tempor=
ary files
in the final ext3 rootfs, which results the large size.

>=20
> Can I reduce the size of the image, or is it expected to be this size?
>=20
> I've tried changing
>=20
> IMAGE_ROOTFS_SIZE_ext3 =3D "500000"

This configuration option only works when it exceeds the size of generated =
rootfs,
or else it will be changed implicitly to the actual size plus some extra bu=
ffer

>=20
>   in atom-pc.conf to another value, but this didn't make any
> difference to the image that gets created (by re-running bitbake poky-
> image-minimal after making the above change).
>=20
> I've also tried using
>=20
> ROOT_FLASH_SIZE =3D "64"
>=20
> also without any luck.
>=20
> Any help would be much appreciated !
>=20

I'd suggest you to use the master to see whether it works for you.

The alternative is to apply below commit to your 0.9 code:

commit 5e384038cbd5035377d61a1b77ad23ab69e0cac0
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Wed Jan 5 18:56:47 2011 +0000

    rootfs_rpm.bbclass: Remove temporary work files in install directory, s=
aving work files in install directory, saving the manifests as logfiles int=
o ${T}

    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbcl=
ass
index 33abe96..2f7d691 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -202,8 +202,11 @@ EOF
        # remove lock files
        rm -f ${IMAGE_ROOTFS}${rpmlibdir}/__db.*

-       # remove resolver files and manifests
-       rm -f ${IMAGE_ROOTFS}/install/install.manifest
+       # Move manifests into the directory with the logs
+       mv ${IMAGE_ROOTFS}/install/*.manifest ${T}/
+
+       # Remove all remaining resolver files
+       rm -f ${IMAGE_ROOTFS}/install

        log_check rootfs

Thanks
Kevin

