Return-Path: <silver1row@cox.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09B2C77B7A
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 03:03:24 +0000 (UTC)
Subject: ERROR: Variable BB_ENV_EXTRAWHITE has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
To: yocto@lists.yoctoproject.org
From: "Set" <silver1row@cox.net>
X-Originating-Location: Lafayette, Louisiana, US (68.229.131.181)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 06 Jun 2023 20:03:19 -0700
Message-ID: <WwMG.1686106999485252679.t0X8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k6iekrndv4eaJs7t2uLR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 03:03:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60195

--k6iekrndv4eaJs7t2uLR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

The error I get is the BB_ENV_EXTRAWHITE being renamed but from exactly whe=
re is this renamed? I have searched in my filesystem w/:

sudo find | grep BB_ENV_EXTRAWHITE

No success. I am sure there are reasons. Anyway, here are my ideas I found =
online to test.

* I clone the argo-project from TI.com
* ./oe-layertool-setup.sh -f configs/arago-kirkstone
* source build/conf/setenv
* Then, the error occurs

I have not been able to search and find the exact placement of this BB_ENV_=
EXTRAWHITE error or I would change it to the new projected methods: BB_ENV_=
PASSTHROUGH_ADDITIONS

I have searched online already. I do not exactly see a cure but I see other=
s have had issues revolving around this error.

Seth

P.S. If you have time and understand what exactly I should do to exchange t=
he EXTRAWHITE to PASSTHROUGH_ADDITIONS, please do contact me.

--k6iekrndv4eaJs7t2uLR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />The error I get is the BB_ENV_EXTRAWHITE being renamed bu=
t from exactly where is this renamed? I have searched in my filesystem w/:<=
br /><br />sudo find | grep BB_ENV_EXTRAWHITE<br /><br />No success. I am s=
ure there are reasons. Anyway, here are my ideas I found online to test.<br=
 /><br />
<ul>
<li>I clone the argo-project from TI.com</li>
<li>./oe-layertool-setup.sh -f configs/arago-kirkstone</li>
<li>source build/conf/setenv</li>
<li>Then, the error occurs&nbsp;</li>
</ul>
I have not been able to search and find the exact placement of this BB_ENV_=
EXTRAWHITE error or I would change it to the new projected methods: BB_ENV_=
PASSTHROUGH_ADDITIONS<br /><br />I have searched online already. I do not e=
xactly see a cure but I see others have had issues revolving around this er=
ror.<br /><br />Seth<br /><br />P.S. If you have time and understand what e=
xactly I should do to exchange the EXTRAWHITE to PASSTHROUGH_ADDITIONS, ple=
ase do contact me.

--k6iekrndv4eaJs7t2uLR--

