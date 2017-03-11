Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5441CE00A08; Fri, 10 Mar 2017 17:44:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56A4FE009B9
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:44:47 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id b5so11973518pgg.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=CdICTZn/m3vwKAOfhRG3jBdJt9PT00+ANbLbw+o9ioA=;
	b=diUJzpBmYUC7vuvgDA4EEF0x/9UGMESrOsR4JtSpuBCpcZzyXCzQgRazJpIidmTqz0
	ZUaPLlOZnq1MEiCeESCWJmQmBuPGsGA1zAe6fLHWgQut1OEIouJQNcaBPWUExZFIITDW
	ejraVpQ0pHwMaiI1iX7dnsDsl1x+NkECT9jXKASi9Gc9V0iS6DiAkKiJILahXL56t0DB
	T9ex69JFKp0g1OY/Bg6PhsJw7sM5TZ+Z0VetaZ/XtjpPugOWaSKoPkZCQmP7au/GS7o5
	FUVNUYd55bMTZaHiOVyynWl2XjGIDD3hMV0ndnFgP4WKlJHWvsKXXY9wuepyUBq7IVWj
	TCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=CdICTZn/m3vwKAOfhRG3jBdJt9PT00+ANbLbw+o9ioA=;
	b=Tqmu/eufS5VsEtdB7REFQab498SsFSFlVywQxaPpTGPmHI+DeoTGiFffoV+/YEDVuh
	sGcZnWSINnE9izfLFZNwGZey/Q0WgvLuzC7kzk6tmizdV4BFumMqnncdke+zJlF5RMxh
	sX5VufVuu9OwTutU3oP2eyE+4r4/8wVX40Biknnt3h4LgwieDrG5HYz7BaSDBbVYTfG7
	GLihhvOb3QFRGLC821W8I/GcedMzb6nhYZ7GNaiDXHhtIlrf6Od5/6h28ultyVp9N6HS
	LH105w7MEdcHLwCQPWzIPv+7gtSRcknh0rtNMMb8hgupmJO9Wd1FwUxE2bsHLwftLbKB
	tOFA==
X-Gm-Message-State: AMke39lDfxqnHqrMlBAzBEG7SKZyjjw4sSgn9MYyAGAOMAZJ/yPXdXpnVWrgARYlnbPiXA==
X-Received: by 10.98.59.8 with SMTP id i8mr24691767pfa.132.1489196686499;
	Fri, 10 Mar 2017 17:44:46 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d16a:f79a:feb6:e660])
	by smtp.gmail.com with ESMTPSA id
	c28sm20791311pfj.77.2017.03.10.17.44.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 17:44:46 -0800 (PST)
To: yocto@yoctoproject.org
References: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <cc695875-c213-42f3-8ddf-56c15a74f2d4@gmail.com>
Date: Fri, 10 Mar 2017 17:44:44 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0
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
X-List-Received-Date: Sat, 11 Mar 2017 01:44:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 2/16/17 3:49 AM, Andreas Müller wrote:
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

Will test out sato image over weekend. with this patch

> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
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

