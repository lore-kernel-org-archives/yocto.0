Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B573EE7717F
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 14:31:18 +0000 (UTC)
Subject: Re: [yocto] Building wmbusmeters with Yocto
To: "Daniel Kampert" <kontakt@daniel-kampert.de>, yocto@lists.yoctoproject.org
From: "Daniel Kampert" <kontakt@daniel-kampert.de>
X-Originating-Location: Munich, Bavaria, DE (88.217.175.74)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Dec 2024 06:31:14 -0800
References: <13203.1734445514336837198@lists.yoctoproject.org>
In-Reply-To: <13203.1734445514336837198@lists.yoctoproject.org>
Message-ID: <4730.1734445874907664074@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GYAOp13UqL8S4xRQ11OS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 14:31:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64461

--GYAOp13UqL8S4xRQ11OS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ok I fixed it by using

INSANE_SKIP_${PN} +=3D "already-stripped"

Can you explain me the issue and why this line is solving the issue?

--GYAOp13UqL8S4xRQ11OS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Ok I fixed it by using</div>
<div>&nbsp;</div>
<div>INSANE_SKIP_${PN} +=3D "already-stripped"</div>
<div>&nbsp;</div>
<div>Can you explain me the issue and why this line is solving the issue?</=
div>

--GYAOp13UqL8S4xRQ11OS--

