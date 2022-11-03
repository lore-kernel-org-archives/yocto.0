Return-Path: <martin.leduc@luminator.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97477C4332F
	for <webhook@archiver.kernel.org>; Thu,  3 Nov 2022 19:54:55 +0000 (UTC)
Subject: Scope of the build parameters #systemd
To: yocto@lists.yoctoproject.org
From: "Martin Leduc" <martin.leduc@luminator.com>
X-Originating-Location: Drummondville, Quebec, CA (174.93.189.241)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Nov 2022 12:54:53 -0700
Message-ID: <EJtz.1667505293534778480.65wW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Tgel6oWaUhxzuDBKFb9U"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 19:54:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58477

--Tgel6oWaUhxzuDBKFb9U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm wondering how to figure out the scope of a set of parameters.=C2=A0 Exa=
mple.=C2=A0 I have an Image (my-core-image-minimal.bb) recipe containing th=
e following parameters
>=20
>=20
> ###########
> # systemd #
> ###########
> inherit s ystemd
> DISTRO_FEATURES_append =3D " systemd "
> DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D " sysvinit "
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
> IMAGE_ROOTFS_EXTRA_SPACE_append =3D "${@bb.utils.contains(" DISTRO_FEATUR=
ES ",
> " systemd ", " + 4096 ", "" ,d)}"
>=20

SystemD isn't deployed in my image as the init_manager.=C2=A0 Now, I put th=
e parameters into local.conf
>=20
>=20
> ###########
> # systemd #
> ###########
> INHERIT +=3D " systemd "
> DISTRO_FEATURES_append =3D " systemd "
> DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D " sysvinit "
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
> IMAGE_ROOTFS_EXTRA_SPACE_append =3D "${@bb.utils.contains(" DISTRO_FEATUR=
ES ",
> " systemd ", " + 4096 ", "" ,d)}"
>=20

It works!!!!

I'm confused because my comprehension is when I run bitbake my-core-image-m=
inimal , the parameters defined in this image are defined at the top level =
of the bitbake configuration parameters no?

Seriously, I have a lots of difficulties understanding the scope of a param=
eter, where to put it.=C2=A0 At the limit, my comprehension is that I can h=
ave two recipes:

* my-core-image-minimal-sysvinit.bb
* my-core-image-minimal-systemd.bb

The systemd one define the systemd parameters, the sysvinit doesn't impleme=
nt anything else.

What does I miss?

Thank you all :)
Martin

--Tgel6oWaUhxzuDBKFb9U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I'm wondering how to figure out the scope of a set =
of parameters.&nbsp; Example.&nbsp; I have an Image (my-core-image-minimal.=
bb) recipe containing the following parameters
<blockquote>
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div style=3D"color: #d4d4d4;"><span style=3D"color: #6a9955;">###########<=
/span></div>
<div style=3D"color: #d4d4d4;"><span style=3D"color: #6a9955;"># systemd #<=
/span></div>
<div style=3D"color: #d4d4d4;"><span style=3D"color: #6a9955;">###########<=
/span></div>
<div><span style=3D"color: #ce9178;"><span style=3D"color: #9cdcfe;">inheri=
t s</span></span><span style=3D"color: #ce9178;">ystemd</span></div>
<div style=3D"color: #d4d4d4;"><span style=3D"color: #9cdcfe;">DISTRO_FEATU=
RES_append</span> =3D <span style=3D"color: #ce9178;">" systemd "</span></d=
iv>
<div style=3D"color: #d4d4d4;"><span style=3D"color: #9cdcfe;">DISTRO_FEATU=
RES_BACKFILL_CONSIDERED</span> +=3D <span style=3D"color: #ce9178;">" sysvi=
nit "</span></div>
<div style=3D"color: #d4d4d4;"><span style=3D"color: #9cdcfe;">VIRTUAL-RUNT=
IME_init_manager</span> =3D <span style=3D"color: #ce9178;">"systemd"</span=
></div>
<div style=3D"color: #d4d4d4;"><span style=3D"color: #9cdcfe;">VIRTUAL-RUNT=
IME_initscripts</span> =3D <span style=3D"color: #ce9178;">"systemd-compat-=
units"</span></div>
<div style=3D"color: #d4d4d4;"><span style=3D"color: #9cdcfe;">IMAGE_ROOTFS=
_EXTRA_SPACE_append</span> =3D <span style=3D"color: #ce9178;">"${@bb.utils=
.contains("</span>DISTRO_FEATURES<span style=3D"color: #ce9178;">", "</span=
>systemd<span style=3D"color: #ce9178;">", "</span> + 4096<span style=3D"co=
lor: #ce9178;">", "" ,d)}"</span></div>
</div>
</blockquote>
SystemD isn't deployed in my image as the init_manager.&nbsp; Now, I put th=
e parameters into local.conf
<blockquote>
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #6a9955;">###########</span></div>
<div><span style=3D"color: #6a9955;"># systemd #</span></div>
<div><span style=3D"color: #6a9955;">###########</span></div>
<div><span style=3D"color: #9cdcfe;">INHERIT</span> +=3D <span style=3D"col=
or: #ce9178;">" systemd "</span></div>
<div><span style=3D"color: #9cdcfe;">DISTRO_FEATURES_append</span> =3D <spa=
n style=3D"color: #ce9178;">" systemd "</span></div>
<div><span style=3D"color: #9cdcfe;">DISTRO_FEATURES_BACKFILL_CONSIDERED</s=
pan> +=3D <span style=3D"color: #ce9178;">" sysvinit "</span></div>
<div><span style=3D"color: #9cdcfe;">VIRTUAL-RUNTIME_init_manager</span> =
=3D <span style=3D"color: #ce9178;">"systemd"</span></div>
<div><span style=3D"color: #9cdcfe;">VIRTUAL-RUNTIME_initscripts</span> =3D=
 <span style=3D"color: #ce9178;">"systemd-compat-units"</span></div>
<div><span style=3D"color: #9cdcfe;">IMAGE_ROOTFS_EXTRA_SPACE_append</span>=
 =3D <span style=3D"color: #ce9178;">"${@bb.utils.contains("</span>DISTRO_F=
EATURES<span style=3D"color: #ce9178;">", "</span>systemd<span style=3D"col=
or: #ce9178;">", "</span> + 4096<span style=3D"color: #ce9178;">", "" ,d)}"=
</span></div>
</div>
</blockquote>
It works!!!!<br /><br />I'm confused because my comprehension is when I run=
 bitbake my-core-image-minimal , the parameters defined in this image are d=
efined at the top level of the bitbake configuration parameters no?<br /><b=
r />Seriously, I have a lots of difficulties understanding the scope of a p=
arameter, where to put it.&nbsp; At the limit, my comprehension is that I c=
an have two recipes:<br />
<ul>
<li>my-core-image-minimal-sysvinit.bb</li>
<li>my-core-image-minimal-systemd.bb</li>
</ul>
The systemd one define the systemd parameters, the sysvinit doesn't impleme=
nt anything else.<br /><br />What does I miss?<br /><br />Thank you all :)<=
br />Martin<br /><br /><br />
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #ce9178;">&nbsp;</span></div>
</div>

--Tgel6oWaUhxzuDBKFb9U--

