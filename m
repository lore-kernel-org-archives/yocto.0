Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1765E009F5; Thu, 19 Jan 2017 03:31:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.178 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f178.google.com (mail-yw0-f178.google.com
	[209.85.161.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F471E009DF
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:30:58 -0800 (PST)
Received: by mail-yw0-f178.google.com with SMTP id v200so28548241ywc.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oMfnUv/mi1R6FtelTxMJergCtCd3VtU3toXu+wONfto=;
	b=rSsYugig5sTksstILHLA2PYVXAL4zvXfN/FMt2gNr3qlXt6LzMCsyHC+Q2VpaXvE4q
	nsT3Xbi00Gj4rhLjxcVuVMogoikJerTseZ6cfa1rZwF09i7LreuRuOSV/579qhc3l5e1
	sPQOxb3i09jtuLYjmxslhXH3GvSe+iQIjziDtu596z0bIJ2KUw8MSw5xExwG7bsDQOIX
	89Qh36UISQ1x0ylzXyXqtG+X4kpHpaLymhUjt8KdjiS0IqgNwVcDNC6To9MC86OBtPPg
	oxtKdsXiXXoUai4vUAI1S6I6yqRArDEpOYAvqsbhF+YLJ0JBWq5TwMybmxON3YnhKoDu
	AfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oMfnUv/mi1R6FtelTxMJergCtCd3VtU3toXu+wONfto=;
	b=VJzNrraxRtSfwmQjJhwZChxFsiZjOI9ZK69sYTP4k1xL2VgThMZbq4ZqYR5hp4keOk
	FGryn/GnQn1nPuNgsZ1PmNpcOyVrA6Sg+khGeHkMGmoqHMaKp58DOSIeSQCK3dEj77Ai
	j20YNUmtfVAxflcyP1WiCDlzBmKSIsAOcdgYTLPYDwGq5oeuxeRZ30d2mv1hsBTL7uhz
	eT2rvzXL/Quw5lyfCULFHCV9ZXqo8ccF9pqy6RNOamq/15gkPLYDGKf4sxxIWYpFzUI3
	339VxK0SWhydvLjSztI8bCT/xyXSxd3JP79oH/cJT8p6fSkPmf7FcycsxYwulYFx6d6q
	TvHw==
X-Gm-Message-State: AIkVDXINCGA7TAr+NvLWMleifEzxgNVKaTuil76ovYHArxWnL2ZtO+Ph/V7sifg6fuGFFtHlRXgKlCzJMEtdrua3
X-Received: by 10.55.183.133 with SMTP id h127mr7873660qkf.121.1484825457589; 
	Thu, 19 Jan 2017 03:30:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 19 Jan 2017 03:30:37 -0800 (PST)
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Jan 2017 11:30:37 +0000
Message-ID: <CAJTo0Lb_vK5H7xNArruXy_vJSg4Hunut0O615LcaDF-dJM-t5w@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, eddie.cai@rock-chips.com
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
X-List-Received-Date: Thu, 19 Jan 2017 11:31:01 -0000
Content-Type: multipart/alternative; boundary=94eb2c060056f41215054670dd3e

--94eb2c060056f41215054670dd3e
Content-Type: text/plain; charset=UTF-8

(CCing the layer maintainers as listed in the README to ensure this gets
noticed)



On 19 January 2017 at 10:09, Jacob Chen <jacob-chen@iotwrt.com> wrote:

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

--94eb2c060056f41215054670dd3e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">(CCing the layer maintainers as listed in the README to en=
sure this gets noticed)<div><br></div><div><br></div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On 19 January 2017 at 10:09, Jaco=
b Chen <span dir=3D"ltr">&lt;<a href=3D"mailto:jacob-chen@iotwrt.com" targe=
t=3D"_blank">jacob-chen@iotwrt.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">This series of patches add below features, will add more su=
pports in the future(medias, more chips).<br>
<br>
1. rockchip 4.4 kernel<br>
<br>
Rockchip 4.4 kernel is currently the latest version of the rockchip offical=
 kernel, will be an upstream tracking branch.<br>
We regularly release the kernel through github. It support all rockchip 64-=
bit chips and a few 32-bit chips.<br>
<br>
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
</font></span></blockquote></div><br></div>

--94eb2c060056f41215054670dd3e--
