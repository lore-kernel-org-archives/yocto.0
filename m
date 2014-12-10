Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46906E00930; Wed, 10 Dec 2014 02:48:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 714D8E00922
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 02:48:47 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 94928108FC;
	Wed, 10 Dec 2014 11:48:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zd39wT2h6kit; Wed, 10 Dec 2014 11:48:36 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Wed, 10 Dec 2014 11:48:35 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 8BEA427169;
	Wed, 10 Dec 2014 11:48:35 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Wed, 10 Dec 2014 11:48:35 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <anders@chargestorm.se>
Date: Wed, 10 Dec 2014 11:48:34 +0100
Thread-Topic: [yocto] nfs-boot problem
Thread-Index: AdAUY5SundfHOf2ATQ6T2NNtZlW7nwAAPdbQ
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A7A@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
	<86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
	<20141210102413.GC14155@ad.chargestorm.se>
In-Reply-To: <20141210102413.GC14155@ad.chargestorm.se>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Cc: jimr@spectralogic.com, yocto@yoctoproject.org
Subject: Re: nfs-boot problem
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
X-List-Received-Date: Wed, 10 Dec 2014 10:48:50 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Anders,

> -----Urspr=FCngliche Nachricht-----
> Von: Anders Darander [mailto:anders@chargestorm.se]
> Gesendet: Mittwoch, 10. Dezember 2014 11:24
> An: Heise, Matthias
> Cc: jimr@spectralogic.com; yocto@yoctoproject.org
> Betreff: Re: [yocto] nfs-boot problem
>=20
> * Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-
> elektronik.com> [141210 09:35]:
> > As to the rootfs, this folder
> > fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-
> gnueabi/cor
> > e-image-minimal/1.0-r0/rootfs seems to be exactly the structure that
> > is packed into the
> > image.tar.bz2 so I thought it is a good idea to directly use it as nfs
> > share. Is there some reason not to do so ?
>=20
> Well, there're quite few. For instance file and directory ownership,
> permissions etc.
=20
Yes, I can see that

>If you're not using devtmpfs, and thus would like static
> device nodes, they wouldn't be created in the build directory.

This is a little beyond my horizon, if you don't mind, could you please exp=
lain this a little, I may be lacking some knowledge here... sorry

=20
> Thus, you really should be using the tarball when you want to run an nfsr=
oot.

Tried again but again it didn't work, do you have an idea what could be wro=
ng ?

> Cheers,
> Anders
>=20
> --
> Anders Darander
> ChargeStorm AB / eStorm AB

Regards,
Mat

