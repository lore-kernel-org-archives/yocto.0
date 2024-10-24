Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39E96D0BB5F
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 05:02:35 +0000 (UTC)
Subject: Re: [yocto] populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 #yocto
To: "umeshyv" <umeshyv@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Erlangen, Bavaria, DE (147.161.171.73)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Oct 2024 22:02:28 -0700
References: <hr8z.1729679886163625789.9CMP@lists.yoctoproject.org>
In-Reply-To: <hr8z.1729679886163625789.9CMP@lists.yoctoproject.org>
Message-ID: <17835.1729746148931815318@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NG6Krd0B9eeUEgx1Jz0v"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 05:02:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64101

--NG6Krd0B9eeUEgx1Jz0v
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2024 at 12:39 PM, umeshyv wrote:

>=20
> Hi
>=20
> I get below error for the recipe which copies .tgz files to a directory
>=20
> ERROR: lib32-xxxxxx-image-1.0-r0 do_prepare_recipe_sysroot: Manifest
> /home/x/projects/x/build-x/tmp/sstate-control/manifest-x86_64_ubuntu-20.0=
4-sigma-tools-native.populate_sysroot
> not found in x86_64 x86_64_ubuntu-20.04 (variant '')?
>=20
> Here is my recipe
>=20
> SUMMARY =3D "Tools"
> LICENSE =3D "CLOSED"
> SAVEDDIR :=3D "${THISDIR}/files"
>=20
> SRC_URI =3D "file://1xx.tgz \
> file://2xx.tgz \
> file://3xx.tgz \
> file://4xx.tgz"
>=20
> do_install() {
> install -d ${D}/opt/tools
> install -m 0755 =C2=A0${SAVEDDIR}/*.tgz ${D}/opt/tools
> }
> FILES_${PN} +=3D "/opt/tools/*"
>=20
> Looking for suggestions for this error. I did trails writing
> do_prepare_recipe_sysroot() {} but I get same error.
>=20
>=20
> Please help me on this regard.
>=20
>=20
> Thanks
> umesh
>=20
>=20

You are not supposed to copy those files directly from the files directory,=
 as Yocto will automatically copy them to your WORKDIR with the do_fetch() =
task. Instead try to install them from the WORKDIR directory and remove thi=
s SAVEDIR variable, you don't really need that.

Aleksandar

--NG6Krd0B9eeUEgx1Jz0v
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Wed, Oct 23, 2024 at 12:39 PM, umeshyv wrote:</div>
<div>
<blockquote>
<div>Hi&nbsp;</div>
<div>&nbsp;</div>
<div>I get below error for the recipe which copies .tgz files to a director=
y</div>
<div>&nbsp;</div>
<div>ERROR: lib32-xxxxxx-image-1.0-r0 do_prepare_recipe_sysroot: Manifest /=
home/x/projects/x/build-x/tmp/sstate-control/manifest-x86_64_ubuntu-20.04-s=
igma-tools-native.populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 =
(variant '')?</div>
<div>&nbsp;</div>
<div>Here is my recipe</div>
<div>&nbsp;</div>
<div>
<div>SUMMARY =3D "Tools"<br />LICENSE =3D "CLOSED"</div>
<div>SAVEDDIR :=3D "${THISDIR}/files"</div>
<div><br />SRC_URI =3D "file://1xx.tgz \<br />&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;file://2xx.tgz \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
file://3xx.tgz \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://4xx.t=
gz"</div>
<div><br />do_install() {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}/opt/tools<br />&nbsp; &nbs=
p; &nbsp; &nbsp; install -m 0755 &nbsp;${SAVEDDIR}/*.tgz ${D}/opt/tools<br =
/>}</div>
<div>FILES_${PN} +=3D "/opt/tools/*"</div>
</div>
<div>&nbsp;</div>
<div>Looking for suggestions for this error. I did trails writing do_prepar=
e_recipe_sysroot() {} but I get same error.&nbsp;<br /><br /></div>
<div>Please help me on this regard.<br /><br /></div>
<div>Thanks</div>
<div>umesh</div>
<div>&nbsp;</div>
</blockquote>
You are not supposed to copy those files directly from the files directory,=
 as Yocto will automatically copy them to your WORKDIR with the do_fetch() =
task. Instead try to install them from the WORKDIR directory and remove thi=
s SAVEDIR variable, you don't really need that.</div>
<div>&nbsp;</div>
<div>Aleksandar</div>

--NG6Krd0B9eeUEgx1Jz0v--

