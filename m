Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26549E0092C; Fri, 27 Jan 2017 07:01:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
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
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66624E0052B
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:01:43 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id c206so142280996wme.0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JMloT3aPx6rM7NvHL7C1O/02NtJOFofKdG1Bs0CaHpc=;
	b=QT9IfScbMUJpXZkIwb2vIde4LxoI4dezmtNsBRtua8RoMFk1BlfVJEUNpIXVSlwepS
	r6I5wnw9u/xG2JV+KihEICUfZzL4An7YZ2PmfNXjH8dqHlCuPzb/YxhdRK1NVs7rWJ9A
	GSDkSXrANN8L2vXG3jPZdQl73yGzMZ//jHr6uN33f+GNJi9NsQ+n1FOt0qnknpiF3Ff9
	z1kTwoHBFhwT+/0CV0NIX+YsJ4EWl0wGQki5LKx2ahfSCI7DOjyUklSgEmK3msv6H/ES
	HO3EgUCXHEoVqSQPMlemayZK7Ah7jKe0EqF5PHXIpumJt7qI3WbSTGJLhMoblXqSAGaU
	apgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JMloT3aPx6rM7NvHL7C1O/02NtJOFofKdG1Bs0CaHpc=;
	b=W9Ukh4211ZThOTUyTpRLWcx32XJTKE0D5aGADOjZ1LKdsanqnavl+LX1CRjeO2i8AZ
	fTffyUOXF6zIJn6GJvFB89YsJe60llKYikVDBLbD+0PinD0QW1z7nsVDsxcEFYKJw1No
	sr9dUya5PoXYM1XHX/ieFMEpdWhf/3Kb4/TnDJF1/h7JCIXzYpbTSDc6EWrslRGCahME
	TFNz6WHoHh37mFjodFjGD8p/foBd6eYO94EicUEBJl6IZeGafjlr61QZpD0JCGnrgqeF
	rheeliDIJEV9oH+wWhD53DU2ThtIppH4IUi8DtHecnvj1Ktv3JDFSnwH6t4phE+yFBaE
	chaQ==
X-Gm-Message-State: AIkVDXKIefHoN6/s/9MpgMS4p+MCAanVkhrOZK1++1AcrOshXo7SePTdTC/WXjDY/ffznap3lOzH01QVKRus5A==
X-Received: by 10.28.0.2 with SMTP id 2mr3534354wma.141.1485529302958; Fri, 27
	Jan 2017 07:01:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Fri, 27 Jan 2017 07:01:42 -0800 (PST)
In-Reply-To: <1484834687-15746-7-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-7-git-send-email-jacob-chen@iotwrt.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Fri, 27 Jan 2017 16:01:42 +0100
Message-ID: <CABgxDoKoJ+2FznE89F7v89w_t0p0Z_9-1KZt2DrdU-NdDSQ2GA@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: yocto@yoctoproject.org, eddie.cai@rock-chips.com
Subject: Re: [meta-rockchip][PATCH 6/7] rk3288.inc: add some variables
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
X-List-Received-Date: Fri, 27 Jan 2017 15:01:45 -0000
Content-Type: multipart/alternative; boundary=001a113ca22e68089b054714be61

--001a113ca22e68089b054714be61
Content-Type: text/plain; charset=UTF-8

Hi all,

It remembers me a discussion that I wanted to have with Trevor:  do we want
specific TUNES (like these ones) in the machines files ? it is distro
specific ?
I think that we might use "simple tune" like cortexa17 and let the
possibility to the user to select neon or hf or vfpv4 for example. You
could imagine a case where you write a machine file into another layer that
inherits from a machine file (which is in meta-rockchip) and overrides
DEFAULTTUNE for example.

Also Jacob, seriously split your commits :) . One commit per feature with a
clear message to describe your changes please.

Thanks,
Romain


2017-01-19 15:04 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com>:

