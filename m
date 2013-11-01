Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BE30E01665
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 12:48:11 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VcKhV-0003Hz-11; Fri, 01 Nov 2013 20:48:09 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 1F6217ED6D;
	Fri,  1 Nov 2013 20:48:09 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Fri, 01 Nov 2013 20:48:08 +0100
Message-ID: <92224899.YSeEgxkEdL@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-11-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <52740457.5020101@aeonyx.ca>
References: <52740457.5020101@aeonyx.ca>
MIME-Version: 1.0
Subject: Re: bbappend files and "ERROR: no recipes available for"
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
X-List-Received-Date: Fri, 01 Nov 2013 19:48:11 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

Rename your bbappend-file to the exact name of the original recipe.=20

1.5 (dora) contains linux-firmware_git.bb in which case the bbappend sh=
ould be=20
named linux-firmware_git.bbappend.

Fredag den 1. november 2013 15:43:19 skrev Markus Svilans:
> Dear list,
>=20
> I am working on a compact filesystem image, that contains firmware on=
ly
> for the network hardware on the motherboard.
>=20
> Therefore, I created a linux-firmware.bbappend file, with the followi=
ng
>=20
> contents:
> > # Cherrypick the firmware files that we need for our hardware
> >=20
> > #FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >=20
> > PACKAGES +=3D "${PN}-rtl8168d-1"
> >=20
> > FILES_${PN}-rtl8168d-1 =3D " \
> >=20
> >   /lib/firmware/rtl_nic/rtl8168d-1.fw \
> >=20
> > "
>=20
> However, running "bitbake linux-firmware" fails with this bbappend fi=
le
>=20
> present:
> > ERROR: No recipes available for:
> > /home/markus/yocto/genericx86-64-dora-10.0.0/meta-markus/recipes-ke=
rnel/li
> > nux-firmware/linux-firmware.bbappend ERROR: Command execution faile=
d:
> > Exited with 1
>=20
> Other bbappend files, such as for custom kernel config for linux-yoct=
o,
> worked without complaints.
>=20
> So far, I was following the instructions for using bbappend files her=
e:
> http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#using=
-bbappe
> nd-files http://www.yoctoproject.org/docs/current/kernel-dev/kernel-d=
ev.html
>=20
>=20
>  From what I can see, I am setting up my linux-firmware.bbappend file=

> consistently with the instructions.
>=20
> What am I doing wrong here?
>=20
> Thanks very much
> Markus
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
S=F8ren Holm

