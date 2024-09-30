Return-Path: <radoslav.pesek@microstep-mis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D8EDCF6497
	for <webhook@archiver.kernel.org>; Mon, 30 Sep 2024 12:33:41 +0000 (UTC)
Subject: Re: [yocto] esdk devtool finish workflow
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Radoslav Pesek" <radoslav.pesek@microstep-mis.com>
X-Originating-Location: Bratislava, SK (188.167.255.183)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 Sep 2024 05:33:32 -0700
References: <CANNYZj9xVDpbWsa-5b0HoNR-jMyQZgVPp3LazLQx+q-GuDjBbw@mail.gmail.com>
In-Reply-To: <CANNYZj9xVDpbWsa-5b0HoNR-jMyQZgVPp3LazLQx+q-GuDjBbw@mail.gmail.com>
Message-ID: <7587.1727699612753182646@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r6HzRsEz5WFQUmFxXRPD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Sep 2024 12:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63910

--r6HzRsEz5WFQUmFxXRPD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, thanks for reply and sorry, been busy with other stuff.

Regarding esdk - what is their purpose now, when there is this new workflow=
? I mean, in what use cases would you use esdk instead of this new workflow=
?

For example, i'm now trying to setup ci/cd pipeline for testing using qemu.=
 Is it good idea to run devtool runqemu or just runqemu from esdk? Cause i =
tried that and it failed - specifically, i run MACHINE=3Dqemuarm devtool ru=
nqemu nographic and get "runqemu - ERROR - IMAGE_LINK_NAME wasn't set to fi=
nd corresponding .qemuboot.conf file" (i get similar error even when just r=
unning MACHINE=3Dqemuarm runqemu). MACHINE=3Dqemuarm runqemu command runs f=
ine under normal yocto environment (devtool runqemu subcommand doesn't exis=
t under this environment). Also, tmp/deploy/images/qemuarm/*.qemuboot.conf =
exist in esdk. Changing MACHINE to runqemu in conf/local.conf doesn't work =
either. Is this expected?

Thanks, rado.

--r6HzRsEz5WFQUmFxXRPD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi, thanks for reply and sorry, been busy with other stuff.</div>
<div>&nbsp;</div>
<div>Regarding esdk - what is their purpose now, when there is this new wor=
kflow? I mean, in what use cases would you use esdk instead of this new wor=
kflow?</div>
<div>&nbsp;</div>
<div>For example, i'm now trying to setup ci/cd pipeline for testing using =
qemu. Is it good idea to run devtool runqemu or just runqemu from esdk? Cau=
se i tried that and it failed - specifically, i run MACHINE=3Dqemuarm devto=
ol runqemu nographic and get "runqemu - ERROR - IMAGE_LINK_NAME wasn't set =
to find corresponding .qemuboot.conf file" (i get similar error even when j=
ust running MACHINE=3Dqemuarm runqemu). MACHINE=3Dqemuarm runqemu command r=
uns fine under normal yocto environment (devtool runqemu subcommand doesn't=
 exist under this environment). Also, tmp/deploy/images/qemuarm/*.qemuboot.=
conf exist in esdk. Changing MACHINE to runqemu in conf/local.conf doesn't =
work either. Is this expected?</div>
<div>&nbsp;</div>
<div>Thanks, rado.</div>
<div>&nbsp;</div>

--r6HzRsEz5WFQUmFxXRPD--

