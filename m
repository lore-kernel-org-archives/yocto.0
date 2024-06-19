Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F433C27C53
	for <webhook@archiver.kernel.org>; Wed, 19 Jun 2024 14:06:44 +0000 (UTC)
Subject: OpenLDAP License Update?
To: yocto@lists.yoctoproject.org
From: "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>
X-Originating-Location: =?UTF-8?B?U3R1dHRnYXJ0LCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (194.39.218.10)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Jun 2024 07:06:42 -0700
Message-ID: <93uJ.1718806002438603654.UEJt@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 14:06:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63364

Hello,
we noticed that the OpenLDAP recipe provided in meta-oe/recipes-support/ope=
nldap does not use an SPDX identifier for the license but rather just "Open=
LDAP" [1]. Based on the comment above the custom license was introduced, be=
cause an official license did not exist on OpenSource.org. But in the meant=
ime, the license was added to OpenSource.org and provides a correct SPDX id=
entifier [2]. So, I was wondering if the license can be changed to "OLDAP-2=
.8" or if there are any other reasons for keeping the old "OpenLDAP" licens=
e for the recipe?

Kindest regards,
Fabian Hanke


[1] https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-sup=
port/openldap/openldap_2.6.7.bb#n9
[2] https://opensource.org/license/oldap-2-8
--------------------------------

Bosch Rexroth AG

Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, T=
homas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Supe=
rvisory Board: Dr. Markus Forschner

