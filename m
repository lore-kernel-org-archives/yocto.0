Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFC94E00A2C; Thu, 16 Feb 2017 05:43:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C302E00A1C
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 05:42:58 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id q14so309907uaq.2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 05:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qkmLxCuGx1rPA4XAguCAEBSr7JHLK1eSjrIbpeVbysw=;
	b=hg/9h6A2r6exm+OQLGFUZ8ysZeu3IcPM8xA7CQosXAzSMMzVAlYN+NBwFtDi6D9xgF
	OH00gc1D4hDfBQSWccpL//hP3w7kDnKsbC2xtjJ++GX5rKOzSgzKSyRTkCsIjyuAl3fQ
	BwC4aC2J/UILRK9cw9hXQtPoDIHSG//mE3FckuDfW5W134ztTe3RTFQzzm9AVSH2Bnla
	foz5VCNGCDcT4PiSeYkaskPRL1oeMuD1TrhOCy1iMvl2pkwoiplGv4ZW6siofqRJYasl
	J54Gj3rgDPeYILC8wd45HEunq0w9Gng+EnNMfG4IegWM63jWm+oWEYzqyKiMlR9YmBmj
	ylbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qkmLxCuGx1rPA4XAguCAEBSr7JHLK1eSjrIbpeVbysw=;
	b=WpNsxOVLTFJ8mA6wEPDO1Vo9s6hI0RaxMXM8kFIFDA5dUr6ZGLeJUUnszpVupBGpt+
	oViG57qfoz/btAtJGNWVHbhJpbEIPBnJ2l0BSz19CxG6gMrbuVBZ190klWNvlMA4lWZu
	kidoHgAPr/2icEwL+g0H/hjsToQEr4Jbpzks896YB0JL3BjHj75oL/Ttqwlo+cI1YKGZ
	qEHfP3m1QwwIovDWiFIfczB/qYNzbsFSW71+h889B7xm4VzmaqQrps1Q86mv/cJuAz7v
	Q7OTFn8c6ALuIG3F6uUJAHw3GCDOi/j7Wpo+MrqmNeRo6IMezC0V9Zy5ZcEpxVShIdyv
	xvug==
X-Gm-Message-State: AMke39mbvYA2imL8yrN7z7M/X4+Umby03UGzyWWKMjLvDsDHf4wW+TnDelaqj1k/LpHKZcK7Vl/Dw91BcNunBQ==
X-Received: by 10.176.82.156 with SMTP id v28mr1090888uav.123.1487252577502;
	Thu, 16 Feb 2017 05:42:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.91.68 with HTTP; Thu, 16 Feb 2017 05:42:57 -0800 (PST)
In-Reply-To: <ed3fbe7c-ea82-6467-d678-fb6f4478f23f@mlbassoc.com>
References: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
	<ed3fbe7c-ea82-6467-d678-fb6f4478f23f@mlbassoc.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 16 Feb 2017 14:42:57 +0100
Message-ID: <CALbNGRS=i0ZWmvrtbTXkj2LxQw0_iGRu0K5qu=5D-rtzRS1uLA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 16 Feb 2017 13:43:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 16, 2017 at 2:38 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2017-02-16 12:49, Andreas M=C3=BCller wrote:
>>
>> xorg-xserver recommends xf86-input-libinput since oe-core's commit
>>
>> | commit 2d005faff6341a81a2afae28860101ba9db51ae8
>> | Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
>> | Date:   Wed Oct 26 11:37:38 2016 +0300
>> |
>> |    conf: Use xf86-input-libinput by default
>> | ...
>>
>> As nice side effect warnings for missing evdev in Xorg.0.log are gone.
>>
>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>
>
> So, does this let my simple config (HDMI+USB keyboard/mouse) work with no
> further fiddling?
>
>
>> ---
>>  .../rpi/xorg.conf.d/10-evdev.conf                  | 40
>> ----------------------
>>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  | 22 ++++++------
>>  2 files changed, 10 insertions(+), 52 deletions(-)
>>  delete mode 100644
>> recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evd=
ev.conf
>>
>> diff --git
>> a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-e=
vdev.conf
>> b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-e=
vdev.conf
>> deleted file mode 100644
>> index cc83ab2..0000000
>> ---
>> a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-e=
vdev.conf
>> +++ /dev/null
>> @@ -1,40 +0,0 @@
>> -#
>> -# Catch-all evdev loader for udev-based systems
>> -# We don't simply match on any device since that also adds acceleromete=
rs
>> -# and other devices that we don't really want to use. The list below
>> -# matches everything but joysticks.
>> -
>> -Section "InputClass"
>> -        Identifier "evdev pointer catchall"
>> -        MatchIsPointer "on"
>> -        MatchDevicePath "/dev/input/event*"
>> -        Driver "evdev"
>> -EndSection
>> -
>> -Section "InputClass"
>> -        Identifier "evdev keyboard catchall"
>> -        MatchIsKeyboard "on"
>> -        MatchDevicePath "/dev/input/event*"
>> -        Driver "evdev"
>> -EndSection
>> -
>> -Section "InputClass"
>> -        Identifier "evdev touchpad catchall"
>> -        MatchIsTouchpad "on"
>> -        MatchDevicePath "/dev/input/event*"
>> -        Driver "evdev"
>> -EndSection
>> -
>> -Section "InputClass"
>> -        Identifier "evdev tablet catchall"
>> -        MatchIsTablet "on"
>> -        MatchDevicePath "/dev/input/event*"
>> -        Driver "evdev"
>> -EndSection
>> -
>> -Section "InputClass"
>> -        Identifier "evdev touchscreen catchall"
>> -        MatchIsTouchscreen "on"
>> -        MatchDevicePath "/dev/input/event*"
>> -        Driver "evdev"
>> -EndSection
>> diff --git
>> a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> index 062de2d..b361eef 100644
>> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> @@ -1,19 +1,17 @@
>>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>
>> -SRC_URI_append_rpi =3D " file://xorg.conf.d/10-evdev.conf \
>> -                       file://xorg.conf.d/98-pitft.conf \
>> -                       file://xorg.conf.d/99-calibration.conf \
>> -                     "
>> +SRC_URI_append_rpi =3D " \
>> +    file://xorg.conf.d/98-pitft.conf \
>> +    file://xorg.conf.d/99-calibration.conf \
>> +"
>>
>>  do_install_append_rpi () {
>> -       install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
>> -       install -m 0644 ${WORKDIR}/xorg.conf.d/10-evdev.conf
>> ${D}/${sysconfdir}/X11/xorg.conf.d/
>> -
>> -       PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", =
"0",
>> d)}"
>> -       if [ "${PITFT}" =3D "1" ]; then
>> -               install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf
>> ${D}/${sysconfdir}/X11/xorg.conf.d/
>> -               install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.co=
nf
>> ${D}/${sysconfdir}/X11/xorg.conf.d/
>> -       fi
>> +    PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0"=
,
>> d)}"
>> +    if [ "${PITFT}" =3D "1" ]; then
>> +        install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
>> +        install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf
>> ${D}/${sysconfdir}/X11/xorg.conf.d/
>> +        install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf
>> ${D}/${sysconfdir}/X11/xorg.conf.d/
>> +    fi
>>  }
>>
>>  FILES_${PN}_rpi +=3D "${sysconfdir}/X11/xorg.conf
>> ${sysconfdir}/X11/xorg.conf.d/*"
>>
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

