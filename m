Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2E19E0052B; Fri, 27 Jan 2017 06:49:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 271D5E00510
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:48:58 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id c85so120043589wmi.1
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZeCbqLv1MPz8NSvbjX8pnYI8mpMIBe3alYvXpni0yQU=;
	b=S+H5BjSyJi0QTwUoA/0wabe5GZrxIyATI8gK7SSVRVTiJGlvDvEVjzzVS1xWG1XfyG
	l4J+wXD1y8vAHOkXmeKr7uRgvedR41zIT+GDwy6sTsGcHb7c1LYKuxpC3oY9QXZ6br+5
	mPH1g3ZJXaoLd7h9i3sl8QzK2RIwdwjZPpBn9gc0VhXinPH9KkVP0D7wwimdCzI35Twp
	xKDnnyLU+sUUNt2M+BlmwyV5cLQxO3ala9wTcyWrZ4Cz6QpfMwtODw9fhKpZOvZGLoqG
	W2aZroJ+Hr7GkT51nza0vGtU1cZzq2871UvxMhlFNWVVYZM7E7tdlozTbrh2ByH/7aiH
	U4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZeCbqLv1MPz8NSvbjX8pnYI8mpMIBe3alYvXpni0yQU=;
	b=nK3wueb9VD3td9a1lJLcCZLvkDPLznnDgHUuzXx3hB9R8HZR6glyQ+tPP+d16aCKSi
	7nte9ObJervIV7/Hmr7y6GNB0cEExYPzgytPx39paVwCPE6MFYCX6MrUd23N6gmBT6XV
	9noPx6zYKZBh+BEvZEkiDNLkQ4xbmCv5rln8F7S3nIdOgtxf+4xeuYRCsG4qmCLEHRki
	5mkWvVU9dzyxhbTIcU6AnnRmqljr4Voo1PAlpjBxCF6493IX1utAdDM1DdvKQuFaf+Cc
	uBAYJDYZOTMQw4AzjqfD4FOy20GTo5FQebURsl6przRte3eZ6NKd5lEnt1n1K5EnHLfO
	p4aA==
X-Gm-Message-State: AIkVDXJDEa2xB2DnBm0EYPCNrf2ETbuaKBY9zCGQVKdiSM0/374Ar9z09j8n/IHYQNlxjPRgrE/FKf43R4qfdA==
X-Received: by 10.28.166.215 with SMTP id p206mr3673341wme.87.1485528537617;
	Fri, 27 Jan 2017 06:48:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Fri, 27 Jan 2017 06:48:57 -0800 (PST)
In-Reply-To: <1484820572-11891-6-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<1484820572-11891-6-git-send-email-jacob-chen@iotwrt.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Fri, 27 Jan 2017 15:48:57 +0100
Message-ID: <CABgxDoJzMo931=QcCr4xTV4aae+gFTSvUNPnX9f6DnLL_r1fqQ@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: yocto@yoctoproject.org, eddie.cai@rock-chips.com
Subject: Re: [PATCH 5/7] recipes-bsp: add u-boot-rockchip support
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
X-List-Received-Date: Fri, 27 Jan 2017 14:49:00 -0000
Content-Type: multipart/alternative; boundary=94eb2c12943ec9de490547149058

--94eb2c12943ec9de490547149058
Content-Type: text/plain; charset=UTF-8

Hi all,


2017-01-19 11:09 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com>:

> Rockchip next-dev U-boot is the next generation of rockchip u-boot, will
> also be an upstream tracking branch.
> At present, this branch is just a rebased upstream u-boot.
>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  recipes-bsp/u-boot/u-boot-rockchip_next.bb | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
>
> diff --git a/recipes-bsp/u-boot/u-boot-rockchip_next.bb
> b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
> new file mode 100644
> index 0000000..30d16b0
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
> @@ -0,0 +1,17 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +require recipes-bsp/u-boot/u-boot.inc
> +
> +DESCRIPTION = "Rockchip next-dev U-Boot"
> +LICENSE = "GPLv2+"
> +LIC_FILES_CHKSUM = "file://Licenses/README;md5=
> a2c678cfd4a4d97135585cad908541c6"
> +COMPATIBLE_MACHINE = "(rk3288)"
>


