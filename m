Return-Path: <John_Cherry@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26E38E003E1
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 05:52:18 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Rvqte-00075F-77 from John_Cherry@mentor.com ;
	Fri, 10 Feb 2012 05:52:18 -0800
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 10 Feb 2012 05:52:06 -0800
Received: from NA-MBX-03.mgc.mentorg.com ([fe80::9a:1569:df57:45b8]) by
	SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) with mapi id
	14.01.0289.001; Fri, 10 Feb 2012 05:52:17 -0800
From: "Cherry, John" <John_Cherry@mentor.com>
To: Bob Cochran <yocto@mindchasers.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] MEL Kit for Beagle/Panda
Thread-Index: AczngY7Is59GIYViSiGh2WlZG6xxjwAdGnGAAAElyoA=
Date: Fri, 10 Feb 2012 13:52:17 +0000
Message-ID: <43AE86686954984BA6E949465D98484089E44507@NA-MBX-03.mgc.mentorg.com>
References: <43AE86686954984BA6E949465D98484089E431EB@NA-MBX-03.mgc.mentorg.com>
	<4F34A7CB.9010201@mindchasers.com>
In-Reply-To: <4F34A7CB.9010201@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.34.91.1]
MIME-Version: 1.0
X-OriginalArrivalTime: 10 Feb 2012 13:52:06.0484 (UTC)
	FILETIME=[2D026140:01CCE7FB]
Subject: Re: MEL Kit for Beagle/Panda
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
X-List-Received-Date: Fri, 10 Feb 2012 13:52:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Bob Cochran [mailto:yocto@mindchasers.com]
> Sent: Thursday, February 09, 2012 9:15 PM
> To: yocto@yoctoproject.org; Cherry, John
> Subject: Re: [yocto] MEL Kit for Beagle/Panda
>=20
> On 02/09/2012 06:21 PM, Cherry, John wrote:
> > Hello Yocto developers,
> >
> > Mentor Embedded (part of Mentor Graphics) recently announced the
> > availability of its new Embedded Linux Kit. This download is
> absolutely
> > free and available to anyone that would like to tinker with a
> prebuilt,
>=20
> >
> > Check it out at:
> > http://www.mentor.com/embedded-software/downloads/linux-
> kits/?cmpid=3D6929
> >
> > Cheers,
> >
> > John
> >
>=20
> Hi John,
>=20
> I thought Mentor Embedded Linux was built around Mentor System Builder.
>   Is System Builder going away and Yocto taking its place inside
> Mentor?

System Builder is just Mentor's view of bitbake/metadata.  These MEL Kits a=
re built with the same bitbake that Yocto uses and is based on all the same=
 metadata (oe-core, meta-yocto, etc.)

The Mentor-specific metadata (sb-core) is being merged into the core layers=
, so you could say that System Builder is looking more and more like Yocto.

>=20
> I'll try to give the download a whirl over the weekend on my
> beagleboard.

Enjoy.

John

>=20
> Thanks,
>=20
> Bob
>=20


