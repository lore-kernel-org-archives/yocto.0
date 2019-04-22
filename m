Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD309E00C44; Sun, 21 Apr 2019 20:47:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A650E00B81
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 20:47:49 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id k2so10861867qtm.1
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 20:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ig7vox4vdacNmOiUEWh2e1BW5GerFyuGni+GG5ZtR4s=;
	b=eosOKcBpYZtufxZ41Su4nLgviW4a2ef1iVpahwJonRUtuUK0+A4sH2Is1E4BEEu/G+
	hdVLU70yUgPhBF/BzA/invnqL3TJY/Sv+WuRIm4PE5QfndH41ElwCnRh8eh8ZSR50X3D
	boywtF7ZXTdWMTjYxJDHVB6ZPLEyR4iSLOJtkLLaat3pOPYhoY3XvnihjRulg1SJX61W
	djDncuzmKduzY8XOUZxUKsNuhbpeEVoFBwS9EQsyFo9FVraLAcAf2MTlVAJqxG9xKNT7
	m2NF1GDf9iE4VirPth+BlQgOSX5U4YbDVHCT+X4yy4Ie4UhYa8YmgBcNF84WkAqP7zsP
	2K2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ig7vox4vdacNmOiUEWh2e1BW5GerFyuGni+GG5ZtR4s=;
	b=UVZ8iYHWyNG9jlabh5bUd9zkcVXPZzZYgATKm1SKaHfYH1FQ0e74Kt+tSOhp67jX3d
	m+xsd/VsNFzYt3m0jYil9K+TcX2TiiUjwwkuO5VurzpQ6BpLHC634n91LE/9P8oMnRfI
	Ew+Xz5sPMxeuKvrNc6xMyqBFnrDdGMVaDUogStg46NZTBPmiKtUnbH4ciQahn6/qcIWP
	yheS4mKe0GeKccilIfDNvC3RZIKTsCjIAkVFme4DsJSH4S8BHctGqBsMS56JksINpi2Y
	vTUua9O8VAgJpcQ45nZzgt8/5Q0edS2pNi91CrFuOIISWsfrVv/SW5oC7b8EK64Bg1VM
	Gtuw==
X-Gm-Message-State: APjAAAVoANyTtfWqqzAQnBgLOnpLfVf8fZrmzXFpS90LGpTJRnK9B4iZ
	HgJT+gKXE7IOFGU5V7XfnvfD4gPv7pXrr4ke/FE=
X-Google-Smtp-Source: APXvYqxFd5l//iaK2NC4LqNNjs2Y4kfG7AMXMGcph4qyQc+kNSI9B92hmiVr2ZLGCz5CfKJOeKjSr2JIykvjmkSHz0Y=
X-Received: by 2002:a0c:9561:: with SMTP id m30mr13667155qvm.224.1555904869228;
	Sun, 21 Apr 2019 20:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-3-ayaka@soulik.info>
In-Reply-To: <20190421155339.6332-3-ayaka@soulik.info>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 21 Apr 2019 21:47:38 -0600
Message-ID: <CAMKF1spG3JO8qWQzCc9f9kFgOmP=TEJLoEJemspNs4+QEfwwnA@mail.gmail.com>
To: "Randy 'ayaka' Li" <ayaka@soulik.info>
Cc: yocto@yoctoproject.org, romain.perier@gmail.com
Subject: Re: [PATCH 2/5] conf/machine: add rk3399 support
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
X-List-Received-Date: Mon, 22 Apr 2019 03:47:50 -0000
Content-Type: multipart/alternative; boundary="00000000000008e7b80587165545"

--00000000000008e7b80587165545
Content-Type: text/plain; charset="UTF-8"

This seems more a bsp layer thing may be meta-rockchip is better for this
or meta-firefly

On Sun, Apr 21, 2019 at 10:06 AM Randy 'ayaka' Li <ayaka@soulik.info> wrote:

> RK3399 is a new generation powerful SoC from Rockchip, which has
> Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.
>
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> ---
>  conf/machine/excavator-rk3399.conf | 10 ++++++++++
>  conf/machine/firefly-rk3399.conf   | 15 +++++++++++++++
>  conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
>  3 files changed, 42 insertions(+)
>  create mode 100644 conf/machine/excavator-rk3399.conf
>  create mode 100644 conf/machine/firefly-rk3399.conf
>  create mode 100644 conf/machine/include/rk3399.inc
>
> diff --git a/conf/machine/excavator-rk3399.conf
> b/conf/machine/excavator-rk3399.conf
> new file mode 100644
> index 0000000..c7134d2
> --- /dev/null
> +++ b/conf/machine/excavator-rk3399.conf
> @@ -0,0 +1,10 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: EXCAVATOR 3399
> +
> +include conf/machine/include/rk3399.inc
> +
> +KERNEL_DEVICETREE = "rk3399-sapphire-excavator-linux.dtb"
> +UBOOT_MACHINE = "evb-rk3399_defconfig"
> diff --git a/conf/machine/firefly-rk3399.conf
> b/conf/machine/firefly-rk3399.conf
> new file mode 100644
> index 0000000..fefafed
> --- /dev/null
> +++ b/conf/machine/firefly-rk3399.conf
> @@ -0,0 +1,15 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: Firefly RK3399
> +#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance
> Platform.
> +#http://www.t-firefly.com/en/
> +
> +include conf/machine/include/rk3399.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"
> +KERNEL_DEVICETREE = "rockchip/rk3399-firefly-linux.dtb"
> +UBOOT_MACHINE = "evb-rk3399_defconfig"
> +
> +GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=614e0000-0000
> rootfstype=ext4 init=/sbin/init"
> diff --git a/conf/machine/include/rk3399.inc
> b/conf/machine/include/rk3399.inc
> new file mode 100644
> index 0000000..6e2af57
> --- /dev/null
> +++ b/conf/machine/include/rk3399.inc
> @@ -0,0 +1,17 @@
> +# Copyright (C) 2019 SUMOMO Computer Association
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SOC_FAMILY = "rk3399"
> +
> +require conf/machine/include/tune-cortexa72.inc
> +require conf/machine/include/soc-family.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux"
> +SERIAL_CONSOLES = "1500000;ttyS2"
> +KERNEL_IMAGETYPE = "Image"
> +#KBUILD_DEFCONFIG = "multi_v8_defconfig"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
> +
> +IMAGE_FSTYPES = "rockchip-gpt-img"
> +IMAGE_CLASSES = "rockchip-gpt-img"
> --
> 2.20.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000008e7b80587165545
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">This seems more a bsp layer thing may be meta-rockch=
ip is better for this or meta-firefly=C2=A0</div></div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 21, 2019=
 at 10:06 AM Randy &#39;ayaka&#39; Li &lt;<a href=3D"mailto:ayaka@soulik.in=
