Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 589ECE009DB; Sat, 18 Feb 2017 09:42:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCFD5E007AA
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 09:42:43 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id r18so7599060wmd.3
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 09:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KV5jF2a3zMp+62wwP+MUFx6r9fi+uirbAatSNlcq2Kw=;
	b=nYPrfZJnb8y2WixHYpEdqWsH4VyK92UEOPIiRC8NE4dghLQSseLeu9l2RYehiBAPhs
	vv+5OsftAHEdMQxTgk74bwYj6/CcT5RpHEY+J8MlHR5plRukPot93dxdD54dvFSbmHrW
	o+Wcgche+8l/IzeNAmcmDjchKWw9oanJvarDgk0LsobAGV/hYXEzZDqKOK8LLvhMVFig
	MvRKBk61Iqa0KPczSYxpTx+cRsjcE9opZiSuhi/xc+LTHRzWjgcaqWfP5slGwELp5mcX
	xFftcwG+S3DabNzHkmHjEJxN+lBpyNbPvAYjniA0ChIFAWb6bTrUgLLMUo1Y4Sp8rzXc
	4FdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KV5jF2a3zMp+62wwP+MUFx6r9fi+uirbAatSNlcq2Kw=;
	b=nyjzT/0GDgOazZPZn2nGWRi2HRrYdGsGHhLg0Yx51VF7deqLre7jmFhd4mGQDr3ml9
	3vnsHSjfbagvsee4fC6WgxSw//gLR5xPRHsez2NSqjWraNeokMf2Z6PZFunTYf8lgofn
	dkFxrXKnVnOcLSZIyLs073bI31h4fWWYxcWj55QZqGUky1+cBGLka2VgKMM+Wo3znz1w
	2FDvLGzLGnhRpkThq5lOutBf+UW4niuNtLgXJbg6FcxHZEWbEaaAnlu/poclNdwm0ZJ5
	BBHEa0qrBY8LEFCw0FvPMYRgosZE9i1NyiloLyzmFj8iyCoE+TjnYoiJYV+HTR2kTXIV
	XCTw==
X-Gm-Message-State: AMke39nfJSJ/CDsvBuziW+Qbdoh0wsUqx4rcaNj+2HUdp4r3VdFCgZQ0VK0IDTMtYujgSbMgF/Y5UakaaV5Qeg==
X-Received: by 10.28.140.140 with SMTP id o134mr10495172wmd.87.1487439762433; 
	Sat, 18 Feb 2017 09:42:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Sat, 18 Feb 2017 09:42:42 -0800 (PST)
In-Reply-To: <20170217180748.28796-3-twoerner@gmail.com>
References: <20170217180748.28796-1-twoerner@gmail.com>
	<20170217180748.28796-3-twoerner@gmail.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Sat, 18 Feb 2017 18:42:42 +0100
Message-ID: <CABgxDo++_BWPYAWALD3823TxTHku8t09TAuju_jkcnJd9JuUjA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Romain Perier <romain.perier@collabora.com>, yocto@yoctoproject.org,
	Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH 2/3] u-boot-rockchip: add
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
X-List-Received-Date: Sat, 18 Feb 2017 17:42:46 -0000
Content-Type: multipart/alternative; boundary=001a1145b038aa355e0548d18e95

--001a1145b038aa355e0548d18e95
Content-Type: text/plain; charset=UTF-8

Hi.

Could you:
- Split this commit into 3 differents commits: one for firefly, one for
rk3288.inc and another one for the recipe
- Just call the recipe u-boot-rockchip, even if that's next we don't care.
That's your version of uboot based on mainline and it's a release branch,
so "next" is useless.
- I don't like COMPATIBLE_MACHINE=(rk3288)... only add supported boards
(that are parts of the meta layer)

Thanks!
Romain

2017-02-17 19:07 GMT+01:00 Trevor Woerner <twoerner@gmail.com>:

> From: Jacob Chen <jacob-chen@iotwrt.com>
>
> Rockchip next-dev U-boot is the next generation of rockchip u-boot, will
> also
> be an upstream tracking branch At present, this branch is just a rebased
> upstream u-boot.
>
> Reviewed-by: Trevor Woerner <twoerner@gmail.com>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  conf/machine/firefly-rk3288.conf           |  1 +
>  conf/machine/include/rk3288.inc            |  8 +++++++-
>  recipes-bsp/u-boot/u-boot-rockchip_next.bb | 18 ++++++++++++++++++
>  3 files changed, 26 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
>
> diff --git a/conf/machine/firefly-rk3288.conf
> b/conf/machine/firefly-rk3288.conf
> index 8fa005d..58d752b 100644
> --- a/conf/machine/firefly-rk3288.conf
> +++ b/conf/machine/firefly-rk3288.conf
> @@ -8,3 +8,4 @@
>
>  include conf/machine/include/rk3288.inc
>  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
> +UBOOT_MACHINE = "firefly-rk3288_defconfig"
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index 86fc567..f067ad5 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -1,9 +1,15 @@
>  # Copyright (C) 2015 Romain Perier
>  # Released under the MIT license (see COPYING.MIT for the terms)
>
> +SOC_FAMILY = "rk3288"
> +
>  require conf/machine/include/tune-cortexa17.inc
> +require conf/machine/include/soc-family.inc
>
>  PREFERRED_PROVIDER_virtual/kernel = "linux"
> -SERIAL_CONSOLES = "115200;ttyS2"
>  KERNEL_IMAGETYPE = "zImage"
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
> +
> +PREFERRED_PROVIDER_virtual/bootloader = "u-boot-rockchip"
> +SERIAL_CONSOLES = "115200;ttyS2"
> +SPL_BINARY = "u-boot-spl-dtb.bin"
> diff --git a/recipes-bsp/u-boot/u-boot-rockchip_next.bb
> b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
> new file mode 100644
> index 0000000..845f9da
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
> @@ -0,0 +1,18 @@
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
> +
> +SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
> +SRCREV = "${AUTOREV}"
> +S = "${WORKDIR}/git"
> +
> +do_deploy_prepend () {
> +       # copy to default search path
> +       cp ${B}/spl/${SPL_BINARY} ${B}/
> +}
> --
> 2.11.0.258.ge05806d
>
>

