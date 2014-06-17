Return-Path: <sgh@sgh.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C44C7E00B78; Tue, 17 Jun 2014 06:46:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.10.10.13 listed in list.dnswl.org]
Received: from mx-aarh-3.stofanet.dk (mx-aarh-3.stofanet.dk [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CC8FE00B5C
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 06:46:28 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1WwtiV-0003tp-2I; Tue, 17 Jun 2014 15:46:27 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 633D17ECE2;
	Tue, 17 Jun 2014 15:46:22 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Tue, 17 Jun 2014 15:46:21 +0200
Message-ID: <4393962.vBKmSVoclE@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-29-generic; KDE/4.13.0; i686; ; )
In-Reply-To: <53A034E9.2090406@brv.se>
References: <53A034E9.2090406@brv.se>
MIME-Version: 1.0
Subject: Re: Problems creating recipe, "no package provides"
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
X-List-Received-Date: Tue, 17 Jun 2014 13:46:31 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

I guess the file should be named  libmongoose_5.3.bb and not=20
libmongoose-5.3.bb

Tirsdag den 17. juni 2014 12:30:36 skrev Henric Eriksson:
> Hello,
>=20
> I've been working on creating a recipe for the library mongoose for u=
se
> in a custom layer in Yocto. The library provides a .so in /usr/lib an=
d a
> .h in /usr/include and is depended (DEPENDS=3D"libmongoose") on in an=
other
> recipe for a my main application. When trying to bitbake my image tho=
ugh
> it fails on the last stage do_rootfs.
>=20
> The recipe is quite simple:
>=20
> libmongoose-5.3.bb:
> -------------
> DESCRIPTION =3D "Mongoose is the most easy to use web server on the p=
lanet"
> SECTION =3D "libs"
> LICENSE =3D "GPLv2"
> HOMEPAGE =3D "http://code.google.com/p/mongoose"
> LIC_FILES_CHKSUM =3D
> "file://${COREBASE}/meta/COPYING.GPLv2;md5=3D751419260aa954499f7abaab=
aa882bbe"
> PR =3D "r0"
>=20
> SRC_URI =3D "git://github.com/cesanta/mongoose.git"
> SRCREV =3D "30a79651356e28fec240e921f8cd01c9a0a21388"
>=20
> S =3D "${WORKDIR}/git"
>=20
> CFLAGS +=3D "-W -Wall -I.. -pthread -g -pipe -fpic"
>=20
> do_compile() {
>      ${CC} ${CFLAGS} -c mongoose.c -o mongoose.o
>      ${CC} -shared -o libmongoose.so mongoose.o
> }
>=20
> do_install() {
>     install -d ${D}${libdir}
>     install -d ${D}${includedir}
>     install -m 0755 libmongoose.so ${D}${libdir}
>     install -m 0755 mongoose.h ${D}${includedir}
> }
> -------------
>=20
> Eventually though during do_rootfs, this error pops up:
>=20
> error: Can't install libmongoose-dev-5.3-r0@armv5te: no package provi=
des
> libmongoose =3D 5.3-r0
>=20
> I have tried to add both PACKAGES +=3D "libmongoose" and PACKAGES +=3D=

> "libmongoose-dev" in the recipe but nothing seems to help.
>=20
> Looking through Yocto I can see that it appends -dev and such based o=
n
> what files are provided by the package. But I guess since all the fil=
es
> from the package is provided by libmongoose-dev it dumps libmongoose.=

>=20
> I'm at a loss of where to go from here. What have I missed in my reci=
pe?
>=20
> Regards,
>=20
> Henric Eriksson

--=20
S=F8ren Holm

