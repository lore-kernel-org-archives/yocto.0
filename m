Return-Path: <danorris@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4A3CFF8864
	for <webhook@archiver.kernel.org>; Mon, 27 Apr 2026 21:55:34 +0000 (UTC)
Subject: Re: [yocto] [qa-build-notification] QA notification for completed autobuilder build (yocto-6.0.rc1)
To: vlad.pruteanu@p3-group.com, yocto@lists.yoctoproject.org
From: danorris@gmail.com
X-Originating-Location: Bochum, North Rhine-Westphalia, DE (92.209.191.144)
X-Originating-Platform: Linux Firefox 149
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Apr 2026 14:55:33 -0700
References: <0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com> <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org> <CAC3TgALNd8yFbHO7vqnSwYPggczp1gmMrAgCoXoWbW_i6FVs9w@mail.gmail.com> <53c2c6f263b874cbf8382fa7d5993aac51835cbd.camel@linuxfoundation.org> <1637251.1777280730612486891@lists.yoctoproject.org>
In-Reply-To: <1637251.1777280730612486891@lists.yoctoproject.org>
Message-ID: <1665690.1777326933976571713@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GOXyH00It7VGSBYlCIf5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2026 21:55:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66449

--GOXyH00It7VGSBYlCIf5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm also experiencing this issue. Crates.io publishes a Data Access Policy =
at https://crates.io/data-access ( https://crates.io/data-access ) which st=
ates a "crates.io API" request limit of 1 per second. As others mentioned, =
this limit is likely to be exceeded for most BitBake recipes that use Cargo=
. Through experimentation, it seems to me that exceeding the rate limit act=
ually leads to a temporary block, at least 1 hour in my case. This makes bu=
ilding impossible for a while, unless I manually prefetch/mirror all needed=
 crates. The impact is therefore quite a bit more serious than one might un=
derstand as "intermittent network failure."

I looked for a simple way to download crates without using the "API," but d=
idn't find one. On the other hand "cargo install" must get them somehow, bu=
t the naive approach of sniffing its network traffic fails because it's enc=
rypted.

I did find that varying the User-Agent header defeats the rate limit. Howev=
er I wouldn't propose this as a valid solution since I don't think BitBake =
should deliberately circumvent the stated policy of a CDN.

David

--GOXyH00It7VGSBYlCIf5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm also experiencing this issue. Crates.io publishes a Data Access Po=
licy at <a href=3D"https://crates.io/data-access" target=3D"_blank" rel=3D"=
noopener">https://crates.io/data-access </a>which states a "crates.io API" =
request limit of 1 per second. As others mentioned, this limit is likely to=
 be exceeded for most BitBake recipes that use Cargo. Through experimentati=
on, it seems to me that exceeding the rate limit actually leads to a tempor=
ary block, at least 1 hour in my case. This makes building impossible for a=
 while, unless I manually prefetch/mirror all needed crates. The impact is =
therefore quite a bit more serious than one might understand as "intermitte=
nt network failure."</div>
<div>&nbsp;</div>
<div>I looked for a simple way to download crates without using the "API," =
but didn't find one. On the other hand "cargo install" must get them someho=
w, but the naive approach of sniffing its network traffic fails because it'=
s encrypted.</div>
<div>&nbsp;</div>
<div>I did find that varying the User-Agent header defeats the rate limit. =
However I wouldn't propose this as a valid solution since I don't think Bit=
Bake should deliberately circumvent the stated policy of a CDN.</div>
<div>&nbsp;</div>
<div>David</div>

--GOXyH00It7VGSBYlCIf5--