--001a1145b038aa355e0548d18e95
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi.<br><br></div>Could you:<=
br></div>- Split this commit into 3 differents commits: one for firefly, on=
e for rk3288.inc and another one for the recipe<br></div>- Just call the re=
cipe u-boot-rockchip, even if that&#39;s next we don&#39;t care. That&#39;s=
 your version of uboot based on mainline and it&#39;s a release branch, so =
&quot;next&quot; is useless.<br></div>- I don&#39;t like COMPATIBLE_MACHINE=
=3D(rk3288)... only add supported boards (that are parts of the meta layer)=
<br><br></div>Thanks!<br></div>Romain<br></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">2017-02-17 19:07 GMT+01:00 Trevor Woerner <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">=
twoerner@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: =
Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jacob-chen@iotwrt.c=
om</a>&gt;<br>
<br>
Rockchip next-dev U-boot is the next generation of rockchip u-boot, will al=
so<br>
be an upstream tracking branch At present, this branch is just a rebased<br=
>
upstream u-boot.<br>
<br>
Reviewed-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoer=
ner@gmail.com</a>&gt;<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jaco=
b-chen@iotwrt.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/firefly-rk3288.<wbr>conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 1 +<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 8 +++++++-<br>
=C2=A0recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a> | 18 +++++++=
+++++++++++<br>
=C2=A03 files changed, 26 insertions(+), 1 deletion(-)<br>
=C2=A0create mode 100644 recipes-bsp/u-boot/<a href=3D"http://u-boot-rockch=
ip_next.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.=
bb</a><br>
<br>
diff --git a/conf/machine/firefly-rk3288.<wbr>conf b/conf/machine/firefly-r=
k3288.<wbr>conf<br>
index 8fa005d..58d752b 100644<br>
--- a/conf/machine/firefly-rk3288.<wbr>conf<br>
+++ b/conf/machine/firefly-rk3288.<wbr>conf<br>
@@ -8,3 +8,4 @@<br>
<br>
=C2=A0include conf/machine/include/rk3288.<wbr>inc<br>
=C2=A0KERNEL_DEVICETREE =3D &quot;rk3288-firefly.dtb&quot;<br>
+UBOOT_MACHINE =3D &quot;firefly-rk3288_defconfig&quot;<br>
diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/include/rk=
3288.<wbr>inc<br>
index 86fc567..f067ad5 100644<br>
--- a/conf/machine/include/rk3288.<wbr>inc<br>
+++ b/conf/machine/include/rk3288.<wbr>inc<br>
@@ -1,9 +1,15 @@<br>
=C2=A0# Copyright (C) 2015 Romain Perier<br>
=C2=A0# Released under the MIT license (see COPYING.MIT for the terms)<br>
<br>
+SOC_FAMILY =3D &quot;rk3288&quot;<br>
+<br>
=C2=A0require conf/machine/include/tune-<wbr>cortexa17.inc<br>
+require conf/machine/include/soc-<wbr>family.inc<br>
<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux&quot;<br>
-SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
=C2=A0KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
=C2=A0KBUILD_DEFCONFIG =3D &quot;multi_v7_defconfig&quot;<br>
+<br>
+PREFERRED_PROVIDER_virtual/<wbr>bootloader =3D &quot;u-boot-rockchip&quot;=
<br>
+SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
+SPL_BINARY =3D &quot;u-boot-spl-dtb.bin&quot;<br>
diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" =
rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a> b/rec=
ipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" rel=3D"noreferre=
r" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a><br>
new file mode 100644<br>
index 0000000..845f9da<br>
--- /dev/null<br>
+++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a><br>
@@ -0,0 +1,18 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+require recipes-bsp/u-boot/u-boot.inc<br>
+<br>
+DESCRIPTION =3D &quot;Rockchip next-dev U-Boot&quot;<br>
+LICENSE =3D &quot;GPLv2+&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3D<wbr>a2c678cfd4a4d=
97135585cad908541<wbr>c6&quot;<br>
+COMPATIBLE_MACHINE =3D &quot;(rk3288)&quot;<br>
+<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/rockchip-linux/u-boot=
.git;branch=3Drelease" rel=3D"noreferrer" target=3D"_blank">github.com/rock=
chip-<wbr>linux/u-boot.git;branch=3D<wbr>release</a>;&quot;<br>
+SRCREV =3D &quot;${AUTOREV}&quot;<br>
+S =3D &quot;${WORKDIR}/git&quot;<br>
+<br>
+do_deploy_prepend () {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# copy to default search path<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cp ${B}/spl/${SPL_BINARY} ${B}/<br>
+}<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.11.0.258.ge05806d<br>
<br>
</font></span></blockquote></div><br></div>

--001a1145b038aa355e0548d18e95--
