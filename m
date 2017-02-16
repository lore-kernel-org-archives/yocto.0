Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D9B8E00A2C; Thu, 16 Feb 2017 05:38:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75D3FE00A1C
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 05:38:26 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 3816068A01C; Thu, 16 Feb 2017 13:38:25 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E6DC568A019;
	Thu, 16 Feb 2017 13:38:22 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 3A37B67402E4;
	Thu, 16 Feb 2017 14:38:22 +0100 (CET)
To: yocto@yoctoproject.org
References: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <ed3fbe7c-ea82-6467-d678-fb6f4478f23f@mlbassoc.com>
Date: Thu, 16 Feb 2017 14:38:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
Subject: Re: [meta-raspberrypi][PATCH] xserver-xf86-config: remove evdev configuration
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
X-List-Received-Date: Thu, 16 Feb 2017 13:38:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2017-02-16 12:49, Andreas Müller wrote:
> xorg-xserver recommends xf86-input-libinput since oe-core's commit
>
> | commit 2d005faff6341a81a2afae28860101ba9db51ae8
> | Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
> | Date:   Wed Oct 26 11:37:38 2016 +0300
> |
> |    conf: Use xf86-input-libinput by default
> | ...
>
> As nice side effect warnings for missing evdev in Xorg.0.log are gone.
>
> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>

So, does this let my simple config (HDMI+USB keyboard/mouse) work with no
further fiddling?

> ---
>  .../rpi/xorg.conf.d/10-evdev.conf                  | 40 ----------------------
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  | 22 ++++++------
>  2 files changed, 10 insertions(+), 52 deletions(-)
>  delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
>
> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
> deleted file mode 100644
> index cc83ab2..0000000
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -#
> -# Catch-all evdev loader for udev-based systems
> -# We don't simply match on any device since that also adds accelerometers
> -# and other devices that we don't really want to use. The list below
> -# matches everything but joysticks.
> -
> -Section "InputClass"
> -        Identifier "evdev pointer catchall"
> -        MatchIsPointer "on"
> -        MatchDevicePath "/dev/input/event*"
> -        Driver "evdev"
> -EndSection
> -
> -Section "InputClass"
> -        Identifier "evdev keyboard catchall"
> -        MatchIsKeyboard "on"
> -        MatchDevicePath "/dev/input/event*"
> -        Driver "evdev"
> -EndSection
> -
> -Section "InputClass"
> -        Identifier "evdev touchpad catchall"
> -        MatchIsTouchpad "on"
> -        MatchDevicePath "/dev/input/event*"
> -        Driver "evdev"
> -EndSection
> -
> -Section "InputClass"
> -        Identifier "evdev tablet catchall"
> -        MatchIsTablet "on"
> -        MatchDevicePath "/dev/input/event*"
> -        Driver "evdev"
> -EndSection
> -
> -Section "InputClass"
> -        Identifier "evdev touchscreen catchall"
> -        MatchIsTouchscreen "on"
> -        MatchDevicePath "/dev/input/event*"
> -        Driver "evdev"
> -EndSection
> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 062de2d..b361eef 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -1,19 +1,17 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> -SRC_URI_append_rpi = " file://xorg.conf.d/10-evdev.conf \
> -                       file://xorg.conf.d/98-pitft.conf \
> -                       file://xorg.conf.d/99-calibration.conf \
> -                     "
> +SRC_URI_append_rpi = " \
> +    file://xorg.conf.d/98-pitft.conf \
> +    file://xorg.conf.d/99-calibration.conf \
> +"
>
>  do_install_append_rpi () {
> -	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
> -	install -m 0644 ${WORKDIR}/xorg.conf.d/10-evdev.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
> -
> -	PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
> -	if [ "${PITFT}" = "1" ]; then
> -		install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
> -		install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
> -	fi
> +    PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
> +    if [ "${PITFT}" = "1" ]; then
> +        install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
> +        install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
> +        install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
> +    fi
>  }
>
>  FILES_${PN}_rpi += "${sysconfdir}/X11/xorg.conf ${sysconfdir}/X11/xorg.conf.d/*"
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

