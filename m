Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD110CEB2D0
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 13:21:29 +0000 (UTC)
Subject: Re: [yocto] How to install a Snap package in Image #mickledore #snapd
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, yocto@lists.yoctoproject.org
From: "Spore, David" <dspore@parraid.com>
X-Originating-Location: Fort Worth, Texas, US (23.119.203.209)
X-Originating-Platform: Windows Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Oct 2024 06:21:23 -0700
References: <7c6729c4-c102-440d-9b00-b00692a4c347@rootcommit.com>
In-Reply-To: <7c6729c4-c102-440d-9b00-b00692a4c347@rootcommit.com>
Message-ID: <7587.1727788883607607228@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lHhf7fdm4dl8QSoXrdYB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Oct 2024 13:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63919

--lHhf7fdm4dl8QSoXrdYB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Michael,

Thanks for your reply!=C2=A0 Yes, I have deployed the snap on my target mac=
hine manually after having installed snapd.=C2=A0 Now I am looking for a wa=
y to run snap packages during the image build, as well as deploy rpm and/or=
 deb packages.=C2=A0 =C2=A0I've deployed these packages manually on the tar=
get machine.=C2=A0 My problem is that I don't know how to write recipes for=
 automating these tasks at build time.

David

--lHhf7fdm4dl8QSoXrdYB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Michael,</div>
<div>&nbsp;</div>
<div>Thanks for your reply!&nbsp; Yes, I have deployed the snap on my targe=
t machine manually after having installed snapd.&nbsp; Now I am looking for=
 a way to run snap packages during the image build, as well as deploy rpm a=
nd/or deb packages.&nbsp; &nbsp;I've deployed these packages manually on th=
e target machine.&nbsp; My problem is that I don't know how to write recipe=
s for automating these tasks at build time.</div>
<div>&nbsp;</div>
<div>David</div>
<div>&nbsp;</div>

--lHhf7fdm4dl8QSoXrdYB--

