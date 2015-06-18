Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 828A6E00A51; Wed, 17 Jun 2015 23:28:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BAAE009D2
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 23:28:45 -0700 (PDT)
Received: by labko7 with SMTP id ko7so48024905lab.2
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 23:28:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=kzZoV4WifBygeFqYGJcNBzWPP64/V26S/gGJi/mebno=;
	b=LMtgvIlArGq4yep2OhjFuioSpiLMeZfKwC9TIwFOOvFFvxlekFKJK91JWOJ77UX893
	W8wExsrV8gWs5Pg8ryr97/M9/fRDJ9is6b56LxW8j+JF8NvYyYcAlj84f7ueOpipUawW
	DxVwSXs/8EthZnC5+AOH7//uAzMHcCVrV4oq2wh36HQYxgDLDVTASkeT5OmBaDZYKU0m
	Z9FUGQAjMI5K8Vf2ZhkAyXpCwerr4gAC2yhXWaODdNpvHb6+8xALk1xfSnc4ym0qXbVW
	0j3rUnLduUNNCKZ0xOjNi0F7TqsQEFddzP7rGeJqYsr92g5ZSVIQi4fl6fhPoYfRgBQv
	X3JQ==
X-Gm-Message-State: ALoCoQlZU0b5x5z5J6BEy845FFi42hySTzOeJ1ISvnkdev4UZwOdrfw9qQqgU+GQ/eDTrbU070xm
X-Received: by 10.152.18.163 with SMTP id x3mr11525908lad.70.1434608924483;
	Wed, 17 Jun 2015 23:28:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.147.232 with HTTP; Wed, 17 Jun 2015 23:28:23 -0700 (PDT)
X-Originating-IP: [185.30.25.218]
In-Reply-To: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
References: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 18 Jun 2015 08:28:23 +0200
Message-ID: <CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb has been removed from the kernel tree, and most overlays have been moved to the dts/overlays directory
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
X-List-Received-Date: Thu, 18 Jun 2015 06:28:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Herve,

On Wed, Jun 17, 2015 at 10:43 AM, Herve Jourdain <herve.jourdain@neuf.fr> w=
rote:
> Hi,
>
>
>
> Actually, the situation is slightly more complex than I initially suppose=
d :
> not only were some .dtb deleted, but also most were moved to the =C2=AB o=
verlays
> =C2=BB subdirectory.
>
> This is true for the kernel after git
> 739c586c87576fb8ef151b5843ebed76c43a5221:

These patches will first need to update kernel. So please send the
Linux update which is dependent on too. Submitting a patch is very
simple and there is documentation in the layer's README file. You can
always use pull requests in github and bitbucket too.

> https://github.com/raspberrypi/linux/commit/739c586c87576fb8ef151b5843ebe=
d76c43a5221
>
> The following patch is making the whole thing compiling, and seems to
> install them in the right places, but I=E2=80=99m not sure I=E2=80=99m cr=
eating the
> directory needed for compiling the overlays at the best of places=E2=80=
=A6
>
> Anyway, here it goes:
>
>
>
> Signed-off-by: herve.jourdain@neuf.fr
>
>
>
> --- meta-raspberrypi/conf/machine/include/rpi-base.inc     2015-05-19
> 10:34:22.099500543 +0800
>
> +++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc 2015-06-17
> 02:34:11.538069350 +0800
>
> @@ -23,18 +23,17 @@
>
>      bcm2708-rpi-b-plus.dtb \
>
>      bcm2709-rpi-2-b.dtb \
>
>      \
>
> -    ds1307-rtc-overlay.dtb \
>
> -    hifiberry-amp-overlay.dtb \
>
> -    hifiberry-dac-overlay.dtb \
>
> -    hifiberry-dacplus-overlay.dtb \
>
> -    hifiberry-digi-overlay.dtb \
>
> -    iqaudio-dac-overlay.dtb \
>
> -    iqaudio-dacplus-overlay.dtb \
>
> -    lirc-rpi-overlay.dtb \
>
> -    pcf8523-rtc-overlay.dtb \
>
> -    pps-gpio-overlay.dtb \
>
> -    w1-gpio-overlay.dtb \
>
> -    w1-gpio-pullup-overlay.dtb \
>
> +    overlays/hifiberry-amp-overlay.dtb \
>
> +    overlays/hifiberry-dac-overlay.dtb \
>
> +    overlays/hifiberry-dacplus-overlay.dtb \
>
> +    overlays/hifiberry-digi-overlay.dtb \
>
> +    overlays/i2c-rtc-overlay.dtb \
>
> +    overlays/iqaudio-dac-overlay.dtb \
>
> +    overlays/iqaudio-dacplus-overlay.dtb \
>
> +    overlays/lirc-rpi-overlay.dtb \
>
> +    overlays/pps-gpio-overlay.dtb \
>
> +    overlays/w1-gpio-overlay.dtb \
>
> +    overlays/w1-gpio-pullup-overlay.dtb \
>
>      "

