Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B2F6E0052B; Fri, 27 Jan 2017 06:37:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (romain.perier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04453E00510
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:37:16 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id d140so58920085wmd.2
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gCpXKHJIu2zMkFe73SHzVN5UTmtNKuthaX39kU8hh5I=;
	b=rK2fHXYygqTG9moCGX0ZU9SRJVSVhznpeMQO6niE5NlgZKVPLKZAl/aHwAjgk1pXll
	J+YLHULtav7nwewb+aob6y+rWkI0rzfBKgODThulpYOQGRsnsB+K97Npe2MVttkgFWxY
	GGRu+/a+/LEta7Y5j8l9+6EpO8bi4Q1RFwJ2BjqZoPHA917Q5VDb5zXoPcH+1HMObsNC
	yKm5buyc9LjKkIb3fAuLnsdR+eA41KVv7zyg4vcYghbW9oR/EEvisfJ/RhAPTu8ASySW
	gODCNAHtEorxFUan6Eo+7fp+rvfbAy0TQbl3l5IUbqXGePYOfwNYxJ3fkllzzyYVviyV
	BfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gCpXKHJIu2zMkFe73SHzVN5UTmtNKuthaX39kU8hh5I=;
	b=DZaGkeM+b7R6nd/q+uv8uxpNR7WKFVAuV3c6iWF2CAgF5rz04fPfE0zD/CSvjrMPhw
	Zdtl0hj3Y/V2Z0WIhJLtn4l32Q+HOSBWziq0TsA7RdtJISHeKxb/H4HLP10mPm9Nu1fv
	OLAA/Mx3s5JHGNHrad7kL6FaErLiwrppRjQX1cXEvnAeu+f++MFnzRn38Pm922IubrNJ
	KYJefc4t8kj71EOGtdR0IWY4ns78xCFi72dj/3039VRkdRBjWbFdgDPTH+MD716ECezi
	XwsvuDn4HaX5/SY135yPWsntMWnOAEEc5mApL3fLnKQGiHwDxEoXxMLSznso+prpVQqZ
	uS7g==
X-Gm-Message-State: AIkVDXISzcvSXprMswnmTzBUfOWiuEbkZhNI524Sh1wJMRy5AifaC0qkZhQpXcWUfmtFByYohUIHA/ZHHDnl/g==
X-Received: by 10.28.50.135 with SMTP id y129mr3260378wmy.2.1485527836047;
	Fri, 27 Jan 2017 06:37:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Fri, 27 Jan 2017 06:37:15 -0800 (PST)
In-Reply-To: <1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Fri, 27 Jan 2017 15:37:15 +0100
Message-ID: <CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@rock-chips.com>,
	eddie.cai@rock-chips.com
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Fri, 27 Jan 2017 14:37:21 -0000
Content-Type: multipart/alternative; boundary=001a1140df22f8d0bd054714660f

--001a1140df22f8d0bd054714660f
Content-Type: text/plain; charset=UTF-8

Hey,

Could you:
- Make one patch per new machine file and not one patch for all new added
machine
- Add a clear @DESCRIPTION for each board, see an example here:
https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf
- Write a clear and an understandable commit message for your new patches

@Trevor: What do you think about this rk-linux.inc ? I don't like this,
either its name and what it contains.

That's it for now.
Thanks for your patches


2017-01-19 15:04 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com>:

> Evb-rk3288 is the offical evaluate board, add it to help myself develop.
>
> Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.
>     .
> Tinker Boards:
> http://www.cnx-software.com/2017/01/05/asus-tinker-board-
> is-a-raspberry-pi-3-alternative-based-on-rockchip-rk3288-processor/
>
> Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> ---
>  conf/machine/evb-rk3288.conf      | 12 ++++++++++++
>  conf/machine/fennec-rk3288.conf   | 12 ++++++++++++
>  conf/machine/include/rk-linux.inc | 20 ++++++++++++++++++++
>  conf/machine/tinker-rk3288.conf   | 13 +++++++++++++
>  4 files changed, 57 insertions(+)
>  create mode 100644 conf/machine/evb-rk3288.conf
>  create mode 100644 conf/machine/fennec-rk3288.conf
>  create mode 100644 conf/machine/include/rk-linux.inc
>  create mode 100644 conf/machine/tinker-rk3288.conf
>
> diff --git a/conf/machine/evb-rk3288.conf b/conf/machine/evb-rk3288.conf
> new file mode 100644
> index 0000000..88a5f78
> --- /dev/null
> +++ b/conf/machine/evb-rk3288.conf
> @@ -0,0 +1,12 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: EVB 3288
> +
> +include conf/machine/include/rk3288.inc
> +include conf/machine/include/rk-linux.inc
> +
> +KERNEL_DEVICETREE = "rk3288-evb-act8846.dtb"
> +
> +UBOOT_MACHINE = "evb-rk3288_defconfig"
> diff --git a/conf/machine/fennec-rk3288.conf b/conf/machine/fennec-rk3288.
> conf
> new file mode 100644
> index 0000000..a85045f
> --- /dev/null
> +++ b/conf/machine/fennec-rk3288.conf
> @@ -0,0 +1,12 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: FENNEC RK3288
> +
> +include conf/machine/include/rk3288.inc
> +include conf/machine/include/rk-linux.inc
> +
> +KERNEL_DEVICETREE = "rk3288-fennec.dtb"
> +
> +UBOOT_MACHINE = "fennec-rk3288_defconfig"
> diff --git a/conf/machine/include/rk-linux.inc b/conf/machine/include/rk-
> linux.inc
> new file mode 100644
> index 0000000..6abaa0d
> --- /dev/null
> +++ b/conf/machine/include/rk-linux.inc
> @@ -0,0 +1,20 @@
> +# Rockchip BSP default settings
> +
> +PREFERRED_PROVIDER_virtual/egl = "mali-userspace"
> +PREFERRED_PROVIDER_virtual/libgles1 = "mali-userspace"
> +PREFERRED_PROVIDER_virtual/libgles2 = "mali-userspace"
> +PREFERRED_PROVIDER_virtual/libopencl = "mali-userspace"
> +
> +# Workaround: libmali.so provided by rk having no SONAME field in it
> +# so add it to fix rdepends problems
> +ASSUME_SHLIBS += "libEGL.so:mali-userspace"
> +ASSUME_SHLIBS += "libGLESv1_CM.so:mali-userspace"
> +ASSUME_SHLIBS += "libGLESv2.so:mali-userspace"
> +ASSUME_SHLIBS += "libOpenCL.so:mali-userspace"
> +ASSUME_SHLIBS += "libgbm.so:mali-userspace"
> +ASSUME_SHLIBS += "libwayland-egl.so:mali-userspace"
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"
> +PREFERRED_PROVIDER_virtual/bootloader = "u-boot-rockchip"
> +
> +IMAGE_CLASSES += "rockchip-next-image"
> diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-rk3288.
> conf
> new file mode 100644
> index 0000000..0464133
> --- /dev/null
> +++ b/conf/machine/tinker-rk3288.conf
> @@ -0,0 +1,13 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: Tinker RK3288
> +#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on
> Rockchip RK3288 Processor.
> +
> +include conf/machine/include/rk3288.inc
> +include conf/machine/include/rk-linux.inc
> +
> +KERNEL_DEVICETREE = "rk3288-miniarm.dtb"
> +
> +UBOOT_MACHINE = "miniarm-rk3288_defconfig"
> --
> 2.7.4
>
>

--001a1140df22f8d0bd054714660f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hey,<br><br></div>Could you:=
<br></div>- Make one patch per new machine file and not one patch for all n=
ew added machine<br></div>- Add a clear @DESCRIPTION for each board, see an=
 example here: <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-r=
ockchip/tree/conf/machine/firefly-rk3288.conf">https://git.yoctoproject.org=
/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf</a><br><=
/div>- Write a clear and an understandable commit message for your new patc=
hes<br><br></div><div>@Trevor: What do you think about this rk-linux.inc ? =
I don&#39;t like this, either its name and what it contains.<br></div><div>=
<br></div>That&#39;s it for now.<br></div>Thanks for your patches<br><div><=
div><br></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">2017-01-19 15:04 GMT+01:00 Jacob Chen <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:jacob-chen@iotwrt.com" target=3D"_blank">jacob-chen@iotwrt.com<=
/a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><di=
v class=3D"h5">Evb-rk3288 is the offical evaluate board, add it to help mys=
elf develop.<br>
<br>
Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.<br>
=C2=A0 =C2=A0 .<br>
Tinker Boards:<br>
<a href=3D"http://www.cnx-software.com/2017/01/05/asus-tinker-board-is-a-ra=
spberry-pi-3-alternative-based-on-rockchip-rk3288-processor/" rel=3D"norefe=
rrer" target=3D"_blank">http://www.cnx-software.com/<wbr>2017/01/05/asus-ti=
nker-board-<wbr>is-a-raspberry-pi-3-<wbr>alternative-based-on-rockchip-<wbr=
>rk3288-processor/</a><br>
<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@rock-chips.com">=
jacob-chen@rock-chips.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/evb-rk3288.conf=C2=A0 =C2=A0 =C2=A0 | 12 ++++++++++++<br=
>
=C2=A0conf/machine/fennec-rk3288.<wbr>conf=C2=A0 =C2=A0| 12 ++++++++++++<br=
>
=C2=A0conf/machine/include/rk-linux.<wbr>inc | 20 ++++++++++++++++++++<br>
=C2=A0conf/machine/tinker-rk3288.<wbr>conf=C2=A0 =C2=A0| 13 +++++++++++++<b=
r>
=C2=A04 files changed, 57 insertions(+)<br>
=C2=A0create mode 100644 conf/machine/evb-rk3288.conf<br>
=C2=A0create mode 100644 conf/machine/fennec-rk3288.<wbr>conf<br>
=C2=A0create mode 100644 conf/machine/include/rk-linux.<wbr>inc<br>
=C2=A0create mode 100644 conf/machine/tinker-rk3288.<wbr>conf<br>
<br>
diff --git a/conf/machine/evb-rk3288.conf b/conf/machine/evb-rk3288.conf<br=
>
new file mode 100644<br>
index 0000000..88a5f78<br>
--- /dev/null<br>
+++ b/conf/machine/evb-rk3288.conf<br>
@@ -0,0 +1,12 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+#@TYPE: Machine<br>
+#@NAME: EVB 3288<br>
+<br>
+include conf/machine/include/rk3288.<wbr>inc<br>
+include conf/machine/include/rk-linux.<wbr>inc<br>
+<br>
+KERNEL_DEVICETREE =3D &quot;rk3288-evb-act8846.dtb&quot;<br>
+<br>
+UBOOT_MACHINE =3D &quot;evb-rk3288_defconfig&quot;<br>
diff --git a/conf/machine/fennec-rk3288.<wbr>conf b/conf/machine/fennec-rk3=
288.<wbr>conf<br>
new file mode 100644<br>
index 0000000..a85045f<br>
--- /dev/null<br>
+++ b/conf/machine/fennec-rk3288.<wbr>conf<br>
@@ -0,0 +1,12 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+#@TYPE: Machine<br>
+#@NAME: FENNEC RK3288<br>
+<br>
+include conf/machine/include/rk3288.<wbr>inc<br>
+include conf/machine/include/rk-linux.<wbr>inc<br>
+<br>
+KERNEL_DEVICETREE =3D &quot;rk3288-fennec.dtb&quot;<br>
+<br>
+UBOOT_MACHINE =3D &quot;fennec-rk3288_defconfig&quot;<br>
diff --git a/conf/machine/include/rk-<wbr>linux.inc b/conf/machine/include/=
rk-<wbr>linux.inc<br>
new file mode 100644<br>
index 0000000..6abaa0d<br>
--- /dev/null<br>
+++ b/conf/machine/include/rk-<wbr>linux.inc<br>
@@ -0,0 +1,20 @@<br>
+# Rockchip BSP default settings<br>
+<br>
+PREFERRED_PROVIDER_virtual/<wbr>egl =3D &quot;mali-userspace&quot;<br>
+PREFERRED_PROVIDER_virtual/<wbr>libgles1 =3D &quot;mali-userspace&quot;<br=
>
+PREFERRED_PROVIDER_virtual/<wbr>libgles2 =3D &quot;mali-userspace&quot;<br=
>
+PREFERRED_PROVIDER_virtual/<wbr>libopencl =3D &quot;mali-userspace&quot;<b=
r>
+<br>
+# Workaround: libmali.so provided by rk having no SONAME field in it<br>
+# so add it to fix rdepends problems<br>
+ASSUME_SHLIBS +=3D &quot;libEGL.so:mali-userspace&quot;<br>
+ASSUME_SHLIBS +=3D &quot;libGLESv1_CM.so:mali-<wbr>userspace&quot;<br>
+ASSUME_SHLIBS +=3D &quot;libGLESv2.so:mali-userspace&quot;<br>
+ASSUME_SHLIBS +=3D &quot;libOpenCL.so:mali-userspace&quot;<br>
+ASSUME_SHLIBS +=3D &quot;libgbm.so:mali-userspace&quot;<br>
+ASSUME_SHLIBS +=3D &quot;libwayland-egl.so:mali-<wbr>userspace&quot;<br>
+<br>
+PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux-rockchip&quot;<br>
+PREFERRED_PROVIDER_virtual/<wbr>bootloader =3D &quot;u-boot-rockchip&quot;=
<br>
+<br>
+IMAGE_CLASSES +=3D &quot;rockchip-next-image&quot;<br>
diff --git a/conf/machine/tinker-rk3288.<wbr>conf b/conf/machine/tinker-rk3=
288.<wbr>conf<br>
new file mode 100644<br>
index 0000000..0464133<br>
--- /dev/null<br>
+++ b/conf/machine/tinker-rk3288.<wbr>conf<br>
@@ -0,0 +1,13 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+#@TYPE: Machine<br>
+#@NAME: Tinker RK3288<br>
+#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on =
Rockchip RK3288 Processor.<br>
+<br>
+include conf/machine/include/rk3288.<wbr>inc<br>
+include conf/machine/include/rk-linux.<wbr>inc<br>
+<br>
+KERNEL_DEVICETREE =3D &quot;rk3288-miniarm.dtb&quot;<br>
+<br>
+UBOOT_MACHINE =3D &quot;miniarm-rk3288_defconfig&quot;<br>
--<br>
2.7.4<br>
<br>
</div></div></blockquote></div><br></div>

--001a1140df22f8d0bd054714660f--
