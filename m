Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF31C25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 09:06:08 +0000 (UTC)
Subject: GPL License Compliance - Automatically detect linking against GPL libraries
To: yocto@lists.yoctoproject.org
From: "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>
X-Originating-Location: =?UTF-8?B?U3R1dHRnYXJ0LCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (194.39.218.22)
X-Originating-Platform: Windows Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 May 2024 02:06:07 -0700
Message-ID: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 09:06:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63222

Hello,
we were wondering if anyone has experiences / best practices on how to dete=
ct if packages link to a library from another GPL licensed package? We know=
 that there are ways to completely filter out some licenses via INCOMPATIBL=
E_LICENSE. But from our (limited) legal knowledge it is okay to include the=
m in our image, if we fulfill all the obligations. One obligation implies t=
hat code linked to a GPL library will need to have the same license (deriva=
tive work). Hence we would like to avoid that packages containing our own c=
losed source software link by accident to a GPL based library. Has anyone e=
xperiences / best practices on how to detect this automatically during the =
bitbake build?

Best regards,
Fabian Hanke=20
--------------------------------
Bosch Rexroth AG
Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, T=
homas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Supe=
rvisory Board: Dr. Markus Forschner

