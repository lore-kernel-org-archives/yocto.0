Return-Path: <ivastojanovic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AB0ECDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 09:00:35 +0000 (UTC)
Subject: Re: Remove packagegroup from image recipes
To: yocto@lists.yoctoproject.org
From: "Ivan Stojanovic" <ivastojanovic@gmail.com>
X-Originating-Location: Graz, Styria, AT (192.102.17.1)
X-Originating-Platform: Windows Chrome 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Oct 2023 02:00:30 -0700
References: <CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
In-Reply-To: <CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
Message-ID: <30180.1697619630482083755@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MePEB94I4k2zBAiqq9Tg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 09:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61390

--MePEB94I4k2zBAiqq9Tg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have 2 images, adios-image-standard and adios-image-recovery.
In adios-image-standard, I want to have rauc.
In adios-image-recovery due to lack of space, I want to remove it. It is a =
part of it since it is in DISTRO_FEATURES.

In meta-rauc layer, they add rauc to pacakgegroup-base: https://github.com/=
rauc/meta-rauc/blob/kirkstone/recipes-core/packagegroups/packagegroup-base.=
bbappend via https://github.com/rauc/meta-rauc/blob/kirkstone/recipes-core/=
packagegroups/packagegroup-base_rauc.inc. ( https://github.com/rauc/meta-ra=
uc/blob/kirkstone/recipes-core/packagegroups/packagegroup-base_rauc.inc )

I tried removing it with PACKAGE_EXCLUDE:
PACKAGE_EXCLUDE =3D "\
packagegroup-base-rauc \
"
as well as
PACKAGE_EXCLUDE =3D "\
rauc \
rauc-mark-good \
rauc-service \
"
I also tried with:
RDEPENDS:packagegroup-base:remove "packagegroup-base-rauc"

But in both cases I get that error.
I do not have any idea how I could remove it from DISTRO_FEATURES for that =
image. I think that is not possible.

If I remove it "manually" using ROOTFS_POSTPROCESS_COMMAND, I have to take =
care of all dependencies as well and it would be still be visible in .manif=
est file that it is there although it is not.

That is why I am looking for a more elegant way to achive it.

Thanks!

--MePEB94I4k2zBAiqq9Tg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have 2 images, adios-image-standard and adios-image-recovery.
<div>In adios-image-standard, I want to have rauc.</div>
<div>In adios-image-recovery due to lack of space, I want to remove it. It =
is a part of it since it is in DISTRO_FEATURES.</div>
<div>&nbsp;</div>
<div>In meta-rauc layer, they add rauc to pacakgegroup-base: <a href=3D"htt=
ps://github.com/rauc/meta-rauc/blob/kirkstone/recipes-core/packagegroups/pa=
ckagegroup-base.bbappend" target=3D"_blank" rel=3D"noopener">https://github=
.com/rauc/meta-rauc/blob/kirkstone/recipes-core/packagegroups/packagegroup-=
base.bbappend</a>&nbsp;via <a href=3D"https://github.com/rauc/meta-rauc/blo=
b/kirkstone/recipes-core/packagegroups/packagegroup-base_rauc.inc" target=
=3D"_blank" rel=3D"noopener">https://github.com/rauc/meta-rauc/blob/kirksto=
ne/recipes-core/packagegroups/packagegroup-base_rauc.inc.</a></div>
<div>&nbsp;</div>
<div>I tried removing it with PACKAGE_EXCLUDE:</div>
<div>PACKAGE_EXCLUDE =3D "\</div>
<div>&nbsp; packagegroup-base-rauc \</div>
<div>"</div>
<div>as well as</div>
<div>PACKAGE_EXCLUDE =3D "\</div>
<div>&nbsp; rauc \</div>
<div>&nbsp; rauc-mark-good \</div>
<div>&nbsp; rauc-service \</div>
<div>"</div>
<div>I also tried with:</div>
<div>RDEPENDS:packagegroup-base:remove "packagegroup-base-rauc"</div>
<div>&nbsp;</div>
<div>But in both cases I get that error.</div>
<div>I do not have any idea how I could remove it from DISTRO_FEATURES for =
that image. I think that is not possible.</div>
<div>&nbsp;</div>
<div>If I remove it "manually" using ROOTFS_POSTPROCESS_COMMAND, I have to =
take care of all dependencies as well and it would be still be visible in .=
manifest file that it is there although it is not.</div>
<div><br />That is why I am looking for a more elegant way to achive it.<br=
 /><br />Thanks!</div>

--MePEB94I4k2zBAiqq9Tg--

