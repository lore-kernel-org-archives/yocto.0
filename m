Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5BC36011
	for <webhook@archiver.kernel.org>; Mon, 31 Mar 2025 17:09:14 +0000 (UTC)
Subject: ERROR: linux-qoriq-6.12.3+git-r0 do_unpack: Directory name ${@d.getVar('S') contains unexpanded bitbake variable. This may cause build failures and WORKDIR polution.
To: yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: US (136.226.100.205)
X-Originating-Platform: Windows Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 31 Mar 2025 10:09:05 -0700
Message-ID: <8dqs.1743440945224096658.swJ0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zxnpRjbMzPJCFOtHTSKk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 17:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65038

--zxnpRjbMzPJCFOtHTSKk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So I get the error, but the only place I can see this construct occurring i=
n the ENTIRE yocto project is in "poky/meta/classes-global/base.bbclass" wh=
ich is one of yours, correct?

Line 158:

>=20
> do_unpack[cleandirs] =3D "${@d.getVar('S') if
> os.path.normpath(d.getVar('S')) !=3D os.path.normpath(d.getVar('WORKDIR')=
)
> else os.path.join('${S}', 'patches')}"
>=20

I am getting this while building like this: "bitbake linux-qoriq"

I have no mods to the yocto or meta-qoriq layers (I'm lying here, I took th=
e 2 layers under meta-qoriq and moved them both up so they are at the same =
level). I'm just trying to build the recipe linux-qoriq.

There are no direct references to the do_unpack() method in any of the refe=
renced files for linux-qoriq so I'm puzzled here. How is this happening and=
 how do I fix it? I assume that there isn't a bug in Yocto (meta-qoriq is a=
nother matter) but I can't be the only person to have seen this happen.

Cheers!!

--zxnpRjbMzPJCFOtHTSKk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So I get the error, but the only place I can see this construct occurr=
ing in the ENTIRE yocto project is in "poky/meta/classes-global/base.bbclas=
s" which is one of yours, correct?</div>
<div>&nbsp;</div>
<div>Line 158:</div>
<blockquote>
<div>do_unpack[cleandirs] =3D "${@d.getVar('S') if os.path.normpath(d.getVa=
r('S')) !=3D os.path.normpath(d.getVar('WORKDIR')) else os.path.join('${S}'=
, 'patches')}"</div>
</blockquote>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>I am getting this while building like this: "bitbake linux-qoriq"</div=
>
<div>&nbsp;</div>
<div>I have no mods to the yocto or meta-qoriq layers (I'm lying here, I to=
ok the 2 layers under meta-qoriq and moved them both up so they are at the =
same level). I'm just trying to build the recipe linux-qoriq.</div>
<div>&nbsp;</div>
<div>There are no direct references to the do_unpack() method in any of the=
 referenced files for linux-qoriq so I'm puzzled here. How is this happenin=
g and how do I fix it? I assume that there isn't a bug in Yocto (meta-qoriq=
 is another matter) but I can't be the only person to have seen this happen=
.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--zxnpRjbMzPJCFOtHTSKk--

