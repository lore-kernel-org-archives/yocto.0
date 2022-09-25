Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA795C04A95
	for <webhook@archiver.kernel.org>; Sun, 25 Sep 2022 17:38:41 +0000 (UTC)
Subject: meta-swupdate integration with the custom Yocto image  #dunfell
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Surat, Gujarat, IN (103.240.78.176)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 25 Sep 2022 10:38:35 -0700
Message-ID: <j7Ra.1664127515524437911.bdfX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4b3D0bzrND6ZG8IC9jtB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Sep 2022 17:38:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58152

--4b3D0bzrND6ZG8IC9jtB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey.. There
Hope all are doing well

I'm dealing with the swupdate with the my custom Yocto image created for ST=
M32MP1 dk1 board
The intend is, to update the rootfs remotely

I have successfully integrated meta-swupdate layer with the custom Yocto im=
age by adding the layers in to bblayer.conf file
The both layers meta-swupdate & meta-custom are parallel to each-others

To change the flags and setting with the swupdate, i have created the r *ec=
ipes-myswupdate* file inside the meta-custom layers
The content of the recipes-myswupdate are as follows
.
=E2=94=94=E2=94=80=E2=94=80 swupdate
=E2=94=9C=E2=94=80=E2=94=80 stm32mp1
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 defconfig
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sw-description
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg
=E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend

The content of the *swupdate_%.bbappend* are as follows

---------------------------------------------------------------------------=
-----------

DESCRIPTION =3D "Example recipe generating SWU image"
SECTION =3D ""

LICENSE =3D ""

# Add all local files to be added to the SWU
# sw-description must always be in the list.
# You can extend with scripts or wahtever you need
SRC_URI +=3D " \
file://sw-description \
file://09-swupdate-args \
file://swupdate.cfg \
"

# images to build before building swupdate image
IMAGE_DEPENDS =3D "core-image-full-cmdline virtual/kernel"

# images and files that will be included in the .swu image
SWUPDATE_IMAGES =3D "core-image-full-cmdline uImage"

# a deployable image can have multiple format, choose one
SWUPDATE_IMAGES_FSTYPES[core-image-full-cmdline] =3D ".ubifs"
SWUPDATE_IMAGES_FSTYPES[uImage] =3D ".bin"

inherit swupdate

---------------------------------------------------------------------------=
-----------------------------
I'm building the image by adding the machine name to update the image by fo=
llowing command
*MACHINE=3Dstm32mp1 bitbake swupdate-image

* However, image unable!
As bitbake unable find the sw-description file
here, is the error log
*Bitbake Fetcher Error: FetchError('Unable to fetch URL from any source.', =
'file://sw-description')

* I'm new with the swupdate
I have a following concerns

a) is it right approach to add the separate recipes for the swupdate in to =
the meta-custom layers, which I'm doing now=C2=A0 ?

b) do i need to deal with the only recipes-support, which is the part of th=
e meta-swupdate layer , instead of creating separate recipes in to meta-cus=
tom?

c) can any one help me with the right integration steps for the swupdate wi=
th yocto ?

for the instance, I'm following official guide from here ( https://sbabic.g=
ithub.io/swupdate/building-with-yocto.html )

All suggestions & comments welcome

Regards
Mahendra Sondagar

--4b3D0bzrND6ZG8IC9jtB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey.. There<br />Hope all are doing well<br /><br />I'm dealing with the sw=
update with the my custom Yocto image created for STM32MP1 dk1 board<br />T=
he intend is, to update the rootfs remotely<br /><br />I have successfully =
integrated meta-swupdate layer with the custom Yocto image by adding the la=
yers in to bblayer.conf file <br />The both layers meta-swupdate &amp; meta=
-custom are parallel to each-others<br /><br />To change the flags and sett=
ing with the swupdate, i have created the r<strong>ecipes-myswupdate</stron=
g> file inside the meta-custom layers <br />The content of the recipes-mysw=
update are as follows<br />.<br />=E2=94=94=E2=94=80=E2=94=80 swupdate<br /=
>&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 stm32mp1<br />&nbsp;&nbsp;&=
nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args<br=
 />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 def=
config<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=
=94=80 sw-description<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=
=94=E2=94=80=E2=94=80 swupdate.cfg<br />&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=
=80=E2=94=80 swupdate_%.bbappend<br /><br /><br />The content of the <stron=
g>swupdate_%.bbappend</strong> are as follows<br /><br />------------------=
--------------------------------------------------------------------<br /><=
br />DESCRIPTION =3D "Example recipe generating SWU image"<br />SECTION =3D=
 ""<br /><br />LICENSE =3D ""<br /><br /># Add all local files to be added =
to the SWU<br /># sw-description must always be in the list.<br /># You can=
 extend with scripts or wahtever you need<br />SRC_URI +=3D " \<br />&nbsp;=
&nbsp;&nbsp; file://sw-description \<br />&nbsp;&nbsp;&nbsp; file://09-swup=
date-args \<br />&nbsp;&nbsp;&nbsp; file://swupdate.cfg \<br />&nbsp;&nbsp;=
&nbsp; "<br /><br /># images to build before building swupdate image<br />I=
MAGE_DEPENDS =3D "core-image-full-cmdline virtual/kernel"<br /><br /># imag=
es and files that will be included in the .swu image<br />SWUPDATE_IMAGES =
=3D "core-image-full-cmdline uImage"<br /><br /># a deployable image can ha=
ve multiple format, choose one<br />SWUPDATE_IMAGES_FSTYPES[core-image-full=
-cmdline] =3D ".ubifs"<br />SWUPDATE_IMAGES_FSTYPES[uImage] =3D ".bin"<br /=
><br />inherit swupdate<br /><br /><br />----------------------------------=
----------------------------------------------------------------------<br /=
>I'm building the image by adding the machine name to update the image by f=
ollowing command<br /><strong>MACHINE=3Dstm32mp1 bitbake swupdate-image<br =
/><br /></strong>However, image unable!<br />As bitbake unable find the sw-=
description file <br />here, is the error log<br /><strong>Bitbake Fetcher =
Error: FetchError('Unable to fetch URL from any source.', 'file://sw-descri=
ption')<br /><br /><br /></strong>I'm new with the swupdate <br />I have a =
following concerns <br /><br />a) is it right approach to add the separate =
recipes for the swupdate in to the meta-custom layers, which I'm doing now&=
nbsp; ?<br /><br />b) do i need to deal with the only recipes-support, whic=
h is the part of the meta-swupdate layer , instead of creating separate rec=
ipes in to meta-custom?<br /><br />c) can any one help me with the right in=
tegration steps for the swupdate with yocto ?<br /><br /><br />for the inst=
ance, I'm following official guide from <a href=3D"https://sbabic.github.io=
/swupdate/building-with-yocto.html" target=3D"_blank" rel=3D"noopener">here=
</a><br /><br />All suggestions &amp; comments welcome&nbsp;<br /><br />Reg=
ards<br />Mahendra Sondagar

--4b3D0bzrND6ZG8IC9jtB--

