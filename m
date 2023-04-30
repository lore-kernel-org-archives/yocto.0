Return-Path: <shibi.cbe@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E38C4C77B73
	for <webhook@archiver.kernel.org>; Sun, 30 Apr 2023 20:38:43 +0000 (UTC)
Subject: Need to check if BBFETCH_RETRYCOUNT variable is in use #yocto #bitbake #kirkstone
To: yocto@lists.yoctoproject.org
From: shibi.cbe@gmail.com
X-Originating-Location: Mumbai, Maharashtra, IN (52.95.75.29)
X-Originating-Platform: Mac Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 30 Apr 2023 13:38:42 -0700
Message-ID: <Oo7T.1682887122973495266.MznC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PHpreeRjSVKiKGDJDeuN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Apr 2023 20:38:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59824

--PHpreeRjSVKiKGDJDeuN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Everyone

came across=C2=A0BBFETCH_RETRYCOUNT variable. But I couldn't find this vari=
able in reference manual or variable glossary.

My understanding is if we BBFETCH_RETRYCOUNT =3D "5" bitbake retry failed f=
etch operation for 5 time before throwing error.

If there is any other such variable available where fetch retry can be enab=
led(kindly refer the same). At times due to network issues fetch task is fa=
iling if we restart bitbake again it works without error. so to overcome th=
is looking for retry option

If there is any other way resolve the issue kindly provide me suggestion

--PHpreeRjSVKiKGDJDeuN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello Everyone</p>
<p>came across&nbsp;BBFETCH_RETRYCOUNT variable. But I couldn't find this v=
ariable in reference manual or variable glossary.</p>
<p>My understanding is if we BBFETCH_RETRYCOUNT =3D "5" bitbake retry faile=
d fetch operation for 5 time before throwing error.&nbsp;</p>
<p>If there is any other such variable available where fetch retry can be e=
nabled(kindly refer the same). At times due to network issues fetch task is=
 failing if we restart bitbake again it works without error. so to overcome=
 this looking for retry option</p>
<p>If there is any other way resolve the issue kindly provide me suggestion=
</p>

--PHpreeRjSVKiKGDJDeuN--

