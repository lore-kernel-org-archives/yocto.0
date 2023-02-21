Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4F44C61DA3
	for <webhook@archiver.kernel.org>; Tue, 21 Feb 2023 22:03:29 +0000 (UTC)
Subject: resize2fs, what's provide this package
To: yocto@lists.yoctoproject.org
From: "Martin Leduc" <martin.leduc@luminator.com>
X-Originating-Location: Drummondville, Quebec, CA (24.122.144.180)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Feb 2023 13:02:56 -0800
Message-ID: <qIwR.1677013376481498401.XOp3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DZ5fr74y9ZezR3wyrG20"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 22:03:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59270

--DZ5fr74y9ZezR3wyrG20
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community,

I look for the resize2fs recipes.=C2=A0 This application shall be included =
in the e2fsprog package but it's not there.=C2=A0 I've also tried to config=
ure the e2fsprog package using menuconfig without any success (bitbake -c m=
enuconfig e2fsprog).

Normally I use https://layers.openembedded.org to find the recipes for requ=
ired packages but this time, everything points me to the e2fsprog recipes b=
ut it doesn't work for me.

Any idea and another system to find which meta-* provides a specific applic=
ation?

Thank you, team,

Have a nice day

Martin

--DZ5fr74y9ZezR3wyrG20
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community,<br /><br />I look for the resize2fs recipes.&nbsp; This appli=
cation shall be included in the e2fsprog package but it's not there.&nbsp; =
I've also tried to configure the e2fsprog package using menuconfig without =
any success (bitbake -c menuconfig e2fsprog).<br /><br />Normally I use&nbs=
p;<a href=3D"https://layers.openembedded.org" target=3D"_blank" rel=3D"noop=
ener">https://layers.openembedded.org</a>&nbsp;to find the recipes for requ=
ired packages but this time, everything points me to the e2fsprog recipes b=
ut it doesn't work for me.<br /><br />Any idea and another system to find w=
hich meta-* provides a specific application?<br /><br />Thank you, team,<br=
 /><br />Have a nice day<br /><br />Martin

--DZ5fr74y9ZezR3wyrG20--

