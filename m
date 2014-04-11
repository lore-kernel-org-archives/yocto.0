Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B83FE00CEE
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 09:15:24 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1WYe6r-0003VE-1R; Fri, 11 Apr 2014 18:15:21 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 207BF7F197;
	Fri, 11 Apr 2014 18:15:21 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 11 Apr 2014 18:15:20 +0200
Message-ID: <3478732.Agy1Jcga6F@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-23-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <5348091A.9070500@windriver.com>
References: <2489555.PeAzndN2bA@koontz> <2327870.6kBY9rsEeq@koontz>
	<5348091A.9070500@windriver.com>
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
X-List-Received-Date: Fri, 11 Apr 2014 16:15:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Ok

Using the *exact* same bbappend file for both 3.10 and 3.14 gives me a =
correct=20
-config for 3.10 but not for 3.14. Both 3.10/defconfig and 3.14/defconf=
ig=20
contains my original defconfig, so it is picked up and should be taken =
into=20
account.=20

Fredag den 11. april 2014 11:24:10 skrev Bruce Ashfield:
> On 14-04-11 11:21 AM, S=F8ren Holm wrote:
> > Hi Bruce
> >=20
> > I just realized that I gave you the wrong files. I migrate to dora,=
 so
> > 3.14 is my kernel I'm building. I gave you the dora-files - doh!. I=
'll
> > check if 3.10 works because it does for you on daisy and for me on =
dora.
>=20
> No worries. I just forced the kernel version to 3.10 to test. If you
> want to send the 3.14 ones, I can double check there as well.
>=20
> Bruce
>=20
> > Fredag den 11. april 2014 11:05:44 skrev Bruce Ashfield:
> >> On 14-04-11 11:03 AM, S=F8ren Holm wrote:
> >>> Hi Bruce
> >>>=20
> >>> I just check if AUFS is enabled. It should be since that's in my
> >>> defconfig.

--=20
S=F8ren Holm

