Return-Path: <yanmei.guo@boeing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D82CCFA10
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 03:09:33 +0000 (UTC)
Subject: Question on the sequence conf file parsing.  #yocto
To: yocto@lists.yoctoproject.org
From: "Guo, Yanmei" <yanmei.guo@boeing.com>
X-Originating-Location: West End, Queensland, AU (192.48.10.56)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Sep 2024 20:09:27 -0700
Message-ID: <jSFp.1727320167454925028.4fOt@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xlZjprS3iZP9RunSO0ob"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 03:09:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63887

--xlZjprS3iZP9RunSO0ob
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Yoctoers,

Trying to understand the sequence of conf file parsing when bitbake is runn=
ing a build.
As a typical yocto project, we generally have local.conf, bblayers.conf, mu=
lticonfig/xxx.conf and distro.conf etc,
serving for different purposes. Is there a defined sequence in terms of whi=
ch conf file is parsed first, which is last?
Especally, I am interested to know if `BBLAYERS` can be appended conditiona=
lly depending on a variable defined in a multiconfig file.

Thanks very much!

-May

--xlZjprS3iZP9RunSO0ob
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Yoctoers,</div>
<div>&nbsp;</div>
<div>Trying to understand the sequence of conf file parsing when bitbake is=
 running a build.&nbsp;</div>
<div>As a typical yocto project, we generally have local.conf, bblayers.con=
f, multiconfig/xxx.conf and distro.conf etc,</div>
<div>serving for different purposes. Is there a defined sequence in terms o=
f which conf file is parsed first, which is last?&nbsp;</div>
<div>Especally, I am interested to know if `BBLAYERS` can be appended condi=
tionally depending on a variable defined in a multiconfig file.</div>
<div>&nbsp;</div>
<div>Thanks very much!</div>
<div>&nbsp;</div>
<div>-May</div>

--xlZjprS3iZP9RunSO0ob--

