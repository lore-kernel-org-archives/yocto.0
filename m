Return-Path: <mns@gomspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB980CCD190
	for <webhook@archiver.kernel.org>; Wed, 18 Sep 2024 08:39:46 +0000 (UTC)
Subject: Re: [yocto] read-only-rootfs and opkg
To: "Alex Stewart" <alex.stewart@emerson.com>, yocto@lists.yoctoproject.org
From: "Martin Siegumfeldt" <mns@gomspace.com>
X-Originating-Location: Copenhagen, Capital Region, DK (79.171.149.174)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Sep 2024 01:39:42 -0700
References: <DM4PR10MB613491F6677B95E3959C93F794612@DM4PR10MB6134.namprd10.prod.outlook.com>
In-Reply-To: <DM4PR10MB613491F6677B95E3959C93F794612@DM4PR10MB6134.namprd10.prod.outlook.com>
Message-ID: <28131.1726648782868302764@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="K5ZDEqH7RUkxoMbMZDqg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Sep 2024 08:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63858

--K5ZDEqH7RUkxoMbMZDqg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thanks for your input - highly appreciated.

It appears you have a point regarding the variable assignment - 'bitbake-ge=
tvar OPKGLIBDIR' indeed indicates the intended assignment does not occur:
$ bitbake-getvar --value OPKGLIBDIR
NOTE: Starting bitbake server...
/var/lib

Doing the strong assignment (OPKGLIBDIR =3D "/data-os/opkg") does not make =
a difference, which puzzles me as all assigments (I am able to grep) are we=
ak:

$ rg ^OPKGLIBDIR
meta/classes-recipe/rootfs_ipk.bbclass
30:OPKGLIBDIR ??=3D "${localstatedir}/lib"
meta/recipes-devtools/opkg/opkg_0.6.1.bb
32:OPKGLIBDIR ??=3D "${target_localstatedir}/lib"
meta/classes-global/package_ipk.bbclass
24:OPKGLIBDIR ??=3D "${localstatedir}/lib"

However, based on your reply, I am starting to wonder whether what I am try=
ing to achieve is at all possible. The mount '/data-os' is a dedicated part=
ition mounted R/W and used by overlayfs-etc, my assumption was to configure=
 opkg to use this for the meta-data. But if the meta-data is rendered build=
-time during rootfs creation, I do not see how this is achievable?

Thanks,
Martin

--K5ZDEqH7RUkxoMbMZDqg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Alex,</div>
<div>&nbsp;</div>
<div>
<div>Thanks for your input - highly appreciated.</div>
<div>&nbsp;</div>
<div>It appears you have a point regarding the variable assignment - 'bitba=
ke-getvar OPKGLIBDIR' indeed indicates the intended assignment does not occ=
ur:</div>
<div>$ bitbake-getvar --value OPKGLIBDIR<br />NOTE: Starting bitbake server=
...<br />/var/lib</div>
<div>&nbsp;</div>
<div>Doing the strong assignment (OPKGLIBDIR =3D "/data-os/opkg") does not =
make a difference, which puzzles me as all assigments (I am able to grep) a=
re weak:</div>
<div><br />$ rg ^OPKGLIBDIR&nbsp;<br />meta/classes-recipe/rootfs_ipk.bbcla=
ss<br />30:OPKGLIBDIR ??=3D "${localstatedir}/lib"</div>
<div>meta/recipes-devtools/opkg/opkg_0.6.1.bb<br />32:OPKGLIBDIR ??=3D "${t=
arget_localstatedir}/lib"</div>
<div>meta/classes-global/package_ipk.bbclass<br />24:OPKGLIBDIR ??=3D "${lo=
calstatedir}/lib"</div>
<div>&nbsp;</div>
<div>However, based on your reply, I am starting to wonder whether what I a=
m trying to achieve is at all possible. The mount '/data-os' is a dedicated=
 partition mounted R/W and used by overlayfs-etc, my assumption was to conf=
igure opkg to use this for the meta-data. But if the meta-data is rendered =
build-time during rootfs creation, I do not see how this is achievable?</di=
v>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Martin</div>
<div>&nbsp;</div>
</div>

--K5ZDEqH7RUkxoMbMZDqg--

