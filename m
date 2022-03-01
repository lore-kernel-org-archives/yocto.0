Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B977FC433F5
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 09:26:03 +0000 (UTC)
Subject: Re: On managing debug and production builds
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Mar 2022 01:26:03 -0800
References: 
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
In-Reply-To: 
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
Message-ID: <19024.1646126763231751613@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MOpOr5kfb6i2Loiug6Jo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 09:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56335

--MOpOr5kfb6i2Loiug6Jo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Thanks Tomasz. I will check kas.

No problem

>=20
> Yes, for selecting some of the packages I have created prod and debug
> image
> recipes.But this did not work for the kernel as the kernel recipe is
> picked
> as part of PROVIDERin machine conf.

What are the difference there? You want to use different config on prod and=
 debug images?
Maybe add it as config fragments? Then you would need to add some global va=
riable to
distinguish when use given .cfg file.

[1] https://docs.yoctoproject.org/singleindex.html#creating-configuration-f=
ragments

>=20
> SoI had to use 2 conf to have the
> IMAGE_FEATURES (orany other var)set differently for prod and debug. This
> is for
> building the kernelrecipie differently for prodand debug. Setting the
> IMAGE_FEATURES in the image recipe (and not inconf) causes2 problems. One
> is
> that kernel and other bootloaders recipes arepicked early via PROVIDER in
> conf
> and not as packages included in image recipe.

Is that a problem?

>=20
> Secondly,setting the var in the
> image recipe breaks this command for e.g.
> "bitbake base-image-prod.bbbase-image-debug.bb".

Didn't you want to distinguish this to builds to be able to run `bitbake ba=
se-image-prod` or
`bitbake base-image-debug`?

>=20
> Since the command parses the recipes only once for both image creation.

Nevertheless I would greatly recommend you to use kas. In simple .yml file =
you
could prepare different `local.conf` per configuration prod/debug.

[2] https://kas.readthedocs.io/en/latest/userguide.html#project-configurati=
on

Regards,
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--MOpOr5kfb6i2Loiug6Jo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>Thanks Tomasz. I will check kas.</blockquote>
No problem<br />
<blockquote>Yes, for selecting some of the packages I have created prod and=
 debug image<br />recipes.But this did not work for the kernel as the kerne=
l recipe is picked<br />as part of PROVIDERin machine conf.</blockquote>
<p>What are the difference there? You want to use different config on prod =
and debug images?<br />Maybe add it as config fragments? Then you would nee=
d to add some global variable to<br /><span class=3D"VIiyi" lang=3D"en"><sp=
an class=3D"JLqJ4b ChMk0b" data-language-for-alternatives=3D"en" data-langu=
age-to-translate-into=3D"pl" data-phrase-index=3D"0" data-number-of-phrases=
=3D"1"><span>distinguish</span></span></span> when use given .cfg file.</p>
<p>[1] <a href=3D"https://docs.yoctoproject.org/singleindex.html#creating-c=
onfiguration-fragments" target=3D"_blank" rel=3D"noopener">https://docs.yoc=
toproject.org/singleindex.html#creating-configuration-fragments</a></p>
<blockquote>SoI had to use 2 conf to have the<br />IMAGE_FEATURES (orany ot=
her var)set differently for prod and debug. This is for<br />building the k=
ernelrecipie differently for prodand debug. Setting the<br />IMAGE_FEATURES=
 in the image recipe (and not inconf) causes2 problems. One is <br />that k=
ernel and other bootloaders recipes arepicked early via PROVIDER in conf<br=
 />and not as packages included in image recipe.</blockquote>
Is that a problem?<br />
<blockquote>Secondly,setting the var in the<br />image recipe breaks this c=
ommand for e.g.<br />"bitbake base-image-prod.bbbase-image-debug.bb".</bloc=
kquote>
<p>Didn't you want to distinguish this to builds to be able to run `bitbake=
 base-image-prod` or<br />`bitbake base-image-debug`?</p>
<blockquote>Since the command parses the recipes only once for both image c=
reation.</blockquote>
<p><br />Nevertheless I would greatly recommend you to use kas. In simple .=
yml file you<br />could prepare different `local.conf` per configuration pr=
od/debug.</p>
<p>[2] <a href=3D"https://kas.readthedocs.io/en/latest/userguide.html#proje=
ct-configuration" target=3D"_blank" rel=3D"noopener">https://kas.readthedoc=
s.io/en/latest/userguide.html#project-configuration</a></p>
<p>Regards,<br />Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />G=
PG: 5C495EA3EBEECA59<br /><a href=3D"https://3mdeb.com" target=3D"_blank" r=
el=3D"noopener">https://3mdeb.com</a> | @3mdeb_com</p>

--MOpOr5kfb6i2Loiug6Jo--

