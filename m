Return-Path: <yanmei.guo@boeing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87B6ECEDDB8
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 03:45:56 +0000 (UTC)
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Guo, Yanmei" <yanmei.guo@boeing.com>
X-Originating-Location: Boardman, Oregon, US (15.200.244.216)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Oct 2024 20:45:54 -0700
References: <CANNYZj_nfD=n7MfF_QJLTJZ7abwu1MF66jedoKhBf4tdO=v-Vw@mail.gmail.com>
In-Reply-To: <CANNYZj_nfD=n7MfF_QJLTJZ7abwu1MF66jedoKhBf4tdO=v-Vw@mail.gmail.com>
Message-ID: <10004.1728531954228723360@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WpuhVetpv6Eq1FwWcX8N"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 03:45:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63998

--WpuhVetpv6Eq1FwWcX8N
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Can you explain a bit more on separate build configurations?

We are using multi-config to separate the build configuration. However the =
`local.conf` and `bblayers.conf` are shared across.
unless you are suggesting complete new build (new local.conf and bblayers) =
not sharing anything in common.

In addition, is there a recommended way to manage debug/release build in wh=
ich case they share common configurations but also varies in lots of areas.

Thanks,
Mei

--WpuhVetpv6Eq1FwWcX8N
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Alex,</div>
<div>&nbsp;</div>
<div>Can you explain a bit more on separate build configurations?&nbsp;</di=
v>
<div>&nbsp;</div>
<div>We are using multi-config to separate the build configuration. However=
 the `local.conf` and `bblayers.conf` are shared across.</div>
<div>unless you are suggesting complete new build (new local.conf and bblay=
ers) not sharing anything in common.</div>
<div>&nbsp;</div>
<div>In addition, is there a recommended way to manage debug/release build =
in which case they share common configurations but also varies in lots of a=
reas.</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Mei</div>

--WpuhVetpv6Eq1FwWcX8N--

