Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44866E00B51; Thu, 19 Jan 2017 05:38:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.196 listed in dnsbl.sorbs.net]
Received: from mail-yb0-f196.google.com (mail-yb0-f196.google.com
	[209.85.213.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28C2DE00AE6
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:38:20 -0800 (PST)
Received: by mail-yb0-f196.google.com with SMTP id 123so2366932ybe.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NwnSVLlgiNr5N9io5dBCpD+5+tVNH0I3MXN8volJ78Q=;
	b=EZRSX+xYgkvfNSs3YtJ+U3soNaE2RxIC5+B4v6hjfID5ciYedDd8QTDYlPPfmwbrj6
	BIxvAyg61rfvCV9t+ZWjUj2kcLprW8O7xVDbtQDwxaRqP/dIjxw+uPQ0VL2hxf8UGIrw
	bZamAkyjmZC2CkgXrW5GZQ8JMV+cMujw56UrpA3XK7PRMf6CAIp0JM0xWVxPkvBGKAMW
	SYD2pV+8YD1DSTfx/jh2ohcx8aiQVPOND/wXSH8C1S0aw2+FTR6kXyi/bbiO60CMdIDc
	spH7PhekKnfm9xzcR32fA0nb7CPdISmj6WQq0r+5o3NBlfoDl5em7SKWKBSmd6D0Lcot
	Pocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NwnSVLlgiNr5N9io5dBCpD+5+tVNH0I3MXN8volJ78Q=;
	b=gOJwjLv6QFkMLCLz8ZQtmENbDWCLe9kDV6R0oQRc8IP22K9Rw5XucgekYLSqX97Doi
	4Ov4YntkzuEg3R8XimBdLnIn2qRtlC++LovlZlohd76OKxO2otEZ3V+Fp/11kOrf7cu8
	Xyq4ywj1Zwp/iXQh00ZGM12JjhWE0K7eIBZjP7O/9yDu/e0nPIJKf0cNdm528r4rqXrV
	K3qaU/JKYcxLTRWqLm7w2l/z6l7su09oivUqOgBMOzhQzSn1uP3PTiRVM7rEl2QuyVk6
	62ted6WPOZ1fF4I8s1UYpmDvzJsFl9q4skOKPV6HxiyEDkwze67uYSrhk5cAshuOvUzt
	HNjg==
X-Gm-Message-State: AIkVDXJWywavDPn6a8SJwDS9YWbHu4hbrpjlUPo73rXGl784EV9upDrZBwessNFY3tEhwZeOlQAeCfDeVy/R9Q==
X-Received: by 10.237.38.65 with SMTP id z59mr7580927qtc.5.1484833099945; Thu,
	19 Jan 2017 05:38:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.135.153 with HTTP; Thu, 19 Jan 2017 05:38:19 -0800 (PST)
In-Reply-To: <1484820572-11891-2-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<1484820572-11891-2-git-send-email-jacob-chen@iotwrt.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 19 Jan 2017 08:38:19 -0500
Message-ID: <CADkTA4NRWAZ8=xf_9GiXACoOxKyXJq5Ouj_wEfjdQTKuXpN_Pg@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>, eddie.cai@rock-chips.com
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
X-List-Received-Date: Thu, 19 Jan 2017 13:38:33 -0000
Content-Type: multipart/alternative; boundary=94eb2c122e587920d0054672a51b

--94eb2c122e587920d0054672a51b
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 19, 2017 at 5:09 AM, Jacob Chen <jacob-chen@iotwrt.com> wrote:

> Rockchip 4.4 kernel is currently the latest version of the rockchip
> offical kernel,
> will be an upstream tracking branch.
> We regularly release the kernel through github.
> It support all rockchip 64-bit chips and a few 32-bit chips.
>

If I missed a 0/N explaining this series, sorry about my comments/questions!

These packages belong in a BSP layer, not in the core meta data itself. A
quick check of
the layer index shows one hit for rockchip already:

https://layers.openembedded.org/layerindex/branch/master/machines/?q=rockchip

So that layer may be a good place for these recipes, or a completely  new
layer that you
could create on github (or wherever you prefer).

Bruce


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
> +deltask kernel_configme
> +
> +KBUILD_DEFCONFIG = "rockchip_linux_defconfig"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c122e587920d0054672a51b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Jan 19, 2017 at 5:09 AM, Jacob Chen <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:jacob-chen@iotwrt.com" target=3D"_blank">jacob-chen@iotwrt.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Rockchip 4.4 kernel is currently the latest version of the rockchip offica=
l kernel,<br>
will be an upstream tracking branch.<br>
We regularly release the kernel through github.<br>
It support all rockchip 64-bit chips and a few 32-bit chips.<br></blockquot=
e><div><br></div><div>If I missed a 0/N explaining this series, sorry about=
 my comments/questions!<br><br></div><div>These packages belong in a BSP la=
yer, not in the core meta data itself. A quick check of<br></div><div>the l=
ayer index shows one hit for rockchip already:<br><br><a href=3D"https://la=
yers.openembedded.org/layerindex/branch/master/machines/?q=3Drockchip">http=
s://layers.openembedded.org/layerindex/branch/master/machines/?q=3Drockchip=
</a><br><br></div><div>So that layer may be a good place for these recipes,=
 or a completely=C2=A0 new layer that you<br></div><div>could create on git=
hub (or wherever you prefer).<br><br></div><div>Bruce<br></div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
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
+COMPATIBLE_MACHINE =3D &quot;(rk3288)&quot;<br>
+deltask kernel_configme<br>
+<br>
+KBUILD_DEFCONFIG =3D &quot;rockchip_linux_defconfig&quot;<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer, for cha=
os and madness await thee at its end&quot;</div>
</div></div>

--94eb2c122e587920d0054672a51b--
