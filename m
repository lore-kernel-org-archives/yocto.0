Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7295CE010AA; Sat, 21 Jul 2018 05:23:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5484E0086B
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 05:23:05 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id i12-v6so25925574oik.2
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 05:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fch1UoPBc2NDCedr3P7p3Uhoa4NlLa1RTfzCWnD9LnY=;
	b=K1Iz2R0SuCvE4Xnf0lbMZJUzHoEt985eSGgtpOHp6A0tU7ZnRU5TSHrnvvdclnlNA3
	2IPVEchNEYKNJ8teszsfLKFX+dkQrI59Mp0IYoU14KlmKmXaLM/Oja5ihGyIKdbR5cGw
	LEozJZaWlM9NEB5bJA2wqyOtzbBGqun6B1llqAH9u44H6Pd6iRM38WU5ZzHEF4/VAALm
	gU/m70jIUxsvUpSI05x3/upILrtSKLej8N4A+t75k5enjn7ocdmg4Bzf8wPjmQho4YYy
	0Yhix5uKbwkmDQwXKQYiRLpx4L5Xc3dplXrcHyke0cFZGJx0yE89MfrgzWlKxm24HEfX
	eOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fch1UoPBc2NDCedr3P7p3Uhoa4NlLa1RTfzCWnD9LnY=;
	b=sz9yXbvOtt9z12Kw5pURHzKPzVm9KTyUfJlwfpOqYhy8SkvwY1tsYvM03Avl2Xok+w
	xL/GNoP4WvLp2DswthXs2qYqRplMnQJmfIlbelD5VzpLav6gyR5ciHsck0pdO2Fn7W9j
	oxgKhaIK3OCX4/gnp7STdqQl2qFdrCKD2FYDH2UE065g/6FC70Wzujq3Xlc+sxF+oRXZ
	ZMFXkDDuGbyOiZjGBctaf4JbGQvYfLaygkkb+Vry66fye3o4/mo9iKyTAuaCToNONtCj
	0vCoOYMGMmxi0qmhKRBRKquYFEQxzrPmJQL4+S27Gy8+HARLsrOT7p4F8JYYALGn6f9e
	3gEQ==
X-Gm-Message-State: AOUpUlFAQukfaGJB0/Liluz2tUiGEhZVk4XdqXenri1zXrT+NSuwyq3+
	5OC9oYSCgtoZiS9fkyeDukpRzlBCrFA/WiXt5JwklQ==
X-Google-Smtp-Source: AAOMgpchrwH31g53NRfiaUw7EFi2tCUHioTux66ISUc/wADL+AK2ROUeC9rYw6xNS0oOHnI/dQA3YLS3+dBlcL+4uYU=
X-Received: by 2002:aca:efd7:: with SMTP id
	n206-v6mr1771708oih.70.1532175785083; 
	Sat, 21 Jul 2018 05:23:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Sat, 21 Jul 2018 05:22:44
	-0700 (PDT)
In-Reply-To: <53b38a65.2c07.164bb2b111f.Coremail.13824125580@163.com>
References: <53b38a65.2c07.164bb2b111f.Coremail.13824125580@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 21 Jul 2018 13:22:44 +0100
Message-ID: <CAJTo0LZ_tPA1JwfMjZrpNduwRHZ8W-M-5-yJzNMYM4y=J7TC8A@mail.gmail.com>
To: tugouxp <13824125580@163.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: why compile "xserver-xorg" package on wayland projects?
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
X-List-Received-Date: Sat, 21 Jul 2018 12:23:06 -0000
Content-Type: text/plain; charset="UTF-8"

It shouldn't complain, what is the error?  The reason it's being built
is because you've got X11 and Wayland enabled, so it's building
xwayland.  When you add wayland to DISTRO_FEATURES, also remove x11.

Ross

On 21 July 2018 at 05:48, tugouxp <13824125580@163.com> wrote:
> hi folks:
>     i am working on project with "DISTRO_FEATURE" set to "wayalnd",  during
> the compile procedure,  i saw the xserver pakage was compiled, which would
> complain compile error and stop the process.
>
> i try to debug the dependciy, it seems the "weston" package bring the
> xorg-server ,package in , so i try to change the default bb file of poky
> poky/meta/recipes-graphics/wayland/weston_2.0.0.bb
> and comment the following line
> #RDEPENDS_${PN}-xwayland += "xserver-xorg-xwayland"
> it seems work.
> i dont know the reason and want to know if any elegant way to dealt with
> this prolbems?
>
> thanks for your supply.
>
> NOTE: linux-tina: compiling from external source tree
> /home/caozilong/WorkSpace/glibc/repo/lichee/linux-4.4
> Currently  2 running tasks (2538 of 4483)  56%
> |############################################################################################
> |
> 0: linux-tina-4.4.89-r0 do_compile - 0s (pid 1550)
> 1: xserver-xorg-2_1.19.3-r0 do_configure - 0s (pid 1578)
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

