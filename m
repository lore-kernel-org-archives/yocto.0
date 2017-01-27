Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F5DEE00995; Fri, 27 Jan 2017 07:12:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
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
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A2DAE00938
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:12:03 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id r144so58940712wme.0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P20+y1S9x7WwRZhaOQuClGP+1W10n/w6JEJlO3u1m5I=;
	b=tq5sxiF1Vy7cqU5dXS8+HWll6FJnnFuMk/dtcWlSK52KeVDfHgTkbAySSYTD6aU5rb
	DVWuj6oGgtORQDHodxO56iyTqG5+ZmQBGB/RQKVFCaLNsJNpjky9px8NHiUoOQ6uLnQ0
	JRhfVLzWnRPYjmBsdkkYbxmwSeWHFxe96TpD9A06J5tYoYUI66602bUNoWHGs+qW1aUl
	JHAWL3NmsRx1bV9388wA+nk4l1w5UFMdpyERz8bhzHZowjK6v8FhTlepMBeVAwaZe8BA
	BVZcb0C4FQOV0CCXgdutQ3CukXaKPxcCd1LPaIhhHcxEl+n0f3bWGFnCn/MzlMC2CxV2
	/2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P20+y1S9x7WwRZhaOQuClGP+1W10n/w6JEJlO3u1m5I=;
	b=rby3yMKW4y+XUVQqZuAq+nTR7gi2xy9OszMqCaDZak5YbXPeq025Kura25yfxhcfKM
	f02RDCEXINTuYnCHJ9jmJPakm+BdeMqkEBjwcMHkSz4bbe1fHJKkLtHHo9EKUQ8ZnJEg
	EtN2Z9m9Nr5nx/7lOU9sIC/+kvLse/Yj6sIaxwr2js5jr6+Hvx59zb+RxYIuTAFyfyOo
	36vkv7Vk1llhF/CSmpCNWTI6R6RaKdIMmXIQ7jtUnZmrGHzzX/jlYVH3rhlPl3QkoPlA
	9f/XJ/Q2RLCf+BS3d6L+GVAfskZBkIXalx+rwd+WxQysPeFa8RHH10OAHI0s3XjRa5Xm
	0zqA==
X-Gm-Message-State: AIkVDXJ5z7kU4jLdvyP1dy1vqs8e56pEUSGFt0ZXR6G5jgR3wkQC6w23URf+SpAumqq+vejYGVsoGZzpvHIfvg==
X-Received: by 10.28.143.5 with SMTP id r5mr3573690wmd.141.1485529923095; Fri,
	27 Jan 2017 07:12:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Fri, 27 Jan 2017 07:12:02 -0800 (PST)
In-Reply-To: <1484820572-11891-2-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<1484820572-11891-2-git-send-email-jacob-chen@iotwrt.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Fri, 27 Jan 2017 16:12:02 +0100
Message-ID: <CABgxDoKrQasvvq4Puq1xMn-gbxjG89YXcOE_Fu1-TcXgrYDUQQ@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: yocto@yoctoproject.org, eddie.cai@rock-chips.com
Subject: Re: [PATCH 1/7] recipes-kernel: linux-rockchip: Add new recipe for 4.4
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
X-List-Received-Date: Fri, 27 Jan 2017 15:12:09 -0000
Content-Type: multipart/alternative; boundary=001a114690e45e9673054714e3f2

--001a114690e45e9673054714e3f2
Content-Type: text/plain; charset=UTF-8

Hi all,


supposing that this patch series is for meta-rockchip (next time add a
prefix meta-rockchip, as it is explained in the README)

2017-01-19 11:09 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com>:

> Rockchip 4.4 kernel is currently the latest version of the rockchip
> offical kernel,
> will be an upstream tracking branch.
> We regularly release the kernel through github.
> It support all rockchip 64-bit chips and a few 32-bit chips.
>


Could you be more precise ? if some SoCs are better supported by this
kernel instead the mainline kernel, we can consider to accept this recipe
and use it for a set of boards.