On the boot partition will these files be deployed as overlays/* ? If
so, does kernel knows to pick them up from this directory?

>
> KERNEL_IMAGETYPE ?=3D "Image"
>
> --- meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi.inc
> 2015-05-19 10:34:22.103500543 +0800
>
> +++ meta-raspberrypi.new/recipes-kernel/linux/linux-raspberrypi.inc
> 2015-06-17 04:34:03.562361029 +0800
>
> @@ -42,6 +42,9 @@
>
>  do_install_prepend() {
>
>      install -d ${D}/lib/firmware
>
> +    if [ -n "${KERNEL_DEVICETREE}" ]; then
>
> +          mkdir -p ${B}/arch/${ARCH}/boot/dts/overlays
>
> +    fi
>
> }
>
>  do_deploy_append() {
>
>
>
> Regards
>
>
>
> From: Herve Jourdain [mailto:herve.jourdain@neuf.fr]
> Sent: mercredi 17 juin 2015 04:57
> To: 'yocto@yoctoproject.org'
> Subject: [meta-raspberrypi] ds1307-rtc-overlay.dtb has been removed from =
the
> kernel tree
>
>
>
> Hi,
>
>
>
> I=E2=80=99m not sure about the formalism of submitting patches to this li=
st, so I
> hope you will forgive any misstep.
>
>
>
> Recently, the RaspberryPi kernel has removed some =E2=80=9Cdeprecated=E2=
=80=9D DTB overlays
> from the kernel tree, causing the meta-raspberrypi layer to fail at compi=
le
> time.
>
> The failure message is:
>
> No rule to make target `arch/arm/boot/dts/ds1307-rtc-overlay.dtb'.  Stop.
>
>
>
> The DTB overlays that have been deleted are:
>
> ds1307-rtc-overlay
>
> pf2127-rtc-overlay
>
> pcf8523-rtc-overlay
>
> pfc8563-rtc-overlay
>
>
>
> They=E2=80=99ve been replaced by: i2c-rtc-overlay
>
>
>
> Therefore, the file conf/machine/include/rpi-base.inc must be modified to
> accommodate those changes.
>
>
>
> The proposed patch is:
>
> --- meta-raspberrypi/conf/machine/include/rpi-base.inc     2015-06-10
> 12:59:09.069237631 +0800
>
> +++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc 2015-06-17
> 01:11:58.125869271 +0800
>
> @@ -23,15 +23,14 @@
>
>      bcm2708-rpi-b-plus.dtb \
>
>      bcm2709-rpi-2-b.dtb \
>
>      \
>
> -    ds1307-rtc-overlay.dtb \
>
>      hifiberry-amp-overlay.dtb \
>
>      hifiberry-dac-overlay.dtb \
>
>      hifiberry-dacplus-overlay.dtb \
>
>      hifiberry-digi-overlay.dtb \
>
> +    i2c-rtc-overlay.dtb \
>
>      iqaudio-dac-overlay.dtb \
>
>      iqaudio-dacplus-overlay.dtb \
>
>      lirc-rpi-overlay.dtb \
>
> -    pcf8523-rtc-overlay.dtb \
>
>      pps-gpio-overlay.dtb \
>
>      w1-gpio-overlay.dtb \
>
>      w1-gpio-pullup-overlay.dtb \
>
> Signed-off-by: herve.jourdain@neuf.fr
>
>
>
> Regards
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Andrei Gherzan
e: andrei@gherzan.ro
w: www.gherzan.ro

