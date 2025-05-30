Return-Path: <juan.aguirre@omron.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEBB7C5B543
	for <webhook@archiver.kernel.org>; Fri, 30 May 2025 22:33:20 +0000 (UTC)
Subject: inherit can't find classes in folder different than classes #kirkstone #scarthgap #bitbake #yocto
To: yocto@lists.yoctoproject.org
From: "Juan Aguirre" <juan.aguirre@omron.com>
X-Originating-Location: Nuevo Laredo, Tamaulipas, MX (165.225.218.78)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 30 May 2025 15:33:18 -0700
Message-ID: <UCYs.1748644398329953454.D1Lf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fAhtmeiLCXlVTI6n4nCG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 May 2025 22:33:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65439

--fAhtmeiLCXlVTI6n4nCG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I'm working on an update from Kirkstone to Scargtgap, and I'm finding a=
 problem with one of my recipes

I'm trying to inherit logging, but I got the following error message

ERROR: ParseError at /mnt/data/build/../recipes-connectivity/knock/knock_0.=
8.bb:15: Could not inherit file classes/logging.bbclass

Checking the difference between Kirkstone and scargtgap, I found that loggi=
ng.bbclass was moved to classes-global/, but bitbake can't find it. I try t=
o add the path to BBPATH, but even that, logging.bbclass can't be found.

In advance, thanks for the help.

--fAhtmeiLCXlVTI6n4nCG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hi, I'm working on an update from Kirkstone to Scargtgap, and I'm find=
ing a problem with one of my recipes</div>
<div><br />I'm trying to inherit logging, but I got the following error mes=
sage</div>
<div><br />ERROR: ParseError at /mnt/data/build/../recipes-connectivity/kno=
ck/knock_0.8.bb:15: Could not inherit file classes/logging.bbclass</div>
<div><br />Checking the difference between Kirkstone and scargtgap, I found=
 that logging.bbclass was moved to classes-global/, but bitbake can't find =
it. I try to add the path to BBPATH, but even that, logging.bbclass can't b=
e found.</div>
</div>
<div>&nbsp;</div>
<div>In advance, thanks for the help.</div>

--fAhtmeiLCXlVTI6n4nCG--

