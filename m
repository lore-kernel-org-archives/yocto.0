Return-Path: <ito@lineo.co.jp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B562C61DA4
	for <webhook@archiver.kernel.org>; Mon,  6 Feb 2023 13:44:54 +0000 (UTC)
Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web11.53379.1675691088094447470
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Feb 2023 05:44:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: ito@lineo.co.jp)
Received: from [192.168.3.12] (softbank126088165209.bbtec.net [126.88.165.209])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id 26135803179D1;
	Mon,  6 Feb 2023 22:44:45 +0900 (JST)
Message-ID: <fece26dd-5b2e-2bfd-60a4-c979a0022b3b@lineo.co.jp>
Date: Mon, 6 Feb 2023 22:44:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] [OE-core] Getting rid of "The license listed
 LGPL-2.1-or-later was not in the licenses collected for recipe
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <CAJw=dJ_iZu_jr+B35dujL=e+Pd_Z3g6NAqaRe=jMVxyc98dKSQ@mail.gmail.com>
 <CAJw=dJ9yVnAANez-4EaLeKkLbUTCE4_NXUgF-R643VGJOVL0VQ@mail.gmail.com>
 <CAJw=dJ9jhe8cSdubV2LLtbjOH-ovBA=vbAwuhj3Kk8h7rdbQDQ@mail.gmail.com>
From: Takayasu Ito <ito@lineo.co.jp>
In-Reply-To: <CAJw=dJ9jhe8cSdubV2LLtbjOH-ovBA=vbAwuhj3Kk8h7rdbQDQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 13:44:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59180

Hi NIKHIL.

The name of the license file has been changed to accommodate SPDX.
The part of the recipe that specifies the license file with the warning n=
eeds to be replaced with the old name listed in the=20
update history at the URL below.
https://git.yoctoproject.org/poky/commit/meta/files/common-licenses?id=3D=
2456f523cfbbae0e509797a0aefa9733f2cb13e3

On 2023/02/06 13:43, NIKHIL PATIL wrote:
> hi , can someone reply on this
>=20
> On Fri, Feb 3, 2023 at 7:48 PM NIKHIL PATIL <nikhilvp29@gmail.com <mail=
to:nikhilvp29@gmail.com>> wrote:
>=20
>=20
>=20
>     ---------- Forwarded message ---------
>     From: *NIKH PATIILL* <nikhilvp29@gmail.com <mailto:nikhilvp29@gmail=
.com>>
>     Date: Fri, Feb 3, 2023 at 7:46 PM
>     Subject: Re: Re: [OE-core] Getting rid of "The license listed LGPL-=
2.1-or-later was not in the licenses collected for recipe
>     To: <openembedded-core@lists.openembedded.org <mailto:openembedded-=
core@lists.openembedded.org>>
>=20
>=20
>     Hi team ,
>      =C2=A0 =C2=A0 =C2=A0i have=C2=A0taken the recipes=C2=A0from upstre=
am (kirkstone) and put it in dunfell branch . so now i am below warnings =
getting
>     warnings
>=20
>     *[2023-02-02T14:54:09.524Z] WARNING: do_rootfs: The license listed =
LGPL-2.1-or-later was not in the licenses collected for
>     recipe gnutls *
>=20
>     *[2023-02-02T14:54:09.524Z] WARNING: do_rootfs: The license listed =
GPL-3.0-or-later was not in the licenses collected for
>     recipe gnutls *
>     *
>     *
>     so for this i have added respective licenses in common-licenses and=
 added path in layer.conf but still this warnings exists
>     as well as i have tried multiple ways to resolve this but not happe=
ning .
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 May I know what will be the pos=
sible solution for this ?
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 THANKS IN ADVANCE
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59179): https://lists.yoctoproject.org/g/yocto/mess=
age/59179
> Mute This Topic: https://lists.yoctoproject.org/mt/96723405/3617373
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ito@lineo.co=
.jp]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Takayasu Ito
Solution Department, Lineo Solutions, Inc.
https://www.lineo.co.jp/english/
Email: ito@lineo.co.jp
Yocto Project Ambassador


