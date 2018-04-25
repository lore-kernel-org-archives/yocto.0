Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D7D0E00B57; Wed, 25 Apr 2018 01:39:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62E8BE00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:39:49 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id 144-v6so4326989iti.5
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+IOeibRkBz6PaKJ59TFn4C1EdHX+XkE8GsJy5T220/A=;
	b=VeHhmV87VMc6Cn3tpe59zthu05Q6WzJjfHZrmiRWDlRnvb+kiLVOrrXfE11cWm9+os
	GchH85eo0nT7Ey/ujd6T/z5O3K23tnaHlb6SdSU4s77yNtLdAfyJXipWdeFjAZzAMhhi
	SavJWtu54PSHbWZsHdZ+vJz5rJya7EDPNeWf1i3817mK6QGnm2yGx9x2C358PIsPfp3j
	wmRBAKKcC7qZKm7xa0a5auXVblKLEuZj367rRJTwE+XLUCC/6tvq2Sn+498af05qWj1a
	qp/JTqVcoABVrXGvncmeQ57DSCDhv/K8lg8odfSDWwP6xArwzCAMQZs508NpFRTo6FWb
	couA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+IOeibRkBz6PaKJ59TFn4C1EdHX+XkE8GsJy5T220/A=;
	b=IFMrQcQuKxodY/9bV7jJHKq4wvlIIcZuqWbR4Frv6FvW64XckH8eiaoHONbyvUJ+WW
	BrtrfszkiLQfMLEcSorQiR2m0x5RHWlMYuWGXgumEc/GrNv0xtIGgd5a2kf2dLPipU4o
	5Sz2OFgAUSCovAJuzTIKRUY9aKNf1KwUr8DNRhV2dwCStN4Eiq4j2Env8O4a7YYGrLET
	J+X85uYLyYEvEofCrzD6UlDBrnteZO+xyxcr/oSoKnkiNZUhnkNEJf33hDbW0JDdCZQ0
	uiudwO7mAw4fUmkv7Ry3ta2IU2bizv3+Z42H1jvyjPORmK0EB5hsJ5Li97kVSAcPsZRV
	2p/Q==
X-Gm-Message-State: ALQs6tALQv1qGFI44VT32EdXtpougTyam5uTVBSPlEyExWaM/ClzOkTx
	EcfXFD5Z1nJC9B/WiLorS3l+F4DZSj7OaYKTGs1bVQ==
X-Google-Smtp-Source: AIpwx4+LTNJWOb1yh0EMiHJaAZxFCO1MSYMdM9hgQqxycwf+DTTTkIjifVGNiGFXbncAa67oiVPoV0r8P7QZZQj9E7I=
X-Received: by 2002:a24:9ac1:: with SMTP id
	l184-v6mr21307419ite.127.1524645589248; 
	Wed, 25 Apr 2018 01:39:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 01:39:28 -0700 (PDT)
In-Reply-To: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
References: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 09:39:28 +0100
Message-ID: <CAJTo0LZYNa9GpBNcLuoWtNaO98wRzaVZjhH+oz+UNire3A6z5A@mail.gmail.com>
To: Mirza Krak <mirza@mkrak.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc not found
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
X-List-Received-Date: Wed, 25 Apr 2018 08:39:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is the build tree deleted after it fails?  It would be interesting to
see if the compiler is present in the sysroot, or if it has a
different name, or something else weird.

Do you have any global classes that do anything interesting/special?

Ross

On 25 April 2018 at 09:24, Mirza Krak <mirza@mkrak.org> wrote:
> Hi.
>
> I have come across a somewhat strange error that I can not explain to
> my self, why it is occurring and hopefully someone on the list can
> provide some insight.
>
> I am currently on "rocko" on all my layers and the recipe that I
> having issues with is brcm-patchram-plus[1]. And even though this
> recipe is part of meta-rockchip it seems to be modeled after the
> hello.bb that is found in poky so I still think that this is a
> "generic" problem and not specific to brcm-patchram-plus[1].
>
> The issue I am having is that we get intermediate build errors on
> brcm-patchram-plus[1] on our build server. We have a nightly build
> that builds without "sstate" and this is where we are seeing the
> error. It does not always fail, but every once in while with the log
> pasted below.
>
> Doing a "bitbake -c cleansstate brcm-patchram-plus" and rebuilding
> solves it, but I would like to prevent it to happening in the first
> place.
>
> NOTE: Running task 2923 of 3702
> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/b=
rcm-patchram-plus_0.1.bb:do_fetch)
> NOTE: recipe netbase-1_5.4-r0: task do_install: Started
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Started
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Succeeded
> NOTE: Running task 2924 of 3702
> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/b=
rcm-patchram-plus_0.1.bb:do_prepare_recipe_sysroot)
> NOTE: recipe netbase-1_5.4-r0: task do_install: Succeeded
> NOTE: Running task 2925 of 3702
> (/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:=
do_populate_sysroot)
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_prepare_recipe_sysroot: S=
tarted
> NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Started
> NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Succeeded
> NOTE: Running task 2926 of 3702
> (/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:=
do_package)
> NOTE: recipe brcm-patchram-plus-0.1-r0: task
> do_prepare_recipe_sysroot: Succeeded
> NOTE: Running task 2927 of 3702
> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/b=
rcm-patchram-plus_0.1.bb:do_unpack)
> NOTE: recipe netbase-1_5.4-r0: task do_package: Started
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Started
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Succeeded
> NOTE: Running task 2928 of 3702
> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/b=
rcm-patchram-plus_0.1.bb:do_patch)
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Started
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Succeeded
> NOTE: Running task 2929 of 3702
> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/b=
rcm-patchram-plus_0.1.bb:do_configure)
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Started
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Succeeded
> NOTE: Running task 2930 of 3702
> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/b=
rcm-patchram-plus_0.1.bb:do_compile)
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Started
> ERROR: brcm-patchram-plus-0.1-r0 do_compile: Function failed:
> do_compile (log file is located at
> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnu=
eabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
> ERROR: Logfile of failure stored in:
> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnu=
eabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-g=
nueabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
> 100: /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linu=
x-gnueabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
> arm-custom-linux-gnueabi-gcc: not found
> | WARNING: exit code 127 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnu=
eabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Failed
> ERROR: Task (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-pat=
chram-plus/brcm-patchram-plus_0.1.bb:do_compile)
> failed with exit code '1'
> NOTE: Running task 2931 of 3702
> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/b=
rcm-patchram-plus_0.1.bb:do_populate_lic)
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Started
> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Succeeded
> NOTE: recipe netbase-1_5.4-r0: task do_package: Succeeded
> NOTE: recipe groff-native-1.22.3-r0: task do_compile: Succeeded
> NOTE: recipe perl-5.24.1-r0: task do_compile: Succeeded
> NOTE: Tasks Summary: Attempted 2931 tasks of which 0 didn't need to be
> rerun and 1 failed.
>
> [1]. https://github.com/rockchip-linux/meta-rockchip/blob/master/recipes-=
bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb
>
> --
> Med V=C3=A4nliga H=C3=A4lsningar / Best Regards
>
> Mirza Krak
> email: mirza@mkrak.org
> web: http://mkrak.org
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

