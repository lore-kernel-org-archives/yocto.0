Return-Path: <dlazzari@leapfrog.com>
Received: from mx3.leapfrog.com (mx3.leapfrog.com [63.114.26.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4236E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 14:46:02 -0700 (PDT)
Received: from NAEMCASHT02.na.leapfrog.com (unknown [10.12.2.36])
	by mx3.leapfrog.com (Postfix) with ESMTP id A895D6064
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 14:45:49 -0700 (PDT)
Received: from NAEMMAIL01.na.leapfrog.com ([fe80::252e:28a6:3d8f:6991]) by
	NAEMCASHT02.na.leapfrog.com ([::1]) with mapi id 14.01.0379.000;
	Thu, 23 May 2013 14:45:49 -0700
From: Daniel Lazzari <dlazzari@leapfrog.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem with Python in pre-built SDK
Thread-Index: Ac5X+SDRcDdZS9u2R3SsN/Xh9Ar9xA==
Date: Thu, 23 May 2013 21:45:48 +0000
Message-ID: <E7A9054A5ACABE48B0E540E46E862B0FE6CA6BF2@NAEMMAIL01.na.leapfrog.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.206.88]
MIME-Version: 1.0
Subject: Re: Problem with Python in pre-built SDK
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
X-List-Received-Date: Thu, 23 May 2013 21:46:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Date: Thu, 23 May 2013 11:37:49 +0100
> From: "Burton, Ross" <ross.burton@intel.com>
> To: Ben Warren <Ben.Warren@spidercloud.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] Problem with Python in pre-built SDK
> Message-ID:
> 	<CAJTo0LY8Toagve-
> 1A0JC7Qg_p5ptp6Q2SOgH3=3D_+CuxgPrrBzg@mail.gmail.com>
> Content-Type: text/plain; charset=3DUTF-8
>=20
> On 16 May 2013 22:53, Ben Warren <Ben.Warren@spidercloud.com> wrote:
> > I'm having other Yocto problems using the stock Ubuntu x86_64 toolchain=
,
> so decided to install
> > one using the instructions in section 2.1.2 (Using a Cross-Toolchain Ta=
rball)
> of the "Yocto
> > Project Application Developer's Guide".
>=20
> What are these other problems?  Ubuntu should work fine as a host.
>=20
>=20
> > ImportError: No module named fcntl
> > =3D=3D=3D=3D=3D=3D=3D=3D
> >
> > So it looks like the Python included with the SDK is crippled or mis-
> configured:
>=20
> Yeah, the Python we build is split up massively, so clearly the SDK is
> missing the packages that are needed to run bitbake.  But as I said,
> using our SDK to build is over-complicating things as Ubuntu should
> work fine.  What problems were you seeing?
>=20
> Ross

Just in case it matters, this actually bit us pretty badly at one point. We=
 use scons heavily and our typical workflow is to source the toolchain envi=
ronment script then run scons. Unfortunately, because the environment file =
adds the toolchain's native usr/bin to the path, scons tries to run with th=
e broken python and you get the above ImportError. We fixed it by just dele=
ting the python binary from the resulting toolchain so that python from the=
 host system is used instead.

Not a serious issue, but pretty annoying.

Daniel Lazzari Jr.


