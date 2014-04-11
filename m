Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C29EDE002A6
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 11:43:57 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1WYgQc-0004tz-1R; Fri, 11 Apr 2014 20:43:54 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 1811C7EE11;
	Fri, 11 Apr 2014 20:43:54 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 11 Apr 2014 20:43:53 +0200
Message-ID: <7023738.t8MMlfpnim@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-24-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <53481D75.8070306@windriver.com>
References: <2489555.PeAzndN2bA@koontz> <3478732.Agy1Jcga6F@koontz>
	<53481D75.8070306@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: defconfig on daisy
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
X-List-Received-Date: Fri, 11 Apr 2014 18:44:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Bruce

That sounds great. The situation is that I though that that was the cas=
e, so I=20
also tried adding this to the bbappend.

KERNEL_FEATURES_append =3D " features/aufs"

But that does not seem to work either. So I guess you are talking about=
=20
somthing else.

Fredag den 11. april 2014 12:51:01 skrev Bruce Ashfield:
> On 14-04-11 12:15 PM, S=F8ren Holm wrote:
> > Ok
> >=20
> > Using the *exact* same bbappend file for both 3.10 and 3.14 gives m=
e a
> > correct -config for 3.10 but not for 3.14. Both 3.10/defconfig and
> > 3.14/defconfig contains my original defconfig, so it is picked up a=
nd
> > should be taken into account.
>=20
> This is a slightly different problem .. I can see that I managed to
> drop a patch which links AUFS into the build. Hence why everything
> is dropped.
>=20
> I'm fixing that right now in 3.14, and will send updates later.
>=20

--=20
S=F8ren Holm