>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  recipes-kernel/linux/linux-rockchip_4.4.bb | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb
>
> diff --git a/recipes-kernel/linux/linux-rockchip_4.4.bb
> b/recipes-kernel/linux/linux-rockchip_4.4.bb
> new file mode 100644
> index 0000000..ca3674e
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-rockchip_4.4.bb
> @@ -0,0 +1,20 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +require recipes-kernel/linux/linux-yocto.inc
> +
> +SRC_URI = "git://github.com/rockchip-linux/kernel.git;branch=release-4.4
> ;"
> +
> +SRCREV = "${AUTOREV}"
> +LINUX_VERSION = "4.4.41"
> +# Override local version in order to use the one generated by linux build
> system
> +# And not "yocto-standard"
> +LINUX_VERSION_EXTENSION = ""
> +PR = "r1"
> +PV = "${LINUX_VERSION}"
> +
> +# Include only supported boards for now
> +COMPATIBLE_MACHINE = "(rk3288)"
>
+deltask kernel_configme
>



> +KBUILD_DEFCONFIG = "rockchip_linux_defconfig"
>
>
I think that you can move this to a machine file... (for the board that use
linux-rockchip)

Thanks,
Romain

--001a114690e45e9673054714e3f2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br><br><br></div>supposing that this patch se=
ries is for meta-rockchip (next time add a prefix meta-rockchip, as it is e=
xplained in the README)<br><div><div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">2017-01-19 11:09 GMT+01:00 Jacob Chen <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:jacob-chen@iotwrt.com" target=3D"_blank">jacob-chen@=
iotwrt.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Rockchip 4.4 k=
ernel is currently the latest version of the rockchip offical kernel,<br>
will be an upstream tracking branch.<br>
We regularly release the kernel through github.<br>
It support all rockchip 64-bit chips and a few 32-bit chips.<br></blockquot=
e><div><br><br>Could you be more precise ? if some SoCs are better supporte=
d by this kernel instead the mainline kernel, we can consider to accept thi=
s recipe and use it for a set of boards.<br><br></div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">
<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jaco=
b-chen@iotwrt.com</a>&gt;<br>
---<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-rockchip_4.4.bb" rel=3D"=
noreferrer" target=3D"_blank">linux-<wbr>rockchip_4.4.bb</a> | 20 +++++++++=
+++++++++++<br>
=C2=A01 file changed, 20 insertions(+)<br>
=C2=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rockc=
hip_4.4.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>rockchip_4.4.bb=
</a><br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-rockchip_4.4.bb" =
rel=3D"noreferrer" target=3D"_blank">linux-<wbr>rockchip_4.4.bb</a> b/recip=
es-kernel/linux/<a href=3D"http://linux-rockchip_4.4.bb" rel=3D"noreferrer"=
 target=3D"_blank">linux-<wbr>rockchip_4.4.bb</a><br>
new file mode 100644<br>
index 0000000..ca3674e<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-rockchip_4.4.bb" rel=3D"=
noreferrer" target=3D"_blank">linux-<wbr>rockchip_4.4.bb</a><br>
@@ -0,0 +1,20 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+require recipes-kernel/linux/linux-<wbr>yocto.inc<br>
+<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/rockchip-linux/kernel=
.git;branch=3Drelease-4.4" rel=3D"noreferrer" target=3D"_blank">github.com/=
rockchip-<wbr>linux/kernel.git;branch=3D<wbr>release-4.4</a>;&quot;<br>
+<br>
+SRCREV =3D &quot;${AUTOREV}&quot;<br>
+LINUX_VERSION =3D &quot;4.4.41&quot;<br>
+# Override local version in order to use the one generated by linux build =
system<br>
+# And not &quot;yocto-standard&quot;<br>
+LINUX_VERSION_EXTENSION =3D &quot;&quot;<br>
+PR =3D &quot;r1&quot;<br>
+PV =3D &quot;${LINUX_VERSION}&quot;<br>
+<br>
+# Include only supported boards for now<br>
+COMPATIBLE_MACHINE =3D &quot;(rk3288)&quot; <br></blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
+deltask kernel_configme<br></blockquote><div><br>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
+KBUILD_DEFCONFIG =3D &quot;rockchip_linux_defconfig&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div><br></div><div>I think that you can move this to a machine file... =
(for the board that use linux-rockchip)<br><br></div><div>Thanks,<br></div>=
<div>Romain <br></div></div><br></div></div></div></div>

--001a114690e45e9673054714e3f2--
