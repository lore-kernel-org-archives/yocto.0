Return-Path: <lavkhush2208@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7175DEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 11:10:56 +0000 (UTC)
Subject: python3-speechrecognition building using yocto recipe #yocto
To: yocto@lists.yoctoproject.org
From: lavkhush2208@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 21 Jun 2023 04:10:47 -0700
Message-ID: <rvOk.1687345847828201897.bXBi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MvliakqCM368DvbY4ctJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 11:10:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60372

--MvliakqCM368DvbY4ctJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I want to create .deb file of package python3-speechrecognition=C2=A0 , I=
=C2=A0 successfully builded natively on target board riscv platform and i c=
opied binary from target board and with using=C2=A0 recipe i am copying bin=
ary in path: /usr/lib/python3.8/site-packages and trying=C2=A0 to create .d=
eb file from using yocto environment.

speechrecognition recipe is-

*DESCRIPTION =3D "speechrecognition Packages with dependencies library's "*

*LICENSE =3D "CLOSED"*

*SRC_URI +=3D "file://speechrecognition"*

*S =3D "${WORKDIR}/speechrecognition"*

*do_install() {*
*install -d=C2=A0 ${D}${libdir}/*
*cp -r ${S}/lib/* ${D}${libdir}/*
*}*

*FILES_${PN} +=3D "${libdir}/*"

* I am facing one issue here:-

*ERROR: speechrecognition-3.9.0-r0 do_populate_sysroot: Fatal errors occurr=
ed in subprocesses:*
*Command '['riscv64-oe-linux-strip', '--remove-section=3D.comment', '--remo=
ve-section=3D.note', '/home/kush/khu/sources/khu-build/tmp-glibc/work/riscv=
64-oe-linux/speechrecognition/3.9.0-r0/sysroot-destdir/usr/lib/python3.8/si=
te-packages/flac-linux-x86']' returned non-zero exit status 1.*

>=20
> *Subprocess output:riscv64-oe-linux-strip: Unable to recognise the format
> of the input file
> `/home/integration-team/kush/khu/sources/khu-build/tmp-glibc/work/riscv64=
-oe-linux/speechrecognition/3.9.0-r0/sysroot-destdir/usr/lib/python3.8/site=
-packages/flac-linux-x86'
> * Can anyone help me in this, where i am wrong.
>=20
> T&R
> luvkhush
> *
> *
>

--MvliakqCM368DvbY4ctJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,&nbsp;<br /><br />I want to create .deb file of package python3-spee=
chrecognition&nbsp; , I&nbsp; successfully builded natively on target board=
 riscv platform and i copied binary from target board and with using&nbsp; =
recipe i am copying binary in path: /usr/lib/python3.8/site-packages and tr=
ying&nbsp; to create .deb file from using yocto environment.<br /><br />spe=
echrecognition recipe is-<br /><br />
<div><strong>DESCRIPTION =3D "speechrecognition Packages with dependencies =
library's "</strong></div>
<div>&nbsp;</div>
<div><strong>LICENSE =3D "CLOSED"</strong></div>
<div>&nbsp;</div>
<div><strong>SRC_URI +=3D "file://speechrecognition"</strong></div>
<div>&nbsp;</div>
<div><strong>S =3D "${WORKDIR}/speechrecognition"</strong></div>
<div>&nbsp;</div>
<div><strong>do_install() {</strong></div>
<div><strong>&nbsp; &nbsp; &nbsp; &nbsp; install -d&nbsp; ${D}${libdir}/</s=
trong></div>
<div><strong>&nbsp; &nbsp; &nbsp; &nbsp; cp -r ${S}/lib/* ${D}${libdir}/</s=
trong></div>
<div><strong>}</strong></div>
<div>&nbsp;</div>
<div><strong>FILES_${PN} +=3D "${libdir}/*"<br /><br /><br /></strong>I am =
facing one issue here:-<br /><br />
<div><strong>ERROR: speechrecognition-3.9.0-r0 do_populate_sysroot: Fatal e=
rrors occurred in subprocesses:</strong></div>
<div><strong>Command '['riscv64-oe-linux-strip', '--remove-section=3D.comme=
nt', '--remove-section=3D.note', '/home/kush/khu/sources/khu-build/tmp-glib=
c/work/riscv64-oe-linux/speechrecognition/3.9.0-r0/sysroot-destdir/usr/lib/=
python3.8/site-packages/flac-linux-x86']' returned non-zero exit status 1.<=
/strong></div>
<blockquote>
<div><strong>Subprocess output:riscv64-oe-linux-strip: Unable to recognise =
the format of the input file `/home/integration-team/kush/khu/sources/khu-b=
uild/tmp-glibc/work/riscv64-oe-linux/speechrecognition/3.9.0-r0/sysroot-des=
tdir/usr/lib/python3.8/site-packages/flac-linux-x86'<br /><br /></strong>Ca=
n anyone help me in this, where i am wrong.<br /><br />T&amp;R<br />luvkhus=
h<br /><strong><br /></strong></div>
</blockquote>
<div>&nbsp;</div>
</div>
<div>&nbsp;</div>

--MvliakqCM368DvbY4ctJ--

