Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E05544C811FB
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 18:22:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 16:22:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="651935563"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 16:22:07 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 08:20:51 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 28 Jan 2011 08:20:49 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 28 Jan 2011 08:20:48 +0800
Thread-Topic: [yocto] rootfs image size
Thread-Index: Acu+csPbwbEgnLtHQyCb0rPSacqhaQADkfmQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5E05704@shsmsx502.ccr.corp.intel.com>
References: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>
	<46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB7593@shsmsx502.ccr.corp.intel.com>
	<4D41F39A.5030001@linux.intel.com>
In-Reply-To: <4D41F39A.5030001@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 28 Jan 2011 00:22:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Darren Hart [mailto:dvhart@linux.intel.com]
> Sent: Friday, January 28, 2011 6:37 AM
>=20
> On 01/26/2011 03:58 PM, Tian, Kevin wrote:
> >> From: Chris Tapp
> >> Sent: Wednesday, January 26, 2011 9:09 PM
> >>
> >> I know this is probably a basic question, but I'm not having much luck=
 !
> >>
> >> I've built poky-image-minimal for atom-pc using the 0.9 Poky release.
> >>
> >> This gives me an ext3 rootfs of over 80MB, which doesn't sound minimal
> >> to me ;-)
> >
> > This is a known issue in 0.9. the switch from ipk to rpm leaves some
> temporary files
> > in the final ext3 rootfs, which results the large size.
> >
> >>
> >> Can I reduce the size of the image, or is it expected to be this size?
> >>
> >> I've tried changing
> >>
> >> IMAGE_ROOTFS_SIZE_ext3 =3D "500000"
> >
> > This configuration option only works when it exceeds the size of genera=
ted
> rootfs,
> > or else it will be changed implicitly to the actual size plus some extr=
a buffer
> >
> >>
> >>    in atom-pc.conf to another value, but this didn't make any
> >> difference to the image that gets created (by re-running bitbake poky-
> >> image-minimal after making the above change).
> >>
> >> I've also tried using
> >>
> >> ROOT_FLASH_SIZE =3D "64"
> >>
> >> also without any luck.
> >>
> >> Any help would be much appreciated !
> >>
> >
> > I'd suggest you to use the master to see whether it works for you.
> >
> > The alternative is to apply below commit to your 0.9 code:
> >
> > commit 5e384038cbd5035377d61a1b77ad23ab69e0cac0
> > Author: Richard Purdie<richard.purdie@linuxfoundation.org>
> > Date:   Wed Jan 5 18:56:47 2011 +0000
> >
> >      rootfs_rpm.bbclass: Remove temporary work files in install directo=
ry,
> saving work files in install directory, saving the manifests as logfiles =
into ${T}
> >
> >      Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
> >
> > diff --git a/meta/classes/rootfs_rpm.bbclass
> b/meta/classes/rootfs_rpm.bbclass
> > index 33abe96..2f7d691 100644
> > --- a/meta/classes/rootfs_rpm.bbclass
> > +++ b/meta/classes/rootfs_rpm.bbclass
> > @@ -202,8 +202,11 @@ EOF
> >          # remove lock files
> >          rm -f ${IMAGE_ROOTFS}${rpmlibdir}/__db.*
> >
> > -       # remove resolver files and manifests
> > -       rm -f ${IMAGE_ROOTFS}/install/install.manifest
> > +       # Move manifests into the directory with the logs
> > +       mv ${IMAGE_ROOTFS}/install/*.manifest ${T}/
> > +
> > +       # Remove all remaining resolver files
> > +       rm -f ${IMAGE_ROOTFS}/install
>=20
>=20
> This needs to be "rm -rf", there is another patch in master that takes
> care of this: 21fafc889e81411735de7d04ffe504e5cff4830d
>=20

Thanks for the catch-up. I do remember that you dig it out but not realize =
related here. :-)

Thanks
Kevin

