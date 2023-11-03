Return-Path: <roman.leduc@univ-pau.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2063C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 21:23:19 +0000 (UTC)
Subject: Re: Private: Re: [yocto] [nanbield] meta-intel-fpga layer support
To: yocto@lists.yoctoproject.org
From: roman.leduc@univ-pau.fr
X-Originating-Location: Montardon, Nouvelle-Aquitaine, FR (77.84.238.6)
X-Originating-Platform: Windows Chrome 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Nov 2023 14:23:15 -0700
References: <40A4B9D5-E62E-4375-9F6F-2DD9C1EBCACF@arm.com>
In-Reply-To: <40A4B9D5-E62E-4375-9F6F-2DD9C1EBCACF@arm.com>
Message-ID: <12718.1699046595108856154@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kADhyLPfyx1i1Yoxhb6s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 21:23:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61608

--kADhyLPfyx1i1Yoxhb6s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yes sorry, new here as new with yocto,

Actually I discovered yocto through guides along with intel fpga-soc boards=
. These guides specify briefly how to use bitbake to build our system file =
based on poky, and add existing recipes/layers.

All what I did is the following :

- I want recipe "django" which depends on layers "openembedded-core", "meta=
-python", "meta-oe".
- I git clone in my folder the "meta-openembedded" repo that contains "meta=
-python" and "meta-oe". I don't clone "openembedded-core" since it is alrea=
dy included (partially) in "poky" from what I understood.
- I add django to my local.conf=C2=A0 : CORE_IMAGE_EXTRA_INSTALL +=3D " dja=
ngo "
- I add layers to my bblayers.conf : BBLAYERS +=3D " ${TOPDIR}/../meta-open=
embedded/meta-python "
: BBLAYERS +=3D " ${TOPDIR}/../meta-openembedded/meta-oe "
- and I build the systemfile with bitbake "core-image-full-cmdline" for ins=
tance (it can either be core-image-minimal, I guess this doesn't affect beh=
avior on adding packages)

I didn't modify anything else beside adding these lines in my .conf files, =
since guide I was following didn't mention something else necessary. Did I =
miss a step for adding modules of a recipe ? I thought they were all includ=
ed by default.

I might mention but I suppose it doesn't affect something, I changed ' MACH=
INE =3D "arria10" ' in local.conf which is my fpga-soc device.

Thanks again,

--kADhyLPfyx1i1Yoxhb6s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yes sorry, new here as new with yocto,<br /><br />Actually I discovered yoc=
to through guides along with intel fpga-soc boards. These guides specify br=
iefly how to use bitbake to build our system file based on poky, and add ex=
isting recipes/layers.<br /><br />All what I did is the following :<br /><b=
r />- I want recipe "django" which depends on layers "openembedded-core", "=
meta-python", "meta-oe".<br />- I git clone in my folder the "meta-openembe=
dded" repo that contains "meta-python" and "meta-oe". I don't clone "openem=
bedded-core" since it is already included (partially) in "poky" from what I=
 understood.<br />- I add django to my local.conf&nbsp; :&nbsp;<span style=
=3D"background-color: initial; color: var(--color-brown); font-family: var(=
--font-family-monospace);">CORE_IMAGE_EXTRA_INSTALL +=3D " django "<br />- =
I add layers to my bblayers.conf :&nbsp;</span><span style=3D"color: var(--=
pre-foreground); font-family: var(--font-family-monospace);">BBLAYERS +=3D =
" ${TOPDIR}/../meta-openembedded/meta-python "<br /></span>&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; : BBLAYERS +=3D " ${TOPDIR}/../meta-openembedded/met=
a-oe<span style=3D"background-color: initial; color: var(--color-brown); fo=
nt-family: var(--font-family-monospace);">&nbsp;"<br />- and I build the sy=
stemfile with bitbake "core-image-full-cmdline" for instance (it can either=
 be core-image-minimal, I guess this doesn't affect behavior on adding pack=
ages)<br /><br />I didn't modify anything else beside adding these lines in=
 my .conf files, since guide I was following didn't mention something else =
necessary. Did I miss a step for adding modules of a recipe ? I thought the=
y were all included by default.<br /><br />I might mention but I suppose it=
 doesn't affect something, I changed ' MACHINE =3D "arria10" ' in local.con=
f which is my fpga-soc device.<br /><br />Thanks again,<br /></span>

--kADhyLPfyx1i1Yoxhb6s--

