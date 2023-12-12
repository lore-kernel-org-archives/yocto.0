Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C7F7C4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 18:51:35 +0000 (UTC)
Subject: Re: [yocto] do_rootfs failed
To: Khem Raj <raj.khem@gmail.com>,yocto@lists.yoctoproject.org
From: daniele.lugli@gmail.com
X-Originating-Location: Marina di Ravenna, Emilia-Romagna, IT (176.246.31.108)
X-Originating-Platform: Windows Opera 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Dec 2023 10:51:28 -0800
References: <CAMKF1soGMfurWU73f7SVRQ_owbNBepor_z+WbMSJ7ThXhC-3UA@mail.gmail.com>
In-Reply-To: <CAMKF1soGMfurWU73f7SVRQ_owbNBepor_z+WbMSJ7ThXhC-3UA@mail.gmail.com>
Message-ID: <16371.1702407088705855227@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ik5XVCiw6B5WNLU4uqou"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 18:51:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61865

--Ik5XVCiw6B5WNLU4uqou
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you Khem for your reply.

From meta-poky/conf/distro/poky.conf:
DISTRO =3D "poky"
DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
DISTRO_VERSION =3D "4.3+snapshot-${METADATA_REVISION}"
DISTRO_CODENAME =3D "nanbield"

From bitbake:
Build Configuration:
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2.6.1"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-poky-linux"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "genericx86-64"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "4.3+snapshot-4bb222e0d71a4cb1=
59b8a4f1a90b65b1af32ac10"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "m64 core2"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""
meta
meta-poky
meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:4bb222e0d71a4cb159b8a4=
f1a90b65b1af32ac10"
meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:5ad7203=
f68987461baaf2699378d0cf36c11d6c2"
meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:5cfefd9a8ff1=
f5a3534c1ba9d7d7f6971ed5d56f"
meta-realtime=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:489e1d6b34e46f845a4bfe=
6461a39c6a4bcb7794"

Working on Ubuntu 22.04.3 in VirtualBox

--Ik5XVCiw6B5WNLU4uqou
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you Khem for your reply.<br /><br />From meta-poky/conf/distro/poky.c=
onf:<br />
<div><span style=3D"color: #0000ff;">DISTRO =3D "poky"</span></div>
<div><span style=3D"color: #0000ff;">DISTRO_NAME =3D "Poky (Yocto Project R=
eference Distro)"</span></div>
<div><span style=3D"color: #0000ff;">DISTRO_VERSION =3D "4.3+snapshot-${MET=
ADATA_REVISION}"</span></div>
<div><span style=3D"color: #0000ff;">DISTRO_CODENAME =3D "nanbield"</span><=
br /><br /></div>
<div>From bitbake:<br />
<div><span style=3D"color: #0000ff;">Build Configuration:</span></div>
<div><span style=3D"color: #0000ff;">BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "2.6.1"</span></div>
<div><span style=3D"color: #0000ff;">BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; =3D "x86_64-linux"</span></div>
<div><span style=3D"color: #0000ff;">NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =
=3D "universal"</span></div>
<div><span style=3D"color: #0000ff;">TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "x86_64-poky-linux"</span></div>
<div><span style=3D"color: #0000ff;">MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; =3D "genericx86-64"</span></div>
<div><span style=3D"color: #0000ff;">DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;=3D "poky"</span></div>
<div><span style=3D"color: #0000ff;">DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nb=
sp;=3D "4.3+snapshot-4bb222e0d71a4cb159b8a4f1a90b65b1af32ac10"</span></div>
<div><span style=3D"color: #0000ff;">TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbs=
p; =3D "m64 core2"</span></div>
<div><span style=3D"color: #0000ff;">TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D ""</span></div>
<div><span style=3D"color: #0000ff;">meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;</span></div>
<div><span style=3D"color: #0000ff;">meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;&nbsp;</span></div>
<div><span style=3D"color: #0000ff;">meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nb=
sp;=3D "master:4bb222e0d71a4cb159b8a4f1a90b65b1af32ac10"</span></div>
<div><span style=3D"color: #0000ff;">meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; =3D "master:5ad7203f68987461baaf2699378d0cf36c11d6c2"</sp=
an></div>
<div><span style=3D"color: #0000ff;">meta-intel&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f"</span></=
div>
<div><span style=3D"color: #0000ff;">meta-realtime&nbsp; &nbsp; &nbsp; &nbs=
p; =3D "master:489e1d6b34e46f845a4bfe6461a39c6a4bcb7794"</span></div>
<div><br />Working on Ubuntu 22.04.3 in VirtualBox&nbsp;</div>
</div>

--Ik5XVCiw6B5WNLU4uqou--