So... in this case why not simply use u-boot mainline ? Most of
rk3288-based boards are very well supported with
http://git.denx.de/?p=u-boot/u-boot-rockchip.git ..
Do you need something specific that it is not supported yet by u-boot
mainline ?

My philosophy is simple:  When the SoC and the board is correctly supported
by a project on upstream, we use the mainline version of this project (ex:
the linux kernel, u-boot, etc). When that's not the case, we can write a
specific recipe for a vendor version. This is the case for example for the
kernel vendor "linux-rockchip" (
https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/recipes-kernel/linux/linux-rockchip_3.0.bb?id=0f7f53c00e7787d5e4843752721a1690169f4ffd),
that's basically the kernel vendor 3.0.36 for the radxa rock here because
that's the kernel which supports the most features and I/O (compared to the
mainline kernel for this SoC or this board).


Thanks,
Romain

--94eb2c12943ec9de490547149058
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br><div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">2017-01-19 11:09 GMT+01:00 Jacob Chen <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:jacob-chen@iotwrt.com" target=3D"_blank">jacob-chen@=
iotwrt.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Rockchip next-dev U-boot is the next generation of rockchip u-boot, wi=
ll also be an upstream tracking branch.<br>
At present, this branch is just a rebased upstream u-boot.<br>
<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jaco=
b-chen@iotwrt.com</a>&gt;<br>
---<br>
=C2=A0recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a> | 17 +++++++=
++++++++++<br>
=C2=A01 file changed, 17 insertions(+)<br>
=C2=A0create mode 100644 recipes-bsp/u-boot/<a href=3D"http://u-boot-rockch=
ip_next.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.=
bb</a><br>
<br>
diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" =
rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a> b/rec=
ipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" rel=3D"noreferre=
r" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a><br>
new file mode 100644<br>
index 0000000..30d16b0<br>
--- /dev/null<br>
+++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a><br>
@@ -0,0 +1,17 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+require recipes-bsp/u-boot/u-boot.inc<br>
+<br>
+DESCRIPTION =3D &quot;Rockchip next-dev U-Boot&quot;<br>
+LICENSE =3D &quot;GPLv2+&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3D<wbr>a2c678cfd4a4d=
97135585cad908541<wbr>c6&quot;<br>
+COMPATIBLE_MACHINE =3D &quot;(rk3288)&quot;<br></blockquote><div><br><br><=
/div><div>So... in this case why not simply use u-boot mainline ? Most of r=
k3288-based boards are very well supported with <a href=3D"http://git.denx.=
de/?p=3Du-boot/u-boot-rockchip.git">http://git.denx.de/?p=3Du-boot/u-boot-r=
ockchip.git</a> ..<br></div><div>Do you need something specific that it is =
not supported yet by u-boot mainline ?<br><br></div><div>My philosophy is s=
imple:=C2=A0 When the SoC and the board is correctly supported by a project=
 on upstream, we use the mainline version of this project (ex: the linux ke=
rnel, u-boot, etc). When that&#39;s not the case, we can write a specific r=
ecipe for a vendor version. This is the case for example for the kernel ven=
dor &quot;linux-rockchip&quot; (<a href=3D"https://git.yoctoproject.org/cgi=
t/cgit.cgi/meta-rockchip/tree/recipes-kernel/linux/linux-rockchip_3.0.bb?id=
=3D0f7f53c00e7787d5e4843752721a1690169f4ffd">https://git.yoctoproject.org/c=
git/cgit.cgi/meta-rockchip/tree/recipes-kernel/linux/linux-rockchip_3.0.bb?=
id=3D0f7f53c00e7787d5e4843752721a1690169f4ffd</a>), that&#39;s basically th=
e kernel vendor 3.0.36 for the radxa rock here because that&#39;s the kerne=
l which supports the most features and I/O (compared to the mainline kernel=
 for this SoC or this board).<br><br></div><div><br></div><div>Thanks,<br><=
/div><div>Romain<br></div><div>=C2=A0</div></div><br></div></div></div>

--94eb2c12943ec9de490547149058--
