Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54146E00510
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 08:39:03 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 25 Nov 2013 11:39:03 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 25 Nov 2013 11:35:47 -0500
Thread-Topic: [yocto] Unable to upgrade kernel;	package for kernel name
	includes version
Thread-Index: Ac7p7Ql1DnAWGplISYiWbscF7THRXAADOgVQ
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153C11560E0@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153C1156010@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153C1156010@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Unable to upgrade kernel; package for kernel name includes version
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
X-List-Received-Date: Mon, 25 Nov 2013 16:39:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: Monday, November 25, 2013 9:46 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Unable to upgrade kernel; package for kernel name
> includes version
>=20
> I'm on poky/dylan-9.0.1 I am upgrading the Linux kernel for my device's
> image from a custom 3.6.9 kernel to a custom 3.10 kernel.  I'm using
> this layer: https://github.com/evensonbryan/meta-atmel as a basis for
> the custom kernel recipe (there is a recipe for the 3.10 kernel that I
> haven't yet deployed to Github in case anyone is wondering).  I'm
> attempting to do a firmware upgrade with my built packages (using opkg
> for package management) and I've discovered an issue with the kernel
> naming.  On my pre-upgraded device, a list of installed packages
> includes:
>=20
> kernel-devicetree
> kernel-image-3.6.9-yocto-standard
>=20
> So when I build my updated Linux kernel, the kernel image is now named
> "kernel-image-3.10.0-yocto-standard".  So when I attempt to do an
> upgrade, the kernel-devicetree is upgraded just fine but the kernel
> image is not; kernel-image-3.10.0-yocto-standard is not the same
> package as kernel-image-3.6.9-yocto-standard, so opkg does not see this
> as an upgrade.
>=20
> How do I force the packaging system to recognize that the new kernel is
> an upgrade of the old kernel, even though the packages have different
> names?  And for the future, how do I change the package name so that it
> doesn't include the version?

I have a partial solution, but I'm still curious as to if there is a cleane=
r method than what I've found so far.  I have a package that is an image ve=
rsion so that way I can easily tell the overall distribution version.  In t=
hat package, I added the line:

RDEPENDS_${PN} =3D "kernel-image (>=3D 3.10)"

When I did this, upgrading my image version package caused kernel-image-3.1=
0.0-yocto-standard to be installed.  However, opkg still claims that kernel=
-image-3.6.9-yocto-standard is still installed; it'd be nice to remove this=
 package also.  Would adding:

RCONFLICTS_${PN} =3D "kernel-image-3.6.9-yocto-standard"
RREPLACES_${PN} =3D "kernel-image-3.6.9-yocto-standard"

to the 3.10 kernel recipe fix the issue?  And if so, moving forward would I=
 then need to append the list with each kernel version that is created, in =
case I have an old system that has never been upgraded?  I think this will =
work, but it seems messy.

Thanks,
Bryan
>=20
> Thanks,
> Bryan
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

