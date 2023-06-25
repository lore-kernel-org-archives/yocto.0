Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC64EB64DD
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 20:26:07 +0000 (UTC)
Subject: Re: [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 25 Jun 2023 13:26:04 -0700
References: <19982c2d-8e78-4149-9be3-1101b0158a4a@app.fastmail.com>
In-Reply-To: <19982c2d-8e78-4149-9be3-1101b0158a4a@app.fastmail.com>
Message-ID: <9581.1687724764273095062@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eYoOI6X6PAF8x3KG3Pxv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 20:26:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60437

--eYoOI6X6PAF8x3KG3Pxv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Manuel,

Most of what you require should be here:

https://github.com/OOHehir/meta-test

The key bits to enabling EGLFS seem to be:

PACKAGECONFIG:remove:rpi =3D "x11 wayland"
PACKAGECONFIG:append:rpi =3D " examples accessibility eglfs gles2 gbm linux=
fb tslib libinput"

I found I wasn't getting any fonts in qt applications until I added this to=
 my local.conf:

IMAGE_INSTALL:append =3D "\
ttf-dejavu-sans \
ttf-dejavu-sans-mono \
ttf-dejavu-sans-condensed \
ttf-dejavu-serif \
ttf-dejavu-serif-condensed \
ttf-dejavu-common \
"

The layer includes some test recipes:

https://github.com/OOHehir/meta-test/tree/main/recipes-qt

Including widget (console only so far), qml & qml with quick-controls. Thes=
e last two output graphics successfully to the 'official' screen & support =
touch input.

I haven't tried python with qt6 but perhaps the above will be some use.

I was considering submitting a pull request to meta-raspasberrypi to enable=
 meta-qt6 on the RPi4, seems like it might help others.

Owen

--eYoOI6X6PAF8x3KG3Pxv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Manuel,<br /><br />Most of what you require should be here:<br /><br /><a h=
ref=3D"https://github.com/OOHehir/meta-test" target=3D"_blank" rel=3D"noope=
ner">https://github.com/OOHehir/meta-test</a><br /><br />The key bits to en=
abling EGLFS seem to be:<br /><br />PACKAGECONFIG:remove:rpi =3D "x11 wayla=
nd"<br />PACKAGECONFIG:append:rpi =3D " examples accessibility eglfs gles2 =
gbm linuxfb tslib libinput"<br /><br />I found I wasn't getting any fonts i=
n qt applications until I added this to my local.conf:<br /><br />&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; IMAGE_INSTALL:append =3D "\<br />&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ttf-dejavu-sans \<br />&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ttf-dejavu-sa=
ns-mono \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; ttf-dejavu-sans-condensed \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ttf-dejavu-serif \<br />&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ttf-dejavu-serif-condensed =
\<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; t=
tf-dejavu-common \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; "<br /><br />The layer includes some test recipes:<br /><br=
 /><a href=3D"https://github.com/OOHehir/meta-test/tree/main/recipes-qt" ta=
rget=3D"_blank" rel=3D"noopener">https://github.com/OOHehir/meta-test/tree/=
main/recipes-qt</a><br /><br />Including widget (console only so far), qml =
&amp; qml with quick-controls. These last two output graphics successfully =
to the 'official' screen &amp; support touch input.<br /><br />I haven't tr=
ied python with qt6 but perhaps the above will be some use.<br /><br />I wa=
s considering submitting a pull request to meta-raspasberrypi to enable met=
a-qt6 on the RPi4, seems like it might help others.<br /><br />Owen

--eYoOI6X6PAF8x3KG3Pxv--

