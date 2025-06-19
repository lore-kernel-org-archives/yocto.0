Return-Path: <H.Wulff@kruss.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A2C7115B
	for <webhook@archiver.kernel.org>; Thu, 19 Jun 2025 14:33:01 +0000 (UTC)
Subject: do_unpack:append() with dependencies
To: yocto@lists.yoctoproject.org
From: "H. Wulff" <H.Wulff@kruss.de>
X-Originating-Location: Uetersen, Schleswig-Holstein, DE (91.9.179.70)
X-Originating-Platform: Linux Firefox 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Jun 2025 07:32:54 -0700
Message-ID: <3Kqe.1750343574923654251.ic4p@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4P0Ust4h3a9tremBmi0o"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 14:33:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65523

--4P0Ust4h3a9tremBmi0o
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi,

I've a custom command for unpack with dependency. My first try looked like =
this:

```
do_unpack[depends] =3D "xorriso-native:do_populate_sysroot"

do_unpack() {
    xorriso \
        -osirrox on \
        -indev ${DL_DIR}/$(basename ${ISO}) \
        -extract / ${S}
}
```
Then I recognize that our custom files no longer being copied to `${WORKDIR=
}`.
So I modified the unpack task to:
```
do_unpack:append() {
    xorriso \
        -osirrox on \
        -indev ${DL_DIR}/$(basename ${ISO}) \
        -extract / ${S}
}
```
Then I get wired exceptions like
```
Exception during build_dependencies for do_unpack
```
I don't see what's wrong.

So what the correct way to have a `do_unpack:append()` with dependencies?

Thank you.

--4P0Ust4h3a9tremBmi0o
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>

<p>I've a custom command for unpack with dependency. My first try looked li=
ke this:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">do_unpack[depen=
ds] =3D &#34;xorriso-native:do_populate_sysroot&#34;

do_unpack() {
    xorriso \
        -osirrox on \
        -indev ${DL_DIR}/$(basename ${ISO}) \
        -extract / ${S}
}
</code></pre>
<p>Then I recognize that our custom files no longer being copied to <code>$=
{WORKDIR}</code>.
So I modified the unpack task to:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">do_unpack:appen=
d() {
    xorriso \
        -osirrox on \
        -indev ${DL_DIR}/$(basename ${ISO}) \
        -extract / ${S}
}
</code></pre>
<p>Then I get wired exceptions like</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">Exception durin=
g build_dependencies for do_unpack
</code></pre>
<p>I don't see what's wrong.</p>

<p>So what the correct way to have a <code>do_unpack:append()</code> with d=
ependencies?</p>

<p>Thank you.</p>

--4P0Ust4h3a9tremBmi0o--

