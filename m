Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7255BCDDE61
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 10:40:00 +0000 (UTC)
Subject: populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 #yocto
To: yocto@lists.yoctoproject.org
From: "umeshyv" <umeshyv@gmail.com>
X-Originating-Location: Richmond, England, GB (90.216.150.214)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Oct 2024 03:38:06 -0700
Message-ID: <hr8z.1729679886163625789.9CMP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sZw6utZfs3ucxjKKvwAj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 10:40:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64092

--sZw6utZfs3ucxjKKvwAj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

I get below error for the recipe which copies .tgz files to a directory

ERROR: lib32-xxxxxx-image-1.0-r0 do_prepare_recipe_sysroot: Manifest /home/=
x/projects/x/build-x/tmp/sstate-control/manifest-x86_64_ubuntu-20.04-sigma-=
tools-native.populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 (vari=
ant '')?

Here is my recipe

SUMMARY =3D "Tools"
LICENSE =3D "CLOSED"
SAVEDDIR :=3D "${THISDIR}/files"

SRC_URI =3D "file://1xx.tgz \
file://2xx.tgz \
file://3xx.tgz \
file://4xx.tgz"

do_install() {
install -d ${D}/opt/tools
install -m 0755 =C2=A0${SAVEDDIR}/*.tgz ${D}/opt/tools
}
FILES_${PN} +=3D "/opt/tools/*"

Looking for suggestions for this error. I did trails writing do_prepare_rec=
ipe_sysroot() {} but I get same error.

Please help me on this regard.

Thanks
umesh

--sZw6utZfs3ucxjKKvwAj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

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
<div>&nbsp;</div>

--sZw6utZfs3ucxjKKvwAj--

