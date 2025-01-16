Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10FEBE77188
	for <webhook@archiver.kernel.org>; Thu, 16 Jan 2025 03:59:28 +0000 (UTC)
Subject: Re: [yocto] [HELP]
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.181)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jan 2025 19:59:23 -0800
References: <CANNYZj8gFR=kFT-sJVLwqi9P1vi-fyiYv0mZGyETKArBK8b4Mw@mail.gmail.com>
In-Reply-To: <CANNYZj8gFR=kFT-sJVLwqi9P1vi-fyiYv0mZGyETKArBK8b4Mw@mail.gmail.com>
Message-ID: <1047.1736999963325021011@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yDA8jKM34m8ywqF8xnoh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2025 03:59:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64566

--yDA8jKM34m8ywqF8xnoh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Tried at both the locations.

build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env

1st if
templatdirvalue =3D template-name , templateconf value =3D /home/build/proj=
ect/meta-eaton/conf/templates/template-name
Error: TEMPLATECONF value (which is /home/build/project/meta-eaton/conf/tem=
plates/template-name) must point to meta-some-layer/conf/templates/te =C2=
=A0 =C2=A0mplate-name

build@ubuntu-bionic:~/project$ cd meta-eaton/conf/templates/template-name/

build@ubuntu-bionic:~/project/meta-eaton/conf/templates/template-name$ ls
*bblayers.conf.sample =C2=A0layer.conf =C2=A0local.conf.sample =C2=A0templa=
teconf.cfg*

--yDA8jKM34m8ywqF8xnoh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Tried at both the locations.<br /><br />build@ubuntu-bionic:~/project$=
 source meta-eaton/setup-build-env<br /><br />1st if<br />templatdirvalue =
=3D template-name , templateconf value =3D /home/build/project/meta-eaton/c=
onf/templates/template-name<br />Error: TEMPLATECONF value (which is /home/=
build/project/meta-eaton/conf/templates/template-name) must point to meta-s=
ome-layer/conf/templates/te &nbsp; &nbsp;mplate-name<br /><br />build@ubunt=
u-bionic:~/project$ cd meta-eaton/conf/templates/template-name/<br /><br />=
build@ubuntu-bionic:~/project/meta-eaton/conf/templates/template-name$ ls<b=
r /><strong>bblayers.conf.sample &nbsp;layer.conf &nbsp;local.conf.sample &=
nbsp;templateconf.cfg</strong><br /><br /></div>

--yDA8jKM34m8ywqF8xnoh--

