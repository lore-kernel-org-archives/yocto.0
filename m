Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A12C47077
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 09:00:23 +0000 (UTC)
Subject: [recipes-bsp] How to update u-boot version?
To: yocto@lists.yoctoproject.org
From: "Lukasz Przenioslo" <bremenpl@gmail.com>
X-Originating-Location: Poznan, Greater Poland, PL (83.20.76.70)
X-Originating-Platform: Windows Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Jan 2024 01:00:14 -0800
Message-ID: <btqV.1705395614398605746.zOHR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="42r6sN33BV7X0HgaaAkp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 09:00:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62166

--42r6sN33BV7X0HgaaAkp
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello,
I am currently on Yocto Kirkstone. The u-boot version used there is `2022.0=
1` in the `poky/meta/recipes-bsp/u-boot`:

```
lukasz@vmks:~/beaglenode/beaglenodeos/poky/meta/recipes-bsp/u-boot$ ls
files  libubootenv_0.3.2.bb  u-boot_2022.01.bb  u-boot-common.inc  u-boot-c=
onfigure.inc  u-boot.inc  u-boot-tools_2022.01.bb  u-boot-tools.inc
```

I am trying to find a way to change the u-boot version to `2023.01`, prefer=
ably in my custom layer, outside of the `poky` repo dir. How to do that? Fo=
r initial testing, I tried to simply change the `SRCREV` in the `poky/meta/=
recipes-bsp/u-boot/u-boot-common.inc` to point to the latest CID on the `20=
23.01` branch. That however yield a failed bitbake build. I am wondering wh=
ether this has anything to do with the specific contents of the `u-boot_202=
2.01.bb` and `u-boot-tools_2022.01.bb` files...

How to approach this problem? I would appreciate all help!

--42r6sN33BV7X0HgaaAkp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,
I am currently on Yocto Kirkstone. The u-boot version used there is <code>2=
022.01</code> in the <code>poky/meta/recipes-bsp/u-boot</code>:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">lukasz@vmks:~/b=
eaglenode/beaglenodeos/poky/meta/recipes-bsp/u-boot$ ls
files  libubootenv_0.3.2.bb  u-boot_2022.01.bb  u-boot-common.inc  u-boot-c=
onfigure.inc  u-boot.inc  u-boot-tools_2022.01.bb  u-boot-tools.inc
</code></pre>
<p>I am trying to find a way to change the u-boot version to <code>2023.01<=
/code>, preferably in my custom layer, outside of the <code>poky</code> rep=
o dir. How to do that? For initial testing, I tried to simply change the <c=
ode>SRCREV</code> in the <code>poky/meta/recipes-bsp/u-boot/u-boot-common.i=
nc</code> to point to the latest CID on the <code>2023.01</code> branch. Th=
at however yield a failed bitbake build. I am wondering whether this has an=
ything to do with the specific contents of the <code>u-boot_2022.01.bb</cod=
e> and <code>u-boot-tools_2022.01.bb</code> files...</p>

<p>How to approach this problem? I would appreciate all help!</p>

--42r6sN33BV7X0HgaaAkp--

