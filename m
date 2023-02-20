Return-Path: <ito@lineo.co.jp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFDC636D6
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 08:23:48 +0000 (UTC)
Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web11.8520.1676881423577167738
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 00:23:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: ito@lineo.co.jp)
Received: from [172.31.28.27] (vpn1.lineo.co.jp [203.141.200.204])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id 58035803179DE;
	Mon, 20 Feb 2023 17:23:41 +0900 (JST)
Message-ID: <61465e9d-b58c-ed17-486d-9ac670b1c127@lineo.co.jp>
Date: Mon, 20 Feb 2023 17:23:40 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] fltk recipe fails
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <e61cc66f-86de-f9fd-99a4-7118dbef9807@mistywest.com>
From: Takayasu Ito <ito@lineo.co.jp>
In-Reply-To: <e61cc66f-86de-f9fd-99a4-7118dbef9807@mistywest.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 08:23:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59249

Hi Ron

The patch file can be found at
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-suppo=
rt/fltk/fltk


On 2023/02/20 16:51, Mistyron wrote:
> Hi,
>=20
> I need too build fltk but the recipe from openembedded=20
> (http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-su=
pport/fltk/fltk.bb?h=3Dmaster) requires a patch file that I could not fin=
d. Hence I built my own recipe which looks something like:
> [fltk.bb]
> SUMMARY =3D "Fast Light Toolkit (FLTK) is a cross-platform GUI developm=
ent=20
> library."
> DESCRIPTION =3D "FLTK provides modern GUI functionality without the blo=
at=20
> and supports 3D graphics via OpenGL and its built-in GLUT emulation."
>=20
> LICENSE =3D "LGPLv2.1+"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D353c9fd4163eef6500f7e057aed0=
b083"
>=20
> SRCREV =3D "master"
> SRC_URI =3D "git://github.com/fltk/fltk.git;branch=3D${SRCREV}"
>=20
> S =3D "${WORKDIR}/git"
>=20
> inherit autotools
>=20
> do_configure_prepend() {
>  =C2=A0=C2=A0=C2=A0 ${WORKDIR}/git/autogen.sh
> }
> [/fltk.bb]
>=20
> I'm running into an issue with autoge.sh tho, the script appears simple=
:
> [autogen.sh]
> #! /bin/sh
> #
> # This file is no longer referred to in the documentation, it's kept
> # for backwards compatibility only.
> #
> # Just run `autoconf` instead to generate `configure` and you're done.
> #
> # The old README.Unix.txt stated that it should be executed from within
> # the "FLTK source-code directory", hence changing directories is not
> # useful and would break if the user's home directory contained spaces.
> # Changing directories has been removed in FLTK 1.4.0 and this file
> # has been simplified substantially.
> #
> # Instead of executing it as documented in pre-1.4 README files the new=
 docs
> # instruct to just execute `autoconf` which is sufficient and equivalen=
t to
> # the old instructions.
>=20
> autoconf --force || exit 1
>=20
> test -n "$NOCONFIGURE" || ./configure "$@"
> [/autogen.sh]
>=20
> However, when I attempt to build my image, I get something like:
> DEBUG: Executing shell function do_configure
> autoconf: error: no input file
> WARNING: exit code 1 from a shell command.
> ERROR: Execution of=20
> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/fltk/1.0-=
r0/temp/run.do_configure.242968' failed with exit code 1
>=20
> The autoconf man page states:
>=20
> "-f, --force
> consider all files obsolete"
> i.e. I would expect it to work w/o any input files. What am I missing=20
> and how can I get fltk built succesfully?
>=20
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59248): https://lists.yoctoproject.org/g/yocto/mess=
age/59248
> Mute This Topic: https://lists.yoctoproject.org/mt/97082226/3617373
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ito@lineo.co=
.jp]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Takayasu Ito
Yocto Project Ambassador
Solution Department Lineo Solutions, Inc.
https://www.lineo.co.jp/english/
Email: ito@lineo.co.jp


