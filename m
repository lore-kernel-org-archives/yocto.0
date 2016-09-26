Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B60E00D64; Mon, 26 Sep 2016 00:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A872DE00C17
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 00:29:29 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id z126so42913105vkd.0
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 00:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yh43tWn1bNiSie5cYqCdjrxMQbfvnIuDReuemBe7cPM=;
	b=OMmlEFPeHTpBLK1XlH9Bkk8Rg0ugYXl23bCwQhC9Rc2OMf6XkTzVxdOo6P+18yQf0m
	tRT5Sk3O+ZUNpAz7beEUFjyWz4EktQLH5mI5w01qk9Ws3Nk/zvkfJI3Uj6+DEeQPjooE
	1JWD6tmWjyo45ioanIZh0RrVuG+1yt7uK6Hz3deNvsRkqk0Tvud6QGnqso/IppEiw8DE
	6629erqZS5Ys7rigU1UQ6Y2A3ul1wtC5YHZVag9PbLsl7U3vF17yjKhZA597JM8GXrWP
	EICVdXBp+ZTlnyjU/LXTLgCs0YRIsgvptJ0oPgw1y5RLXWS1goy7AEi+JHWYpKEFgiTV
	Oi7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yh43tWn1bNiSie5cYqCdjrxMQbfvnIuDReuemBe7cPM=;
	b=E59xO8OqXWjqIC+YWMtiyynzIGwNgB+Lh31wbGe5kHofk/t/Bv2Iv1ofUk6qhEKWGu
	qv5HHSJavQhx2p2Pi40+R6PqEamTYRKLO+p0DVrtgagZaZn7F4brcvfL0jhgt55yQPcS
	GI/iwTgeMjH82YxMlu6w8oAnlrPJYJ3Y78YC9oBvT17t+8jqB8xm3/bty6/A13W9svMB
	P5j1Udx9HS7gz4KyOGxIzbAr3RY6Od0rOEwuCVbNb5L1g00x54+AFC/mRDJzqoXx2wxi
	twe5X/6TJLDaBBYfQoA1XmFXnNp/SGXo3E4tjBaGvXngQVNNq19+tw4oCInrwpDIArm+
	2koQ==
X-Gm-Message-State: AA6/9Rlw1Zsi8epHasZ5ZKHzCyebGKCySi/LWrbSlbO4NWvoaWAXxXwt7CTUaUPhY/3ewEwVD8ssH5pFqIVj9w==
X-Received: by 10.31.244.9 with SMTP id s9mr7366842vkh.31.1474874968428; Mon,
	26 Sep 2016 00:29:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.80.33 with HTTP; Mon, 26 Sep 2016 00:28:56 -0700 (PDT)
In-Reply-To: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 26 Sep 2016 00:28:56 -0700
Message-ID: <CAMKF1sqQnvxFeXkTVuPFgGFH1ai+N=fznG4EaZ8OwpMjdMuqjw@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-toraxdex] unrecoverable build error
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
X-List-Received-Date: Mon, 26 Sep 2016 07:29:34 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 24, 2016 at 11:10 PM, Karim ATIKI <karim_atiki@hotmail.com> wrote:
> hi,
>
>
> During a core-image-x11  build   (yocto krogoth, meta-toradex) , I got the
> following error I never encountered with Yocto:
>
>
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: The recipe
> xf86-input-evdev is trying to install files into a shared area when those
> files already exist. Those files and their manifest location are:
>
> /home/kai/yocto/colibri-t20-kts/tmp/sysroots/colibri-t20/usr/share/X11/xorg.conf.d/10-evdev.conf
>  Matched in manifest-colibri-t20-xserver-xorg.populate_sysroot
> Please verify which recipe should provide the above files.
> The build has stopped as continuing in this scenario WILL break things, if
> not now, possibly in the future (we've seen builds fail several months
> later). If the system knew how to recover from this automatically it would
> however there are several different scenarios which can result in this and
> we don't know which one this is. It may be you have switched providers of
> something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in
> that case you need to execute the clean task for both recipes and it will
> resolve this error. It may be you changed DISTRO_FEATURES from systemd to
> udev or vice versa. Cleaning those recipes should again resolve this error
> however switching DISTRO_FEATURES on an existing build directory is not
> supported, you should really clean out tmp and rebuild (reusing sstate
> should be safe). It could be the overlapping files detected are harmless in
> which case adding them to SSTATE_DUPWHITELIST may be the correct solution.
> It could also be your build is including two different conflicting versions
> of things (e.g. bluez 4 and bluez 5 and the correct solution for that would
> be to resolve the conflict. If in doubt, please ask on the mailing list,
> sharing the error and filelist above.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: If the above
> message is too much, the simpler version is you're advised to wipe out tmp
> and rebuild (reusing sstate is fine). That will likely fix things in most
> (but not all) cases.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: Function failed:
> sstate_task_postfunc
> ERROR: Logfile of failure stored in:
> /home/kai/yocto/colibri-t20-kts/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/xf86-input-evdev/2_2.10.1-r0/temp/log.do_populate_sysroot.639
> ERROR: Task 2181
> (/home/kai/yocto/poky-toradex/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.1.bb,
> do_populate_sysroot) failed with exit code '1'
>
>
> I cant' get rid of this error. I have deleted the tmp and
> sstate-cache...nothing. it always occurs again.
>
>
> Any idea?

do you have x11 in DISTRO_FEATURES

>
>
> Z.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

