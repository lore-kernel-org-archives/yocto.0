Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97655E00A51; Thu, 18 Jun 2015 01:22:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F497E009D2
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2015 01:22:38 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.73.231.117])
	by msfrf2601.sfr.fr (SMTP Server) with ESMTP id 2C9A91C000429;
	Thu, 18 Jun 2015 10:22:35 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-73-231-117.EMOME-IP.hinet.net
	[42.73.231.117])	(using TLSv1
	with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2601.sfr.fr (SMTP Server) with ESMTP id D1F6F1C000C86;
	Thu, 18 Jun 2015 10:22:32 +0200 (CEST)
X-SFR-UUID: 20150618082232860.D1F6F1C000C86@msfrf2601.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Thu, 18 Jun 2015 10:22:32 +0100
X-PGP-Universal: processed;	by hjo-pc on Thu, 18 Jun 2015 10:22:32 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>
References: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
	<CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
In-Reply-To: <CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
Date: Thu, 18 Jun 2015 10:22:23 +0200
Message-ID: <02ea01d0a99f$ec37d2c0$c4a77840$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQKKC9ddfvMg404D4wnsS7ZEixxZ4wG5h1mmnDFasTA=
Cc: 'Yocto Project' <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 18 Jun 2015 08:22:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andrei,

Well, it seems that the current meta-raspberrypi is pulling the kernel =
from github, and the kernel on github already has these "features" in.
Which is why I could compile fine with the current meta-raspberrypi 2or =
3 weeks ago, but it failed 2 days ago when I tried to do a fresh =
build...
Therefore, I believe the change in the meta-raspberrypi is already =
needed for the 3.18.y branch, because the kernel already has it.

Regards,

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro]=20
Sent: jeudi 18 juin 2015 08:28
To: Herve Jourdain
Cc: Yocto Project
Subject: Re: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb =
has been removed from the kernel tree, and most overlays have been moved =
to the dts/overlays directory

Hello Herve,

On Wed, Jun 17, 2015 at 10:43 AM, Herve Jourdain =
<herve.jourdain@neuf.fr> wrote:
> Hi,
>
>
>
> Actually, the situation is slightly more complex than I initially =
supposed :
> not only were some .dtb deleted, but also most were moved to the =
=C2=AB=20
> overlays =C2=BB subdirectory.
>
> This is true for the kernel after git
> 739c586c87576fb8ef151b5843ebed76c43a5221:

These patches will first need to update kernel. So please send the Linux =
update which is dependent on too. Submitting a patch is very simple and =
there is documentation in the layer's README file. You can always use =
pull requests in github and bitbucket too.

> https://github.com/raspberrypi/linux/commit/739c586c87576fb8ef151b5843
> ebed76c43a5221
>
> The following patch is making the whole thing compiling, and seems to=20
> install them in the right places, but I=E2=80=99m not sure I=E2=80=99m =
creating the=20
> directory needed for compiling the overlays at the best of =
places=E2=80=A6
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

On the boot partition will these files be deployed as overlays/* ? If =
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
> Subject: [meta-raspberrypi] ds1307-rtc-overlay.dtb has been removed=20
> from the kernel tree
>
>
>
> Hi,
>
>
>
> I=E2=80=99m not sure about the formalism of submitting patches to this =
list,=20
> so I hope you will forgive any misstep.
>
>
>
> Recently, the RaspberryPi kernel has removed some =
=E2=80=9Cdeprecated=E2=80=9D DTB=20
> overlays from the kernel tree, causing the meta-raspberrypi layer to=20
> fail at compile time.
>
> The failure message is:
>
> No rule to make target `arch/arm/boot/dts/ds1307-rtc-overlay.dtb'.  =
Stop.
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
> Therefore, the file conf/machine/include/rpi-base.inc must be modified =

> to accommodate those changes.
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



--
Andrei Gherzan
e: andrei@gherzan.ro
w: www.gherzan.ro

