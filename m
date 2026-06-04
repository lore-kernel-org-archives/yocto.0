Return-Path: <H.Wulff@kruss.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 871FECD6E4A
	for <webhook@archiver.kernel.org>; Thu,  4 Jun 2026 08:27:26 +0000 (UTC)
Subject: Re: [yocto] Task chain for population to sysroot-native?
To: "Paul Barker" <paul@pbarker.dev>, yocto@lists.yoctoproject.org
From: "H. Wulff" <H.Wulff@kruss.de>
X-Originating-Location: Uetersen, Schleswig-Holstein, DE (91.9.177.59)
X-Originating-Platform: Linux Firefox 151
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Jun 2026 01:27:23 -0700
References: <2QUP.1780507826891383486.LNlm@lists.yoctoproject.org> <e3cd9995fc428cb092e88419be866d6ac7b7dce9.camel@pbarker.dev>
In-Reply-To: <e3cd9995fc428cb092e88419be866d6ac7b7dce9.camel@pbarker.dev>
Message-ID: <2530010.1780561643797700469@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9XH4ZgdvqIIsizxNQ7zP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jun 2026 08:27:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66589

--9XH4ZgdvqIIsizxNQ7zP
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I followed your hint and this way it works. Thanks!

But one thing I haven't figured out yet: Where does the binaries for the `s=
ysroot` folder come from? From `${WORKDIR}` or from the sstate-cache?

--9XH4ZgdvqIIsizxNQ7zP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Paul,</p>

<p>I followed your hint and this way it works. Thanks!</p>

<p>But one thing I haven't figured out yet: Where does the binaries for the=
 <code>sysroot</code> folder come from? From <code>${WORKDIR}</code> or fro=
m the sstate-cache?</p>

--9XH4ZgdvqIIsizxNQ7zP--

