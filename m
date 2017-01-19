Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30C2CE0083D; Thu, 19 Jan 2017 05:40:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.196 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f196.google.com (mail-yb0-f196.google.com
	[209.85.213.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B910DE00AE4
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:40:19 -0800 (PST)
Received: by mail-yb0-f196.google.com with SMTP id l23so2368600ybj.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dmrU7BfvTnp5DxyqPpyTKLbViLc5iRUKCEANFTPBf+0=;
	b=Ufqg+ytmfmrsT5FnBV3+K1cKYUxJXM4Y22ONItwQ9Y32BIu+BGVBVkp3bZE+XPsyE4
	OTuRvUM7uO7e8Xi8VNOX6cXjFcVaqi2KmUjDm7s1Ts/Hca2LwlHayzBTy0IQ3kDhionT
	gVVcw65NsbN2CIrLUg+ufrC0IXDUMlS4MvoEsV3qNklAYvsF7sgQlWzEq3gfCUZPuqvl
	c/tZiLyaNpf21Bur6Vpd4fw+kplAdyYXlmA+pZE27yplbY7Zj4aQL522fEjEnYSRIBD8
	SiHBO/t21LURCiPz1ppW+aKONfYWxocLdgPaoIYl8O6r38EdNGkwNknUYrjqddhPgvq2
	HM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dmrU7BfvTnp5DxyqPpyTKLbViLc5iRUKCEANFTPBf+0=;
	b=j2Vma68vvlTIJT1gi9crOjAOO6AvtQTgBGb8KYX5O01ZwW8QhXIpOTEelYz/4gkHE3
	IH00cgp24NknH0JUBHVPflvW9yzQuMdCsLgNKOTnxHY0e5FazV0Z03q3MAS3Hs6h6rep
	tQyzAig0cR9gUvrHa8Y4lB2q5Gd2sI1UHlYh++WtWqyu3UT+Y7/8MmeBYN0yKON6HTU5
	8M7wGnlg63a5dSjE5gxEppwzBaaNZFM1U03TJPuHzJUPX5qBZCOgPFWBH9J5dMKDeJyY
	IdejQTxgxpsmVEj0qRHC36m/OWhMib/xmiFKWVvEKhOR6ZPhDm9fBV2MQBk1+FyJbfqT
	O6VQ==
X-Gm-Message-State: AIkVDXLri0Yd41a+z4aXPJt2jtNXw3pdnwzh4XQGuviOeL26VqSxUVcoQwmDV7IH9gBVVrROhCwmzRSkXki/cg==
X-Received: by 10.233.232.136 with SMTP id a130mr7792836qkg.254.1484833218841; 
	Thu, 19 Jan 2017 05:40:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.135.153 with HTTP; Thu, 19 Jan 2017 05:40:18 -0800 (PST)
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 19 Jan 2017 08:40:18 -0500
Message-ID: <CADkTA4PGvt7UwWzV7Nnkv_TsnAofTPgwHSuqdGbcONxEOQMy_A@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>, eddie.cai@rock-chips.com
Subject: Re: [PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 13:40:28 -0000
Content-Type: multipart/alternative; boundary=94eb2c0501768f55ca054672acab

--94eb2c0501768f55ca054672acab
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 19, 2017 at 5:09 AM, Jacob Chen <jacob-chen@iotwrt.com> wrote:

> This series of patches add below features, will add more supports in the
> future(medias, more chips).
>
> 1. rockchip 4.4 kernel
>
> Rockchip 4.4 kernel is currently the latest version of the rockchip
> offical kernel, will be an upstream tracking branch.
> We regularly release the kernel through github. It support all rockchip
> 64-bit chips and a few 32-bit chips.
>
>
Aha. Here was the 0/N that I was missing when I wrote my first reply. See
my comments in
reply to the kernel recipe as to where this should land.

Cheers,

Bruce


> 2. rockchip next-dev U-boot
>
> Rockchip next-dev U-boot is the next generation of rockchip u-boot, will
> also be an upstream tracking branch.
> At present, this branch is just a rebased upstream u-boot.
>
> 3. graphics
>
> We have plans for the acceleration in wayland, x11 in the rockchip
> platform, but in this series of patches, we only include the mali bianry
> support.
>
> 4. rockchip-next-image
>
> Being different from the previous rk-u-boot which use parameter, next-dev
> u-boot use gpt partition, so it needs to generate a different image.
>
>
> Jacob Chen (7):
>   recipes-kernel: linux-rockchip: Add new recipe for 4.4
>   machine: Add machine file for the rk3288 linux Boards
>   machine: firefly: use linux-rockchip by default
>   recipes-graphics: Add support for mali-userspace
>   recipes-bsp: add u-boot-rockchip support
>   rk3288.inc: add some variables
>   rockchip-next-image: introduce image for rockchip next-dev u-boot
>
>  classes/rockchip-next-image.bbclass                | 130
> +++++++++++++++++++++
>  conf/machine/evb-rk3288.conf                       |  12 ++
>  conf/machine/fennec-rk3288.conf                    |  12 ++
>  conf/machine/firefly-rk3288.conf                   |   4 +
>  conf/machine/include/rk-linux.inc                  |  20 ++++
>  conf/machine/include/rk3288.inc                    |  10 +-
>  conf/machine/tinker-rk3288.conf                    |  13 +++
>  recipes-bsp/u-boot/u-boot-rockchip_next.bb         |  17 +++
>  recipes-graphics/mali-userspace/mali-userspace.inc |  57 +++++++++
>  .../mali-userspace/mali-userspace_t76x.bb          |  18 +++
>  recipes-graphics/mesa/mesa_%.bbappend              |   9 ++
>  recipes-kernel/linux/linux-rockchip_4.4.bb         |  20 ++++
>  12 files changed, 321 insertions(+), 1 deletion(-)
>  create mode 100644 classes/rockchip-next-image.bbclass
>  create mode 100644 conf/machine/evb-rk3288.conf
>  create mode 100644 conf/machine/fennec-rk3288.conf
>  create mode 100644 conf/machine/include/rk-linux.inc
>  create mode 100644 conf/machine/tinker-rk3288.conf
>  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
>  create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
>  create mode 100644 recipes-graphics/mali-userspace/mali-userspace_t76x.bb
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>  create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb
>
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

--94eb2c0501768f55ca054672acab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Jan 19, 2017 at 5:09 AM, Jacob Chen <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:jacob-chen@iotwrt.com" target=3D"_blank">jacob-chen@iotwrt.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This series of pat=
ches add below features, will add more supports in the future(medias, more =
chips).<br>
<br>
1. rockchip 4.4 kernel<br>
<br>
Rockchip 4.4 kernel is currently the latest version of the rockchip offical=
 kernel, will be an upstream tracking branch.<br>
We regularly release the kernel through github. It support all rockchip 64-=
bit chips and a few 32-bit chips.<br>
<br></blockquote><div><br></div><div>Aha. Here was the 0/N that I was missi=
ng when I wrote my first reply. See my comments in<br></div><div>reply to t=
he kernel recipe as to where this should land.<br><br></div><div>Cheers,<br=
><br></div><div>Bruce<br></div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">
2. rockchip next-dev U-boot<br>
<br>
Rockchip next-dev U-boot is the next generation of rockchip u-boot, will al=
so be an upstream tracking branch.<br>
At present, this branch is just a rebased upstream u-boot.<br>
<br>
3. graphics<br>
<br>
We have plans for the acceleration in wayland, x11 in the rockchip platform=
, but in this series of patches, we only include the mali bianry support.<b=
r>
<br>
4. rockchip-next-image<br>
<br>
Being different from the previous rk-u-boot which use parameter, next-dev u=
-boot use gpt partition, so it needs to generate a different image.<br>
<br>
<br>
Jacob Chen (7):<br>
=C2=A0 recipes-kernel: linux-rockchip: Add new recipe for 4.4<br>
=C2=A0 machine: Add machine file for the rk3288 linux Boards<br>
=C2=A0 machine: firefly: use linux-rockchip by default<br>
=C2=A0 recipes-graphics: Add support for mali-userspace<br>
=C2=A0 recipes-bsp: add u-boot-rockchip support<br>
=C2=A0 rk3288.inc: add some variables<br>
=C2=A0 rockchip-next-image: introduce image for rockchip next-dev u-boot<br=
>
<br>
=C2=A0classes/rockchip-next-image.<wbr>bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 130 +++++++++++++++++++++<br>
=C2=A0conf/machine/evb-rk3288.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 12 ++<br>
=C2=A0conf/machine/fennec-rk3288.<wbr>conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 12 ++<br>
=C2=A0conf/machine/firefly-rk3288.<wbr>conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A04 +<br>
=C2=A0conf/machine/include/rk-linux.<wbr>inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 20 ++++<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 10 +-<br>
=C2=A0conf/machine/tinker-rk3288.<wbr>conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 13 +++<br>
=C2=A0recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_next.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.bb</a>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0|=C2=A0 17 +++<br>
=C2=A0recipes-graphics/mali-<wbr>userspace/mali-userspace.inc |=C2=A0 57 ++=
+++++++<br>
=C2=A0.../mali-userspace/<a href=3D"http://mali-userspace_t76x.bb" rel=3D"n=
oreferrer" target=3D"_blank">mali-<wbr>userspace_t76x.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 18 +++<br>
=C2=A0recipes-graphics/mesa/mesa_%.<wbr>bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A09 ++<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-rockchip_4.4.bb" rel=3D"=
noreferrer" target=3D"_blank">linux-<wbr>rockchip_4.4.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 20 ++++<br>
=C2=A012 files changed, 321 insertions(+), 1 deletion(-)<br>
=C2=A0create mode 100644 classes/rockchip-next-image.<wbr>bbclass<br>
=C2=A0create mode 100644 conf/machine/evb-rk3288.conf<br>
=C2=A0create mode 100644 conf/machine/fennec-rk3288.<wbr>conf<br>
=C2=A0create mode 100644 conf/machine/include/rk-linux.<wbr>inc<br>
=C2=A0create mode 100644 conf/machine/tinker-rk3288.<wbr>conf<br>
=C2=A0create mode 100644 recipes-bsp/u-boot/<a href=3D"http://u-boot-rockch=
ip_next.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_next.=
bb</a><br>
=C2=A0create mode 100644 recipes-graphics/mali-<wbr>userspace/mali-userspac=
e.inc<br>
=C2=A0create mode 100644 recipes-graphics/mali-<wbr>userspace/<a href=3D"ht=
tp://mali-userspace_t76x.bb" rel=3D"noreferrer" target=3D"_blank">mali-user=
space_t76x.<wbr>bb</a><br>
=C2=A0create mode 100644 recipes-graphics/mesa/mesa_%.<wbr>bbappend<br>
=C2=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rockc=
hip_4.4.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>rockchip_4.4.bb=
</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
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
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt n=
ot follow the NULL pointer, for chaos and madness await thee at its end&quo=
t;</div>
</div></div>

--94eb2c0501768f55ca054672acab--
