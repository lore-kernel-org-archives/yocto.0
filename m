Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25385C433EF
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 08:33:20 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web09.8016.1636619594307540547
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 00:33:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199,
 mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C60D7FF802;
	Thu, 11 Nov 2021 08:33:11 +0000 (UTC)
Date: Thu, 11 Nov 2021 09:33:07 +0100
From: Quentin Schulz <foss@0leil.net>
To: yocto@lists.yoctoproject.org, vishal.rana118@gmail.com
Subject: 
 =?US-ASCII?Q?Re=3A_=5Byocto=5D_Unable_to_parse_/home/PATH/meta-swupdat?=
 =?US-ASCII?Q?e/recipes-support/swupdate/swupdate=5Fgit=2Ebb_=23swupdate?=
In-Reply-To: <oXe3.1636605764505636153.kXhn@lists.yoctoproject.org>
References: <oXe3.1636605764505636153.kXhn@lists.yoctoproject.org>
Message-ID: <A08FCEE5-72E6-47DF-A80E-164F77D83EA2@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 08:33:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55310

Hi Vishal,

On November 11, 2021 5:42:44 AM GMT+01:00, vishal=2Erana118@gmail=2Ecom wr=
ote:
>Hi Team,
>
>I am new with Yocto and SWupdate framework=2E I am trying to integrate SW=
update framework in our existing yocto code=2E
>I am using *SUMO version*=2E while trying to build kernel image I am gett=
ing below error=2E
>*MACHINE=3Dimx6s-comg-mtech DISTRO=3Dfsl-imx-fb EULA=3D1 source setup-env=
ironment build-mtech*
>*bitbake linux-comg-mtech-4=2E14=2E78=2Elocal*
>
>////////////////////////////////////////////////////////Error log////////=
///////////////////////////////////////////////////////////////////////////=
//////////////////////////////////////////////////////
>ERROR: Unable to parse /home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BS=
P/yocto/sources/meta-swupdate/recipes-support/swupdate/swupdate_git=2Ebb
>Traceback (most recent call last):
>File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/p=
oky/bitbake/lib/bb/parse/__init__=2Epy", line 117, in handle(fn=3D'/home/Mt=
ech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-swupdate/rec=
ipes-support/swupdate/swupdate_git=2Ebb', data=3D<bb=2Edata_smart=2EDataSma=
rt object at 0x7f2675a782b0>, include=3D0):
>with data=2Einchistory=2Einclude(fn):
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return h['handle=
'](fn, data, include)
>raise ParseError("not a BitBake file", fn)
>File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/p=
oky/bitbake/lib/bb/parse/parse_py/BBHandler=2Epy", line 154, in handle(fn=
=3D'/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-=
swupdate/recipes-support/swupdate/swupdate_git=2Ebb', d=3D<bb=2Edata_smart=
=2EDataSmart object at 0x7f2675a782b0>, include=3D0):
>if ext !=3D "=2Ebbclass" and include =3D=3D 0:
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ast=2Emulti_finalize(fn, d)
>
>File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/p=
oky/bitbake/lib/bb/parse/ast=2Epy", line 391, in multi_finalize(fn=3D'/home=
/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-swupdate/=
recipes-support/swupdate/swupdate_git=2Ebb', d=3D<bb=2Edata_smart=2EDataSma=
rt object at 0x7f2675a782b0>):
>logger=2Edebug(1, "Appending =2Ebbappend file %s to %s", append, fn)
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb=2Eparse=2EBBHandler=2Ehandle(append, d, T=
rue)
>
>File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/p=
oky/bitbake/lib/bb/parse/parse_py/BBHandler=2Epy", line 132, in handle(fn=
=3D'/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-=
mylayer/recipes-support/swupdate/swupdate_%d', d=3D<bb=2Edata_smart=2EDataS=
mart object at 0x7f2675a782b0>, include=3DTrue):
>
>>=C2=A0 =C2=A0 abs_fn =3D resolve_file(fn, d)
>
>File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/p=
oky/bitbake/lib/bb/parse/__init__=2Epy", line 141, in resolve_file(fn=3D'/h=
ome/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-mylaye=
r/recipes-support/swupdate/swupdate_%d', d=3D<bb=2Edata_smart=2EDataSmart o=
bject at 0x7f2675a782b0>):
>if not os=2Epath=2Eisfile(fn):
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise IOError(errno=2EENOENT, "file %s not f=
ound" % fn)
>
>FileNotFoundError: [Errno 2] file /home/Mtech/Graphics_Gx_Mtech/Graphics_=
GX_Mtech/BSP/yocto/sources/meta-mylayer/recipes-support/swupdate/swupdate_%=
d not found

What's the exact filename of files in the home/Mtech/Graphics_Gx_Mtech/Gra=
phics_GX_Mtech/BSP/yocto/sources/meta-mylayer/recipes-support/swupdate/ dir=
ectory?

I suspect that you have a swupdate_%d=2Ebbappend which isn't valid in bitb=
ake=2E It should be swupdate_%=2Ebbappend=2E

Cheers
Quentin

>/////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////
>
>Not able to understand the root cause of this because without adding "met=
a-swupdate" layer I am able to build the code=2E
>Please help me to resolve this issue=2E
>
>Regards,
>Vishal Rana

