Return-Path: <tpmls@email.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76663C2BBCA
	for <webhook@archiver.kernel.org>; Fri, 28 Jun 2024 10:28:05 +0000 (UTC)
Subject: Re: [yocto] Files are not saved to recipe-sysroot-native
To: "Evgeny Sagatov" <sagatov@ya.ru>, yocto@lists.yoctoproject.org
From: tpmls@email.cz
X-Originating-Location: Naaldwijk, South Holland, NL (185.177.125.58)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Jun 2024 03:28:03 -0700
References: <371001719568379@mail.yandex.ru>
In-Reply-To: <371001719568379@mail.yandex.ru>
Message-ID: <27879.1719570483439377505@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N9mfwxdjEgfDLrSs3SWe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 10:28:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63412

--N9mfwxdjEgfDLrSs3SWe
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Thanks for pointing that out. I didn't realize that immediately. Sorry.

I've tried to build your recipe locally and it seems to be solved by settin=
g the INSTALL_DIR variable to "${base_prefix}/opt", because the base_prefix=
 is modified when inheriting the native bbclass.

Tomas

--N9mfwxdjEgfDLrSs3SWe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks for pointing that out. I didn't realize that immediately. Sorry.<=
/p>

<p>I've tried to build your recipe locally and it seems to be solved by set=
ting the INSTALL_DIR variable to &quot;${base_prefix}/opt&quot;, because th=
e base_prefix is modified when inheriting the native bbclass.</p>

<p>Tomas</p>

--N9mfwxdjEgfDLrSs3SWe--

