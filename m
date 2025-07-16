Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BEEC83F22
	for <webhook@archiver.kernel.org>; Wed, 16 Jul 2025 21:20:29 +0000 (UTC)
Subject: Environmental variable present in do_compile() {}, bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Jul 2025 14:20:20 -0700
Message-ID: <BkkZ.1752700820980924982.9CZz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="f1DqbowYx15RQu5QZ4Iw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Jul 2025 21:20:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65669

--f1DqbowYx15RQu5QZ4Iw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So to be clear, when I execute bitbake my-recipe -e | grep "MY_VAR'", it is=
 present.

If I make it as far as the do_compile() step, I can also capture the 'expor=
t' command and see that it is present.

However, at the do_configure() step, it, as well as a bunch of other stuff =
is missing.

Is this intentional? A bug? Documented somewhere?

Thanks,
Joe

--f1DqbowYx15RQu5QZ4Iw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So to be clear, when I execute bitbake my-recipe -e | grep "MY_VAR'", =
it is present.</div>
<div>&nbsp;</div>
<div>If I make it as far as the do_compile() step, I can also capture the '=
export' command and see that it is present.</div>
<div>&nbsp;</div>
<div>However, at the do_configure() step, it, as well as a bunch of other s=
tuff is missing.</div>
<div>&nbsp;</div>
<div>Is this intentional? A bug? Documented somewhere?</div>
<div>&nbsp;</div>
<div>Thanks,<br />Joe</div>

--f1DqbowYx15RQu5QZ4Iw--

