Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAD88C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 17:05:39 +0000 (UTC)
Subject: kernel headers in my image
To: yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: Rimini, Emilia-Romagna, IT (176.246.20.126)
X-Originating-Platform: Linux Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Jan 2024 09:05:39 -0800
Message-ID: <MaWi.1706115939427185925.EgtJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PVC9Xvff9aYKkq2RnkNr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 17:05:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62258

--PVC9Xvff9aYKkq2RnkNr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I would like to have kernel headers in my image, in order to locally build =
a module.

I added

IMAGE_INSTALL:append =3D " kernel-dev"
IMAGE_INSTALL:append =3D " kernel-devsrc"
IMAGE_INSTALL:append =3D " kernel-modules"

in my image recipe and, as a result, I see that /usr/src/kernel and /lib/mo=
dules/${uname -r}/build are now populated.

But when I try to build my module (which builds correctly on a non-poky mac=
hine) I get:

./include/linux/compiler.h:247:10: fatal error: asm/rwonce.h No such file o=
r directory

And, in fact, there is no rwonce.h under /usr/src/kernel. There is one unde=
r /lib/modules... but it is in asm-generic/rwonce.h

Any idea?

Thank you in advance
--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--PVC9Xvff9aYKkq2RnkNr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />I would like to have kernel headers in my image, in orde=
r to locally build a module.<br /><br />I added<br /><br />IMAGE_INSTALL:ap=
pend =3D " kernel-dev"<br />IMAGE_INSTALL:append =3D " kernel-devsrc"<br />=
IMAGE_INSTALL:append =3D " kernel-modules"<br /><br />in my image recipe an=
d, as a result, I see that /usr/src/kernel and /lib/modules/${uname -r}/bui=
ld are now populated.<br /><br />But when I try to build my module (which b=
uilds correctly on a non-poky machine) I get:<br /><br />./include/linux/co=
mpiler.h:247:10: fatal error: asm/rwonce.h No such file or directory<br /><=
br />And, in fact, there is no rwonce.h under /usr/src/kernel. There is one=
 under /lib/modules... but it is in asm-generic/rwonce.h<br /><br />Any ide=
a?<br /><br />Thank you in advance<br />-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--PVC9Xvff9aYKkq2RnkNr--

