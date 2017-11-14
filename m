Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48993E00D24; Tue, 14 Nov 2017 11:45:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A45E00D07
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 11:45:04 -0800 (PST)
Received: by mail-pf0-f180.google.com with SMTP id i15so4843942pfa.3
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 11:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=L7Y6WpSAA7XT6m1zML2WgCZ/tmxVeW4zQ2BrvDDHy7Q=;
	b=n61Dp3c5S/A3Zt/RUB7K0yJdHq8JpVzpLBCMVwH/A50BTZGNpYh+S/h9IO9XIiutRw
	JvItpcJZsXHVNZi3ohWaOCTarUGpqMS7qzLP92iZvfqTmL77/D22nM24XMCUlfmT25BC
	xu1y5hThg0k5q2MHYlanloSUmGlkbHDvvEK9Lmwck1j0S5ftCm33OJXjEeyweQupxXSd
	V9jt20w4A0mpD1uzZn/fc0E2z40CAK2lz2NGOvy15JEbk3k7xuqInEluKmYDFO6Eyvpf
	iPibXPNjxPzMaKTm9DvC6msoxljKFOVWgOGMsBFeHQ+n881ODqT2V+RTrKuSneC7UlAv
	jPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=L7Y6WpSAA7XT6m1zML2WgCZ/tmxVeW4zQ2BrvDDHy7Q=;
	b=KTdtkqhTw+BCq3TP5VEzT7wLCKS2N/+0inNSrueDi0sJ/lY3ztrNGBScYXh3wPbUyF
	MVPNq3yJoOV81nkMotPTuUUOzIaXh4XQO92J8xbCLgpbTgYGAM4TuRnwRyH+DCoJrboX
	PZPwGbGQ5VTrKfPxlWVT/OkSE9R5zYQ3Zf3Ww7uX7xJEfwc/O2IhtsqGfzmOgJDbma9R
	nCrd9CuK2JRaXCirTe7gQkEPaQJ2yEGyCiMqdXceqvWMVeapwdECwD15nUaEVxy7ME53
	Nw76LjmG7WjeaxZqNvJG/XSVHSsvp1lboOYL6CxBANBVmiKrQ7iH7fMG9H3Qs4aghyEv
	AVzQ==
X-Gm-Message-State: AJaThX4eSiv3MYakmqnKqKYvmEDWVhK7VzRhua5F66D9GrmBj779G+Js
	5DbQOj+YKfxfdxRDmuNYla70OxxYwIsgPO4jlELFOw==
X-Google-Smtp-Source: AGs4zMZx+9eFNZzjZmkWgQv4wavanhuijKl2y2DC1xGUJd+PL8Afd4wQdY2SF+iYc5NYN70NNpXhr7nwrV62O6gqP3w=
X-Received: by 10.101.86.201 with SMTP id w9mr13083141pgs.191.1510688704233;
	Tue, 14 Nov 2017 11:45:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.148.229 with HTTP; Tue, 14 Nov 2017 11:45:03 -0800 (PST)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Tue, 14 Nov 2017 20:45:03 +0100
Message-ID: <CAFq4t4gMebsh+sDshsHXQ8pvk7OuPT9wfjY27Lr=WEt7jgy9iQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Toolchain generation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Nov 2017 19:45:06 -0000
Content-Type: multipart/alternative; boundary="089e08264dd8950802055df69fca"

--089e08264dd8950802055df69fca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dears,

I have built under Ubuntu/Linux 14.04 an Yocto image *imx-morty* for
i.MX6QP with *bitbake fsl-image-qt5*. Now I want to generate the
cross-toolchain for this image as follows

root@02849625e4d5:/home/root/fsl-morty-bsp/build-x11/tmp/deploy/sdk# sh
fsl-imx-x11-glibc-x86_64-fsl-image-qt5-cortexa9hf-neon-toolchain-4.9.11-1.0=
.0.sh

Here is the toolchain's generation where I got stuck at

NXP i.MX Release Distro SDK installer version 4.9.11-1.0.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
Enter target directory for SDK (default: /opt/fsl-imx-x11/4.9.11-1.0.0):
You are about to install the SDK to "/opt/fsl-imx-x11/4.9.11-1.0.0".
Proceed[Y/n]? y
Extracting
SDK........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.................................tar:
./sysroots/cortexa9hf-neon-poky-linux-gnueabi/lib/firmware: Directory
renamed before its status could be extracted
tar: ./sysroots/cortexa9hf-neon-poky-linux-gnueabi/lib: Directory renamed
before its status could be extracted
tar: ./sysroots/cortexa9hf-neon-poky-linux-gnueabi/var: Directory renamed
before its status could be extracted
tar: Exiting with failure status due to previous errors

I have used standard version of "tar" package 1.27-1. As problems prevail I
did downgraded it to version to 1.26 version with no success.

How this issue can be fixed?

--089e08264dd8950802055df69fca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dears,<br></div><div><br></div><div>I have built unde=
r Ubuntu/Linux 14.04 an Yocto image <em>imx-morty</em> for i.MX6QP with <em=
>bitbake fsl-image-qt5</em>. Now I want to generate the cross-toolchain for=
 this image as follows </div><div class=3D"gmail-jive-rendered-content"><bl=
ockquote class=3D"gmail-jive_macro_quote gmail-jive-quote gmail-jive_text_m=
acro"><p>root@02849625e4d5:/home/root/fsl-morty-bsp/build-x11/tmp/deploy/sd=
k#
 sh=20
<a href=3D"http://fsl-imx-x11-glibc-x86_64-fsl-image-qt5-cortexa9hf-neon-to=
olchain-4.9.11-1.0.0.sh">fsl-imx-x11-glibc-x86_64-fsl-image-qt5-cortexa9hf-=
neon-toolchain-4.9.11-1.0.0.sh</a></p></blockquote><p></p>Here is the toolc=
hain&#39;s generation where I got stuck at<blockquote class=3D"gmail-jive_m=
acro_quote gmail-jive-quote gmail-jive_text_macro"><p>NXP i.MX Release Dist=
ro SDK installer version 4.9.11-1.0.0<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Enter=
 target directory for SDK (default: /opt/fsl-imx-x11/4.9.11-1.0.0): <br>You=
 are about to install the SDK to &quot;/opt/fsl-imx-x11/4.9.11-1.0.0&quot;.=
 Proceed[Y/n]? y<br>Extracting
=20
SDK........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.................................tar:
 ./sysroots/cortexa9hf-neon-poky-linux-gnueabi/lib/firmware: Directory=20
renamed before its status could be extracted<br>tar: ./sysroots/cortexa9hf-=
neon-poky-linux-gnueabi/lib: Directory renamed before its status could be e=
xtracted<br>tar: ./sysroots/cortexa9hf-neon-poky-linux-gnueabi/var: Directo=
ry renamed before its status could be extracted<br>tar: Exiting with failur=
e status due to previous errors</p></blockquote><p>I
 have used standard version of &quot;tar&quot; package 1.27-1. As problems =
prevail
 I did downgraded it to version to 1.26 version with no success.</p><p>How =
this issue can be fixed?</p></div></div>

--089e08264dd8950802055df69fca--