fo">ayaka@soulik.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">RK3399 is a new generation powerful SoC from Rockchip, which has<br>
Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.<br>
<br>
Signed-off-by: Randy &#39;ayaka&#39; Li &lt;<a href=3D"mailto:ayaka@soulik.=
info" target=3D"_blank">ayaka@soulik.info</a>&gt;<br>
---<br>
=C2=A0conf/machine/excavator-rk3399.conf | 10 ++++++++++<br>
=C2=A0conf/machine/firefly-rk3399.conf=C2=A0 =C2=A0| 15 +++++++++++++++<br>
=C2=A0conf/machine/include/rk3399.inc=C2=A0 =C2=A0 | 17 +++++++++++++++++<b=
r>
=C2=A03 files changed, 42 insertions(+)<br>
=C2=A0create mode 100644 conf/machine/excavator-rk3399.conf<br>
=C2=A0create mode 100644 conf/machine/firefly-rk3399.conf<br>
=C2=A0create mode 100644 conf/machine/include/rk3399.inc<br>
<br>
diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk=
3399.conf<br>
new file mode 100644<br>
index 0000000..c7134d2<br>
--- /dev/null<br>
+++ b/conf/machine/excavator-rk3399.conf<br>
@@ -0,0 +1,10 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+#@TYPE: Machine<br>
+#@NAME: EXCAVATOR 3399<br>
+<br>
+include conf/machine/include/rk3399.inc<br>
+<br>
+KERNEL_DEVICETREE =3D &quot;rk3399-sapphire-excavator-linux.dtb&quot;<br>
+UBOOT_MACHINE =3D &quot;evb-rk3399_defconfig&quot;<br>
diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk3399=
.conf<br>
new file mode 100644<br>
index 0000000..fefafed<br>
--- /dev/null<br>
+++ b/conf/machine/firefly-rk3399.conf<br>
@@ -0,0 +1,15 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+#@TYPE: Machine<br>
+#@NAME: Firefly RK3399<br>
+#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance Platfo=
rm.<br>
+#<a href=3D"http://www.t-firefly.com/en/" rel=3D"noreferrer" target=3D"_bl=
ank">http://www.t-firefly.com/en/</a><br>
+<br>
+include conf/machine/include/rk3399.inc<br>
+<br>
+PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-rockchip&quot;<br>
+KERNEL_DEVICETREE =3D &quot;rockchip/rk3399-firefly-linux.dtb&quot;<br>
+UBOOT_MACHINE =3D &quot;evb-rk3399_defconfig&quot;<br>
+<br>
+GPTIMG_APPEND =3D &quot;console=3DttyS2,1500000n8 rw root=3DPARTUUID=3D614=
e0000-0000 rootfstype=3Dext4 init=3D/sbin/init&quot;<br>
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.=
inc<br>
new file mode 100644<br>
index 0000000..6e2af57<br>
--- /dev/null<br>
+++ b/conf/machine/include/rk3399.inc<br>
@@ -0,0 +1,17 @@<br>
+# Copyright (C) 2019 SUMOMO Computer Association<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+SOC_FAMILY =3D &quot;rk3399&quot;<br>
+<br>
+require conf/machine/include/tune-cortexa72.inc<br>
+require conf/machine/include/soc-family.inc<br>
+<br>
+PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux&quot;<br>
+SERIAL_CONSOLES =3D &quot;1500000;ttyS2&quot;<br>
+KERNEL_IMAGETYPE =3D &quot;Image&quot;<br>
+#KBUILD_DEFCONFIG =3D &quot;multi_v8_defconfig&quot;<br>
+<br>
+PREFERRED_PROVIDER_virtual/bootloader ?=3D &quot;u-boot-rockchip&quot;<br>
+<br>
+IMAGE_FSTYPES =3D &quot;rockchip-gpt-img&quot;<br>
+IMAGE_CLASSES =3D &quot;rockchip-gpt-img&quot;<br>
-- <br>
2.20.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--00000000000008e7b80587165545--
