Return-Path: <wanwizard@openpli.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54780C79FBB
	for <webhook@archiver.kernel.org>; Thu, 10 Sep 2026 19:50:17 +0000 (UTC)
Subject: Re: [yocto] Hashserve OEEquivHash unihash issue
To: "Harro Verton" <wanwizard@openpli.org>, yocto@lists.yoctoproject.org
From: "Harro Verton" <wanwizard@openpli.org>
X-Originating-Location: Stafford, England, GB (194.164.227.192)
X-Originating-Platform: Linux Firefox 154
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Sep 2026 12:50:15 -0700
References: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org>
In-Reply-To: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org>
Message-ID: <307014.1789069815176190258@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OwpYUrX6wm4h56R9UaKP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 19:50:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66716

--OwpYUrX6wm4h56R9UaKP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Note that what I find very strange, is that the first MACHINE comes up with=
 efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e as unihas=
h.

But for the second MACHINE it says the hash was 8da90b016d0a41cac6ce46c20d8=
ee64d5e7af35687de43c306544508050227e8 (why? how?) and is changed to efe6373=
f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e (which it should =
have been in the first place).

Does this suggest a lookup issue?

--OwpYUrX6wm4h56R9UaKP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Note that what I find very strange, is that the first MACHINE comes up=
 with efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e as u=
nihash.</div>
<div>&nbsp;</div>
<div>But for the second MACHINE it says the hash was 8da90b016d0a41cac6ce46=
c20d8ee64d5e7af35687de43c306544508050227e8 (why? how?) and is changed to ef=
e6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e (which it sh=
ould have been in the first place).</div>
<div>&nbsp;</div>
<div>Does this suggest a lookup issue?</div>

--OwpYUrX6wm4h56R9UaKP--

