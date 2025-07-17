Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18FEC83F1A
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 16:24:19 +0000 (UTC)
Subject: Re: [yocto] Environmental variable present in do_compile() {}, bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Jul 2025 09:24:17 -0700
References: <CANNYZj-153HOf3oC_=8PYLwtDYqBQQFNE=hP+JYXikw3YDa7Rg@mail.gmail.com>
In-Reply-To: <CANNYZj-153HOf3oC_=8PYLwtDYqBQQFNE=hP+JYXikw3YDa7Rg@mail.gmail.com>
Message-ID: <20575.1752769457005932864@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="s5wzP7zW6T20hbXJJAJc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 16:24:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65673

--s5wzP7zW6T20hbXJJAJc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So in experimenting, I learned that if I did a 'export ABC=3D3' in my envir=
onment followed by a 'bitbake whatever', the ABC environment variable would=
 persist all the way to the do_compile(). However, what I found weird is th=
at it is not present in the do_configure() step.

--s5wzP7zW6T20hbXJJAJc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So in experimenting, I learned that if I did a 'export ABC=3D3' in my =
environment followed by a 'bitbake whatever', the ABC environment variable =
would persist all the way to the do_compile(). However, what I found weird =
is that it is not present in the do_configure() step.</div>
<div>&nbsp;</div>

--s5wzP7zW6T20hbXJJAJc--

