Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC380E01728
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 10:14:59 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VaqP3-0007Cm-1k; Mon, 28 Oct 2013 18:14:57 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id F0A1D7EC32;
	Mon, 28 Oct 2013 18:14:56 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Mon, 28 Oct 2013 18:14:56 +0100
Message-ID: <2173657.67B60vOxq4@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-11-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <5221494.eWKnjLPuZO@helios>
References: <1489979.YGJBfpbiDO@koontz> <2101270.njZzpmM3TP@koontz>
	<5221494.eWKnjLPuZO@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Trouble packaging files containing space
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
X-List-Received-Date: Mon, 28 Oct 2013 17:15:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Mandag den 28. oktober 2013 16:17:46 skrev Paul Eggleton:
> On Monday 28 October 2013 17:05:54 S=F8ren Holm wrote:
> > Mandag den 28. oktober 2013 16:01:24 skrev Paul Eggleton:
> > > S=F8ren, are you getting unpackaged file warnings? Are the files =
listed if
> > > you look under image/ in the work directory for the recipe? FWIW,=
 I just
> > > tested here and installing files whose filenames contain spaces w=
orked
> > > just fine.
> >=20
> > I get erro regarding files installed but not shipped - but that's a=

> > differen issue I think. That particular issue is strange sine the
> > un-shupped files are source-files that I do not install. They end u=
p in
> > image/ during do_package.
> >=20
> > The image-dir contains all the files including the files containing=

> > spaces.
>=20
> I think I might need some more details - can you please paste the act=
ual
> error, the relevant parts of the recipe and a directory listing under=

> image/${prefix}/local ?

Having a recipe containing just this works. I'll try stripping my origi=
nal=20
much larger recipe to see what breaks it.


do_install() {
        touch "${D}/file with spaces.txt"
}

FILES_${PN} =3D "/"



--=20
S=F8ren Holm

