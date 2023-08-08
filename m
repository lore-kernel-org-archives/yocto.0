Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77ADEB64DD
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 02:36:16 +0000 (UTC)
Subject: Re: How to add a few lines in config.txt in Yocto project for Raspberry Pi
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Aug 2023 19:36:09 -0700
References: <CAMKF1sphD-9rSQ96Q4Q7fYH-r+3ZMTRPo+046MwKez4HwQUbxg@mail.gmail.com>
In-Reply-To: <CAMKF1sphD-9rSQ96Q4Q7fYH-r+3ZMTRPo+046MwKez4HwQUbxg@mail.gmail.com>
Message-ID: <5592.1691462169979267701@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N1wZUxXRckrqkKNSrITo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 02:36:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60731

--N1wZUxXRckrqkKNSrITo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The recipe append name I used is rpi-config_git.bbappend.
It is placed in meta-custom/recipes-bsp/bootfiles/

The layer conf of the custom layer is like this:
# We have a conf and classes directory, add to BBPATH
BBPATH .=3D ":${LAYERDIR}"
# We have recipes-* directories, add to BBFILES
BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
${LAYERDIR}/recipes-*/*/*.bbappend"
BBFILE_COLLECTIONS +=3D "meta-farview"
BBFILE_PATTERN_meta-farview =3D "^${LAYERDIR}/"
BBFILE_PRIORITY_meta-farview =3D "19"
LAYERDEPENDS_meta-farview =3D "core"
LAYERSERIES_COMPAT_meta-farview =3D "kirkstone"

--N1wZUxXRckrqkKNSrITo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The recipe append name I used is rpi-config_git.bbappend.<br />It is placed=
 in meta-custom/recipes-bsp/bootfiles/<br /><br />The layer conf of the cus=
tom layer is like this:<br />
<div># We have a conf and classes directory, add to BBPATH</div>
<div>BBPATH .=3D ":${LAYERDIR}"</div>
<div># We have recipes-* directories, add to BBFILES</div>
<div>BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ${LAYERDIR}/recipes-*/*/*.bb=
append"</div>
<div>BBFILE_COLLECTIONS +=3D "meta-farview"</div>
<div>BBFILE_PATTERN_meta-farview =3D "^${LAYERDIR}/"</div>
<div>BBFILE_PRIORITY_meta-farview =3D "19"</div>
<div>LAYERDEPENDS_meta-farview =3D "core"</div>
<div>LAYERSERIES_COMPAT_meta-farview =3D "kirkstone"</div>
<div>&nbsp;</div>

--N1wZUxXRckrqkKNSrITo--

