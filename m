Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AC7C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 18:36:54 +0000 (UTC)
Subject: Re: [yocto] do_rootfs failed
To: Alex Kiernan <alex.kiernan@gmail.com>,yocto@lists.yoctoproject.org
From: daniele.lugli@gmail.com
X-Originating-Location: Marina di Ravenna, Emilia-Romagna, IT (176.246.31.108)
X-Originating-Platform: Windows Opera 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 10:36:45 -0800
References: <CAO5Uq5Q=-v258vP9Vmm=6A16sJtDoH2UF=-WF=D69Phe=_kFiA@mail.gmail.com>
In-Reply-To: <CAO5Uq5Q=-v258vP9Vmm=6A16sJtDoH2UF=-WF=D69Phe=_kFiA@mail.gmail.com>
Message-ID: <16371.1702492605626772973@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zK8toC2XEPE6JUz1JmEP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 18:36:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61883

--zK8toC2XEPE6JUz1JmEP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you Alex.
git branch --contains in poky/meta-realtime does not find the SRCREV 17be45=
48c4260b80be623e0e1317e98a770dea7a in any branch
Anyway I added=C2=A0;branch=3Dmaster;protocol=3Dhttps to the SRC_URI in rt-=
app.bb and the warnings disappeared. Good!

Khem:
I added
DEPENDS:append =3D " qemuwrapper-cross"
in core-image-rt-extended.bb
and I have no more failure in the postinstall intercept hook; log.do_rootfs=
 is now clean. Good!

Unluckily this isn't yet the conclusion. What I get now is:

| ERROR: A native program mkfs.ext4 required to build the image was not fou=
nd (see details above).
| Please make sure wic-tools have e2fsprogs-native in its DEPENDS, build it=
 with 'bitbake wic-tools' and try again
ERROR: Task (/home/vboxuser/Documents/poky/meta-realtime/recipes-extended/i=
mages/core-image-rt-extended.bb:do_image_wic) failed with exit code '1'

I verified that poky/meta/recipes-core/meta/wic-tools.bb already has=C2=A0e=
2fsprogs-native in its dependecncies, issued 'bitbake wic-tools' then again=
 'bitbake core-image-rt-extended' but mkfs.ext4 is still not found.

I will now try a clean bitbake by removing sstate-cache and tmp.

Any suggestion is appreciated.

My best regards

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

--zK8toC2XEPE6JUz1JmEP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you Alex.<br />git branch --contains in poky/meta-realtime does not f=
ind the SRCREV 17be4548c4260b80be623e0e1317e98a770dea7a in any branch<br />=
Anyway I added&nbsp;;branch=3Dmaster;protocol=3Dhttps to the SRC_URI in rt-=
app.bb and the warnings disappeared. Good!<br /><br />Khem:&nbsp;<br /><spa=
n style=3D"white-space-collapse: preserve;">I added <br />DEPENDS:append </=
span><span style=3D"white-space-collapse: preserve;">=3D " qemuwrapper-cros=
s"<br />in core-image-rt-extended.bb<br /></span>and I have no more failure=
 in the postinstall intercept hook; log.do_rootfs is now clean. Good!<br />=
<br />Unluckily this isn't yet the conclusion. What I get now is:<br /><br =
/>
<div><span style=3D"background-color: #ffffff; color: #ff0000;">| ERROR: A =
native program mkfs.ext4 required to build the image was not found (see det=
ails above).</span></div>
<div><span style=3D"background-color: #ffffff; color: #ff0000;">| Please ma=
ke sure wic-tools have e2fsprogs-native in its DEPENDS, build it with 'bitb=
ake wic-tools' and try again</span></div>
<div><span style=3D"background-color: #ffffff; color: #ff0000;">ERROR: Task=
 (/home/vboxuser/Documents/poky/meta-realtime/recipes-extended/images/core-=
image-rt-extended.bb:do_image_wic) failed with exit code '1'</span></div>
<div><br />I verified that poky/meta/recipes-core/meta/wic-tools.bb already=
 has&nbsp;e2fsprogs-native in its dependecncies, issued 'bitbake wic-tools'=
 then again 'bitbake core-image-rt-extended' but mkfs.ext4 is still not fou=
nd.<br /><br />I will now try a clean bitbake by removing sstate-cache and =
tmp.<br /><br />Any suggestion is appreciated.<br /><br />My best regards<b=
r /><br /></div>
-- <br />
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

--zK8toC2XEPE6JUz1JmEP--

