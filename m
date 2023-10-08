Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 147BFE95A8E
	for <webhook@archiver.kernel.org>; Sun,  8 Oct 2023 21:37:54 +0000 (UTC)
Subject: Re: Modify target 'march' for RISCV VisionFive 2
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 08 Oct 2023 14:37:47 -0700
References: <CAGUWaEETBbUr__2eC3_chYxCQHqbwQujKyJp5KBTZZt_X76zTw@mail.gmail.com>
In-Reply-To: <CAGUWaEETBbUr__2eC3_chYxCQHqbwQujKyJp5KBTZZt_X76zTw@mail.gmail.com>
Message-ID: <16294.1696801067627543753@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eZyNqa3jwUFe8DcdMMTh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Oct 2023 21:37:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61279

--eZyNqa3jwUFe8DcdMMTh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using a KAS setup ( https://github.com/OOHehir/build-riscv/blob/main/po=
ky-qt-visionfive2.yml ) & added the following line:

TUNE_CCARGS =3D "-march=3Drv64imafdc_zicsr_zifencei_zihintpause"

It seems to have resulted in a successful build of qtbase (following rebuil=
ds of gcc etc)

I imagine there's a more correct way to achieve this however.

--eZyNqa3jwUFe8DcdMMTh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using a <a href=3D"https://github.com/OOHehir/build-riscv/blob/main/pok=
y-qt-visionfive2.yml" target=3D"_blank" rel=3D"noopener">KAS setup</a> &amp=
; added the following line:<br /><br />TUNE_CCARGS =3D "-march=3Drv64imafdc=
_zicsr_zifencei_zihintpause"<br /><br />It seems to have resulted in a succ=
essful build of qtbase (following rebuilds of gcc etc)<br /><br />I imagine=
 there's a more correct way to achieve this however.

--eZyNqa3jwUFe8DcdMMTh--

