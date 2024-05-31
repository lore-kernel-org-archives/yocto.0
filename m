Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6601C25B75
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 13:40:06 +0000 (UTC)
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking against GPL libraries
To: "Stefano Babic" <sbabic@denx.de>, yocto@lists.yoctoproject.org
From: "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>
X-Originating-Location: =?UTF-8?B?U3R1dHRnYXJ0LCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (194.39.218.22)
X-Originating-Platform: Windows Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 31 May 2024 06:40:01 -0700
References: <1572b957-1e36-442b-885f-a4d575afcca2@denx.de>
In-Reply-To: <1572b957-1e36-442b-885f-a4d575afcca2@denx.de>
Message-ID: <918.1717162801361364915@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 13:40:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63247

Hello,

thank you for all the responses so far. I guess we will have a look at foss=
ology and fossas, but we would prefer a solution which does not require an =
additional thirdparty service. We know that there are different types of GP=
L licenses which bring different obligations.=20

We are searching for an automatic mechanism to detect linking to a shared l=
ibrary from a GPL package. We thought there might be a way to utilize the b=
uild system=E2=80=99s shared library resolver which is used for the automat=
ic runtime added runtime dependencies [1].

For static libraries we found that they are disabled by default [2].

[1] https://docs.yoctoproject.org/overview-manual/concepts.html#automatical=
ly-added-runtime-dependencies
[2] https://docs.yoctoproject.org/dev/dev-manual/licenses.html#compliance-l=
imitations-with-executables-built-from-static-libraries
--------------------------------

Bosch Rexroth AG

Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, T=
homas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Supe=
rvisory Board: Dr. Markus Forschner

