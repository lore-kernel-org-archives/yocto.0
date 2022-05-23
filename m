Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7A9C433EF
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 08:51:23 +0000 (UTC)
Subject: Re: [meta-parsec][PATCH 3/3] oeqa: add parsec runtime tests
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (86.26.33.70)
X-Originating-Platform: Mac Firefox 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 23 May 2022 01:51:22 -0700
References: <20220521185640.143194-3-akuster808@gmail.com>
In-Reply-To: <20220521185640.143194-3-akuster808@gmail.com>
Message-ID: <2650.1653295882732474113@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kXsJ573JXBvdqa3TpITW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 08:51:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57153

--kXsJ573JXBvdqa3TpITW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Amir,

Thank you very much for adding Parsec runtime testing.

I have a few small comments:

1. You defined the security Parsec image without TPM (with packagegroup-sec=
urity-parsec group) , but in the runtime tests you use TPM. Shouldn't you u=
se an image with packagegroup-security-parsec-tpm2 group instead?
2. Could you add 'parsec-cli-tests.sh' script after "parsec start" in the "=
cmds" list. This script runs end-to-end tests against Parsec service. The s=
cript is a part of the parsec-tool package and it's already included into t=
he image

Regards,
Anton

--kXsJ573JXBvdqa3TpITW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Amir,<br /><br />&nbsp;&nbsp; Thank you very much for adding Parsec r=
untime testing.</p>
<p>&nbsp; I have a few small comments:</p>
<p>1. You defined the security Parsec image without TPM (with <span style=
=3D"caret-color: #333333; color: #333333; font-family: Calibri; font-size: =
medium; font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-=
color: #ffffff; text-decoration: none; display: inline !important; float: n=
one;">packagegroup-security-parsec group) </span>, but in the runtime tests=
 you use TPM. Shouldn't you use an image with <span style=3D"caret-color: #=
333333; color: #333333; font-family: Calibri; font-size: medium; font-style=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: auto; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-=
adjust: auto; -webkit-text-stroke-width: 0px; background-color: #ffffff; te=
xt-decoration: none; display: inline !important; float: none;">packagegroup=
-security-parsec-tpm2 group instead?<br />2. Could you add 'parsec-cli-test=
s.sh' script after "parsec start" in the "cmds" list. This script runs end-=
to-end tests against Parsec service. The script is a part of the parsec-too=
l package and it's already included into the image<br /><br />Regards,<br /=
>Anton<br /></span></p>

--kXsJ573JXBvdqa3TpITW--

