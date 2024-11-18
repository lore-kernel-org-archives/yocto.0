Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 026ADD591B7
	for <webhook@archiver.kernel.org>; Mon, 18 Nov 2024 20:56:29 +0000 (UTC)
Subject: Re: [yocto] Sanity check on a flashing process design
To: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>, yocto@lists.yoctoproject.org
From: "Uy Ha" <hchanuy@gmail.com>
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 18 Nov 2024 12:56:22 -0800
References: <w2rndbir5wntt4ejjb6xels5i6wpekjzqf7hrzxpt2qlntdpt4@faw4p765jxhk>
In-Reply-To: <w2rndbir5wntt4ejjb6xels5i6wpekjzqf7hrzxpt2qlntdpt4@faw4p765jxhk>
Message-ID: <6663.1731963382540290591@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="59IqQiqdDyExZsLT2Df1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 20:56:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64289

--59IqQiqdDyExZsLT2Df1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> How did you run `gzwrite`? You can use dd the same way.
>=20

I ran it in the U-Boot console, like this
```
gzwrite mmc 2 ${loadaddr} ${filesize}
```
I can't find `dd` in U-Boot's document and it also does not exist in my U-B=
oot console.

>=20
> Do you have a SSH connection? I flash new images via SSH.
>=20

In the expected setup that I have to deal with, no. I need the process to s=
et up the system from scratch to functional to have as little interaction a=
s possible, ideally
* plugging a USB
* see messages about the progress
* see a final message saying everything is done
* functional system
Hence, connecting via SSH is undesirable in my case.

--59IqQiqdDyExZsLT2Df1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>How did you run `gzwrite`? You can use dd the same way.</div>
</blockquote>
<div>I ran it in the U-Boot console, like this</div>
<div>```</div>
<div>gzwrite mmc 2 ${loadaddr} ${filesize}</div>
<div>```</div>
<div>I can't find `dd` in U-Boot's document and it also does not exist in m=
y U-Boot console.</div>
<blockquote>
<div>Do you have a SSH connection? I flash new images via SSH.</div>
</blockquote>
<div>In the expected setup that I have to deal with, no. I need the process=
 to set up the system from scratch to functional to have as little interact=
ion as possible, ideally</div>
<ol>
<li>plugging a USB</li>
<li>see messages about the progress</li>
<li>see a final message saying everything is done</li>
<li>functional system</li>
</ol>
<div>Hence, connecting via SSH is undesirable in my case.</div>

--59IqQiqdDyExZsLT2Df1--

