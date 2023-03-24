Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914AC6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 12:24:36 +0000 (UTC)
Subject: Re: [meta-security][PATCH] parsec-service: update from 1.1.0 to 1.2.0-rc1
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 24 Mar 2023 05:24:31 -0700
References: <20230323072457.639997-1-mikko.rapeli@linaro.org>
In-Reply-To: <20230323072457.639997-1-mikko.rapeli@linaro.org>
Message-ID: <21387.1679660671564653204@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2NsTsLUYg9atMWQ410JP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 12:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59516

--2NsTsLUYg9atMWQ410JP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Mikko,

Thank you for the patch. In general I don't mind switching from "cargo bitb=
ake" to "bitbake -c update_crates" for Parsec recipes. But, in this case wh=
en you use a git repository instead of a Parsec crate the cargo-update-reci=
pe-crates class includes dependency crates from "fuzz/Cargo.lock" which are=
 not required for Yocto builds.

If you urgently need a new Yocto Parsec recipe then please remove all the f=
uzz/Cargo.lock dependencies. Otherwise we can wait until Parsec 1.2.0 crate=
 released.

Cheers,

Anton

--2NsTsLUYg9atMWQ410JP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Mikko,</p>
<p>&nbsp; Thank you for the patch. In general I don't mind switching from "=
cargo bitbake" to "bitbake -c update_crates" for Parsec recipes. But, in th=
is case when you use a git repository instead of a Parsec crate the cargo-u=
pdate-recipe-crates class includes dependency crates from "fuzz/Cargo.lock"=
 which are not required for Yocto builds.</p>
<p>&nbsp; If you urgently need a new Yocto Parsec recipe then please remove=
 all the fuzz/Cargo.lock dependencies. Otherwise we can wait until Parsec 1=
.2.0 crate released.</p>
<p>&nbsp;</p>
<p>Cheers,</p>
<p>Anton</p>
<p>&nbsp;</p>

--2NsTsLUYg9atMWQ410JP--

