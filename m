Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90817E017DC
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 04:08:42 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VcCam-0007ww-1x; Fri, 01 Nov 2013 12:08:40 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 5EB337F01F;
	Fri,  1 Nov 2013 12:08:40 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Fri, 01 Nov 2013 12:08:39 +0100
Message-ID: <2855827.uSYK9gN9lT@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-11-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <52737C80.2020702@dynamicdevices.co.uk>
References: <52737C80.2020702@dynamicdevices.co.uk>
MIME-Version: 1.0
Subject: Re: [meta-mono] Question about Q/A installed vs shipped failure
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
X-List-Received-Date: Fri, 01 Nov 2013 11:08:43 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Fredag den 1. november 2013 10:03:44 skrev Alex J Lennon:
> Hi,
>=20
> I'm looking at at the gtk-sharp recipe in meta-mono:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono=
/gtk-sh
> arp/gtk-sharp_2.10.2.bb
>=20
> This defines the contents of various gtk-sharp related packages makin=
g
> use of FILES_foo =3D and PACKAGES =3D
>=20
> When I try to build against the Yocto head it fails a Q/A check with
> "ERROR: QA Issue: gtk-sharp: Files/directories were installed but not=

> shipped"
>=20
> Normally I would expect the extraneous files to be found in the image=

> tree and add do_install_append() to rm the unneeded files from {$}D/f=
oo/bar
>=20
> However the behaviour of this recipe seems different.
>=20
> For some reason the extraneous files are being found in the ../packag=
e
> tree. They are put there by the do_package() step, which is executed
> after my do_install_append().

I have expecienced a simillar behaviour while building an application u=
sing=20
qmake. In my case all the source-files where for some reason copied int=
o the=20
package-directory like you descrive.

>=20
> I have tried adding a do_package_append() which I thought might help =
but
> bitbake won't accept this.
>=20
> Can anybody advise:
>=20
> (a) if files being in ./package indicates a problem with the recipe o=
r
> if this is correct behaviour, and
> (b) what is recommended practice to deal with this?
>=20
> For now I am adding INSANE_SKIP_${PN} =3D "installed-vs-shipped" to t=
he
> recipe but I'd rather not disable Q/A in this manner.

I did the same thing.

>=20
> Thanks,
>=20
> Alex

--=20
S=F8ren Holm

