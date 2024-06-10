Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9504C27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 10:26:10 +0000 (UTC)
Subject: depoly-ipks are missing the lib**.so file for shared library yocto recipe #kirkstone #yocto
To: yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.231.240)
X-Originating-Platform: Linux Firefox 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Jun 2024 03:26:01 -0700
Message-ID: <ubXW.1718015161943743348.Q0eO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LVAJcIcsluTwUhvI1c5A"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 10:26:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63301

--LVAJcIcsluTwUhvI1c5A
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I have one yocto recipe which inherit meson as build system and generate th=
e right libs in the image folder

=E2=94=9C=E2=94=80=E2=94=80 liblc_core.so -> liblc_core.so.0
=E2=94=9C=E2=94=80=E2=94=80 liblc_core.so.0 -> liblc_core.so.0.4.7
=E2=94=94=E2=94=80=E2=94=80 liblc_core.so.0.4.7

but in the deploy-ipks the .so symbolic link is missing
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-05-08 14:29 ./usr/
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-05-08 14:29 ./usr/l=
ib/
lrwxrwxrwx root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-05-08 14:29 ./usr/l=
ib/liblc_core.so.0 -> liblc_core.so.0.4.7
-rwxr-xr-x root/root =C2=A0 =C2=A0 26536 2024-05-08 14:29 ./usr/lib/liblc_c=
ore.so.0.4.7

and in the dev-ipk package the missing *.so exist

drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-05-08 14:29 ./usr/l=
ib/
lrwxrwxrwx root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-05-08 14:29 ./usr/l=
ib/liblc_core.so -> liblc_core.so.0

I need to have all in on files/symbolic-link in the release ipk, and the ro=
otfs wihtout the need to install the dev-ipk later on, any idea what I need=
 to add in the yocto recipe or the meson file?

Regards,

Salahaldeen

--LVAJcIcsluTwUhvI1c5A
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p>
<p>&nbsp;</p>
<p>I have one yocto recipe which inherit meson as build system and generate=
 the right libs in the image folder<br /><br /><span style=3D"font-family: =
courier_newregular, courier;">=E2=94=9C=E2=94=80=E2=94=80 liblc_core.so -&g=
t; liblc_core.so.0</span><br /><span style=3D"font-family: courier_newregul=
ar, courier;">=E2=94=9C=E2=94=80=E2=94=80 liblc_core.so.0 -&gt; liblc_core.=
so.0.4.7</span><br /><span style=3D"font-family: courier_newregular, courie=
r;">=E2=94=94=E2=94=80=E2=94=80 liblc_core.so.0.4.7</span></p>
<p>but in the deploy-ipks the .so symbolic link is missing <br /><span styl=
e=3D"font-family: courier_newregular, courier;">drwxr-xr-x root/root &nbsp;=
 &nbsp; &nbsp; &nbsp; 0 2024-05-08 14:29 ./usr/</span><br /><span style=3D"=
font-family: courier_newregular, courier;">drwxr-xr-x root/root &nbsp; &nbs=
p; &nbsp; &nbsp; 0 2024-05-08 14:29 ./usr/lib/</span><br /><span style=3D"f=
ont-family: courier_newregular, courier;">lrwxrwxrwx root/root &nbsp; &nbsp=
; &nbsp; &nbsp; 0 2024-05-08 14:29 ./usr/lib/liblc_core.so.0 -&gt; liblc_co=
re.so.0.4.7</span><br /><span style=3D"font-family: courier_newregular, cou=
rier;">-rwxr-xr-x root/root &nbsp; &nbsp; 26536 2024-05-08 14:29 ./usr/lib/=
liblc_core.so.0.4.7</span></p>
<p>and in the dev-ipk package the missing *.so exist</p>
<p><span style=3D"font-family: courier_newregular, courier;">drwxr-xr-x roo=
t/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-05-08 14:29 ./usr/lib/</span><br =
/><span style=3D"font-family: courier_newregular, courier;">lrwxrwxrwx root=
/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-05-08 14:29 ./usr/lib/liblc_core.s=
o -&gt; liblc_core.so.0</span></p>
<p>I need to have all in on files/symbolic-link in the release ipk, and the=
 rootfs wihtout the need to install the dev-ipk later on, any idea what I n=
eed to add in the yocto recipe or the meson file?</p>
<p>&nbsp;</p>
<p>Regards,</p>
<p>Salahaldeen</p>
<p>&nbsp;</p>

--LVAJcIcsluTwUhvI1c5A--

