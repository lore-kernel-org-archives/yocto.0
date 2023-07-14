Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686B2C0015E
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 08:31:42 +0000 (UTC)
Subject: Re: wic cp doesn't work with ext4 partition
To: yocto@lists.yoctoproject.org
From: "Markus" <Markus.Lehmann@duagon.com>
X-Originating-Location: Erlangen, Bavaria, DE (80.255.6.155)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jul 2023 23:40:08 -0700
References: <CANn=KGhL7XzFQNXA7win-PgKnCf0RWGf-SAYVd7kCOT0xPzLUA@mail.gmail.com>
In-Reply-To: <CANn=KGhL7XzFQNXA7win-PgKnCf0RWGf-SAYVd7kCOT0xPzLUA@mail.gmail.com>
Message-ID: <25008.1689316808406713055@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iqmXbJITp6cmSU0agfKm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 08:31:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60576

--iqmXbJITp6cmSU0agfKm
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 13, 2023 at 09:17 PM, Logan Grosz wrote:

>
> I am having a similar problem with `wic cp` and ext4. Though, my problem =
is
> a file cannot be copied to a specific path with `wic cp <src>
> <image>:<part><path>. No matter what I put, the file gets put at the root=
.
>=20
> ```
> $ wic cp test ./my.wic:1/etc/
> $ wic ls test ./my.wic:1/etc/
> .
> ..
> $ wic ls ./my.wic:1
> .
> ..
> /etc
> test
> ```
>=20
> I am unsure if this is related, but I thought I'd mention it since I am
> experiencing issues with the same command.
>=20
> Logan
=20
=20
Hi Logan,

I think this is the same problem.<br>
Has anyone of you tried to use this "-n" or "--native-sysroot <path>" param=
eter like here?: <br>
`wic cp <src> <dest-image>:<partition><path> --native-sysroot <path>` <br>
In my YOCTO build I see that e.g. `mtools` and `parted` are also built. <br=
>
So I tried these but do not see a difference.<br>

My suspicion is, that the interworking between the `wic`-python script and =
the external used tools has somehow a problem. Perhaps it works only with s=
pecific versions. <br>
It is sad that no errors/warnings are shown which could lead to an answer.<=
br>

Cheers,
Markus


--iqmXbJITp6cmSU0agfKm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>On Thu, Jul 13, 2023 at 09:17 PM, Logan Grosz wrote:</p>

<blockquote>
<p>I am having a similar problem with <code>wic cp</code> and ext4. Though,=
 my problem is
a file cannot be copied to a specific path with `wic cp <src>
<image>:<part><path>. No matter what I put, the file gets put at the root.<=
/p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">$ wic cp test .=
/my.wic:1/etc/
$ wic ls test ./my.wic:1/etc/
.
..
$ wic ls ./my.wic:1
.
..
/etc
test
</code></pre>
<p>I am unsure if this is related, but I thought I'd mention it since I am
experiencing issues with the same command.</p>

<p>Logan</p>
</blockquote>

<p>Hi Logan,</p>

<p>I think this is the same problem.<br>
Has anyone of you tried to use this &quot;-n&quot; or &quot;--native-sysroo=
t <path>&quot; parameter like here?: <br>
<code>wic cp &lt;src&gt; &lt;dest-image&gt;:&lt;partition&gt;&lt;path&gt; -=
-native-sysroot &lt;path&gt;</code> <br>
In my YOCTO build I see that e.g. <code>mtools</code> and <code>parted</cod=
e> are also built. <br>
So I tried these but do not see a difference.<br></p>

<p>My suspicion is, that the interworking between the <code>wic</code>-pyth=
on script and the external used tools has somehow a problem. Perhaps it wor=
ks only with specific versions. <br>
It is sad that no errors/warnings are shown which could lead to an answer.<=
br></p>

<p>Cheers,
Markus</p>

--iqmXbJITp6cmSU0agfKm--

