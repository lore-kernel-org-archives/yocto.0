Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.13965.1593519632348881281
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 05:20:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49x3NF31hkz5tlP;
	Tue, 30 Jun 2020 14:20:29 +0200 (CEST)
Date: Tue, 30 Jun 2020 14:20:27 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: tobies@synopsys.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Need help understanding #devtool flow to library
Message-ID: <20200630122027.dasbwk5rgokww4td@qschulz>
References: <C5wX.1593516361344535133.allJ@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <C5wX.1593516361344535133.allJ@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Stephan,

On Tue, Jun 30, 2020 at 04:26:01AM -0700, tobies@synopsys.com wrote:
> Hello!
>=20
> I am new to yocto, so I might be missing something obvious, but I have =
trouble getting the devtool flow to work for me. It seems that the librar=
y that ends up in the image is not the one with my modifications but inst=
ead the altered one.
>=20
> Here is what I have done:
>=20
> devtool modify <libname>
>=20
> This has successfully checked out the sources of the library that I wan=
t to modify and I could make my modifications and build the changed versi=
on with "devtool build vsomeip" .=A0Now when I build an image with "devto=
ol build-image <img-name>", devtool reports that it would build the image=
 with addtional package "vsomeip".
>=20
> But the library that ends up in the generated image does not seem to ha=
ve the modified code. I do not find my additional symbols when I do an ob=
jdump on the library in
>=20
> ./tmp/work/qemux86-poky-linux/<img-name>/1.0-r0/rootfs/usr/lib/libvsome=
ip...
>=20
> On the other hand, the library built in=A0./tmp/work/i586-poky-linux/vs=
omeip/2.10.21-r0/vsomeip-2.10.21/libvsomeip.so.2.10.21 does have these sy=
mbols.
>=20
> The disconnect seems to happen already within the vsomeip library build=
 process. The library present at=A0./tmp/work/i586-poky-linux/vsomeip/2.1=
0.21-r0/package/usr/lib/libvsomeip.so.2.10.21 is one _without_ my changes=
 present (and identical in size to the one on the rootfs folder of the im=
age).
>=20
> It feels like I am missing a step of the devtool flow, or at least the =
starting point to debug the deployment process.
>=20
> Any hints of pointers to relevant documentation would be very appreciat=
ed!
>=20

Libraries and binaries are stripped of the debug symbols before adding
them to the "normal" package. The version with the debug symbols are
usually in the -dbg package of your recipe.

You can disable this behavior with INHIBIT_PACKAGE_STRIP in your recipe (=
c.f.
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#va=
r-INHIBIT_PACKAGE_STRIP)

This is Yocto's default behavior, not sure if there is anything specific
to devtool in what you described.

(BTW, until you have run devtool reset <recipe>, bitbake takes the
 sources from your devtool workspace. I don't know exactly what's the
 difference with bitbake build-image <img-name> and bitbake <img-name>)

Let us know if that helps,
Quentin
