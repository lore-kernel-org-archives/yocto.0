Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E2AE00E51; Thu, 12 Jul 2018 23:08:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0784E00E51
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 23:08:45 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id h22-v6so17615805vke.4
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 23:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=GeOOm8mmTCJWB/O1x9AFig1mFrWgo8jucLYV3nB3Ce8=;
	b=JSwd5McLuZkKaDJZ95VlyURxnbUjgQBeCBnwY9R+mM5YRR4IJdf3SK8wmQPUMgB5OB
	cBlmS5/pbv8LJXkyQBz6powZvluCEtCwPuSKVvwAewG44KPdubDGnoqnAR+2Xv9Bp6CB
	SVslv4UgMwaUEnlboFPlCyUVX4LLenb6bW7aZSlD5e9iovYBXtq1upxiDWUV3310Pn4S
	HBiVisW9L6sEac30e72y2W0P77dh2ARRIta9ULoD9vxEfJv03XyLcbOv0Mc7jqyOFAfY
	ylyj+ajMMQbriD/SYEGJ1TMklgpxqzSDPPlHiPQy2n9SQS9KpNGjuuUnBX1m0SQSYBt5
	aHQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=GeOOm8mmTCJWB/O1x9AFig1mFrWgo8jucLYV3nB3Ce8=;
	b=Lyy2YWCIoX1xh6mBdv3jVXSBBon3MkyAldpJbdDql4FEbzTdDWUDm9Swl3GdgZDjDF
	DaD8LqKigdHZFUoSgbrPHls2o0AIVd94CltcTjRQIMxGgnfuXxS/BChpfJoPvz/C2xX3
	xxI8M3+PEGhw+46f4smtTIs6kylMhnt9kHK0kNT2jAKQv9p+kjjF9bXiB+IP52huWQcr
	mjvnzPnjSjkO6n6Xqmp+WtCPkhRCzdMlKo+yN7i3CrcLmdTBmRzWudQdyTESFOqXab65
	eUqjFxu+I66kHRchbk88Ta/jn8uSPACJ+CIl4/6xZvegAgaIKiSf22ts9rfYLakXpwjr
	eReQ==
X-Gm-Message-State: AOUpUlHTqB5T8OMBWFDmc9wo4pHb4dlfwENkSu9kuYLJurqYYpB1Jqa4
	Q34lQTK7KK+9NrzczvKGow+OpgtdQI46Obw64PY=
X-Google-Smtp-Source: AAOMgpc1DiDLW8+jcukSNpcYhLd5gbfSQ4GAMFfDIRURjMfb4oxfWhMBlMq5gBE499t5I86iZM93QqNas1u3IfWQPw4=
X-Received: by 2002:a1f:3984:: with SMTP id
	g126-v6mr2958614vka.28.1531462124827; 
	Thu, 12 Jul 2018 23:08:44 -0700 (PDT)
MIME-Version: 1.0
References: <CALYZMn=p_AazMF8GQj3vYgrYHiF8Rn1L8TgT9w-FJbRCuBR59Q@mail.gmail.com>
In-Reply-To: <CALYZMn=p_AazMF8GQj3vYgrYHiF8Rn1L8TgT9w-FJbRCuBR59Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 13 Jul 2018 00:08:14 -0600
Message-ID: <CAMKF1spf9c1FqZ7Od1uWwbeiQyt_WGNEiLPRezZk_eoT8sd2JA@mail.gmail.com>
To: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Issues in getting wiringpi and openvpn through Yocto built image
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
X-List-Received-Date: Fri, 13 Jul 2018 06:08:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 12, 2018 at 10:09 PM AKASH BHARDWAJ
<akash12bhardwaj@gmail.com> wrote:
>
> I was actually trying to install wiringpi,wiringpi-dev and openvpn on Yocto.
>
>
> I used the  command
>
>> IMAGE_INSTALL_APPEND = " git apt dpkg opkg rpm sudo wiringpi wiringpi-dev cmake connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn"
>> IMAGE_INSTALL_APPEND = " nano openvpn networkmanager iptables"

it should be IMAGE_INSTALL_append

>
>
> The openvpn file is present in  the /tmp/deploy/rpm directory .But when I transferred the Image to sd card for Raspberrypi,then i find out that wiringpi and openvpn file are not present anywhere on the SD card.
> So,how can I resolve this issue?
>
>
> The contents of local.conf are
>
>
>
>
>
>
>
>> DISTRO ?= "poky"
>> DISTRO_FEATURES_append += " virtualization"
>>
>>
>>
>> PACKAGE_CLASSES ?= "package_rpm"
>>
>>
>>
>>
>> EXTRA_IMAGE_FEATURES ?= "debug-tweaks dbg-pkgs dev-pkgs tools-sdk tools-debug eclipse-debug tools-profile"
>>
>>
>>
>> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>>
>>
>>
>> PATCHRESOLVE = "noop"
>>
>>
>> BB_DISKMON_DIRS ??= "\
>>     STOPTASKS,${TMPDIR},1G,100K \
>>     STOPTASKS,${DL_DIR},1G,100K \
>>     STOPTASKS,${SSTATE_DIR},1G,100K \
>>     STOPTASKS,/tmp,100M,100K \
>>     ABORT,${TMPDIR},100M,1K \
>>     ABORT,${DL_DIR},100M,1K \
>>     ABORT,${SSTATE_DIR},100M,1K \
>>     ABORT,/tmp,10M,1K"
>>
>>
>>
>>
>>
>> PACKAGECONFIG_append_pn-qemu-native = " sdl"
>> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
>> #ASSUME_PROVIDED += "libsdl-native"
>>
>>
>> CONF_VERSION = "1"
>> MACHINE = "raspberrypi3"
>> PREFERRED_VERSION_linux-raspberrypi = "4.%"
>> DISTRO_FEATURES_remove = "x11 wayland"
>> DISTRO_FEATURES_append = " systemd"
>> VIRTUAL-RUNTIME_init_manager = "systemd"
>> IMAGE_INSTALL_APPEND = " git apt dpkg opkg rpm sudo wiringpi wiringpi-dev cmake connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn"
>> IMAGE_INSTALL_APPEND = " nano openvpn networkmanager iptables"
>> ENABLE_UART="1"
>> ENABLE_SPI_BUS= "1"
>> ENABLE_I2C = "1"
>> ENABLE_PCF857x_I2C_GPIO_expanders = "1"
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