> change tune to cortexa17hf-neon:
> Using the soft floating point abi is incompatible with some binary
> libaries.
>
> Set preferred mali version to t76x.
>
> Add APPEND which will be used in extlinux.conf.
>
> Add SOC_FAMILY to help add chip specific changes.
>
> Add SPL_BINARY to support build u-boot spl
>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  conf/machine/include/rk3288.inc | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index e6c19a2..9e7804a 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -1,10 +1,18 @@
>  # Copyright (C) 2015 Romain Perier
>  # Released under the MIT license (see COPYING.MIT for the terms)
>
> +SOC_FAMILY  = "rk3288"
> +
>  require conf/machine/include/tune-cortexa17.inc
> +require conf/machine/include/soc-family.inc
>
> -DEFAULTTUNE="cortexa17-neon"
> +DEFAULTTUNE="cortexa17hf-neon"
>  PREFERRED_PROVIDER_virtual/kernel = "linux"
>  SERIAL_CONSOLES = "115200;ttyS2"
> +SPL_BINARY = "u-boot-spl-dtb.bin"
>  KERNEL_IMAGETYPE = "zImage"
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
> +
> +PREFERRED_VERSION_mali-userspace = "t76x"
> +
> +APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7
> rootfstype=ext4 init=/sbin/init"
> --
> 2.7.4
>
>

--001a113ca22e68089b054714be61
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br><br></div><div>It remembers me a discussio=
n that I wanted to have with Trevor:=C2=A0 do we want specific TUNES (like =
these ones) in the machines files ? it is distro specific ?<br></div><div>I=
 think that we might use &quot;simple tune&quot; like cortexa17 and let the=
 possibility to the user to select neon or hf or vfpv4 for example. You cou=
ld imagine a case where you write a machine file into another layer that in=
herits from a machine file (which is in meta-rockchip) and overrides DEFAUL=
TTUNE for example.<br><br></div><div>Also Jacob, seriously split your commi=
ts :) . One commit per feature with a clear message to describe your change=
s please.<br><br></div><div>Thanks,<br></div><div>Romain<br></div><div><br>=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-=
01-19 15:04 GMT+01:00 Jacob Chen <span dir=3D"ltr">&lt;<a href=3D"mailto:ja=
cob-chen@iotwrt.com" target=3D"_blank">jacob-chen@iotwrt.com</a>&gt;</span>=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"=
>change tune to cortexa17hf-neon:<br>
Using the soft floating point abi is incompatible with some binary libaries=
.<br>
<br>
Set preferred mali version to t76x.<br>
<br>
Add APPEND which will be used in extlinux.conf.<br>
<br>
Add SOC_FAMILY to help add chip specific changes.<br>
<br>
Add SPL_BINARY to support build u-boot spl<br>
<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jaco=
b-chen@iotwrt.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc | 10 +++++++++-<br>
=C2=A01 file changed, 9 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/include/rk=
3288.<wbr>inc<br>
index e6c19a2..9e7804a 100644<br>
--- a/conf/machine/include/rk3288.<wbr>inc<br>
+++ b/conf/machine/include/rk3288.<wbr>inc<br>
@@ -1,10 +1,18 @@<br>
=C2=A0# Copyright (C) 2015 Romain Perier<br>
=C2=A0# Released under the MIT license (see COPYING.MIT for the terms)<br>
<br>
+SOC_FAMILY=C2=A0 =3D &quot;rk3288&quot;<br>
+<br>
=C2=A0require conf/machine/include/tune-<wbr>cortexa17.inc<br>
+require conf/machine/include/soc-<wbr>family.inc<br>
<br>
-DEFAULTTUNE=3D&quot;cortexa17-neon&quot;<br>
+DEFAULTTUNE=3D&quot;cortexa17hf-<wbr>neon&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux&quot;<br>
=C2=A0SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
+SPL_BINARY =3D &quot;u-boot-spl-dtb.bin&quot;<br>
=C2=A0KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
=C2=A0KBUILD_DEFCONFIG =3D &quot;multi_v7_defconfig&quot;<br>
+<br>
+PREFERRED_VERSION_mali-<wbr>userspace =3D &quot;t76x&quot;<br>
+<br>
+APPEND =3D &quot;console=3Dtty1 console=3DttyS2,115200n8 rw root=3D/dev/mm=
cblk2p7 rootfstype=3Dext4 init=3D/sbin/init&quot;<br>
--<br>
2.7.4<br>
<br>
</div></div></blockquote></div><br></div>

--001a113ca22e68089b054714be61--
