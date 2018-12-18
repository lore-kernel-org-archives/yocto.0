Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF977E00C99; Mon, 17 Dec 2018 21:10:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.179 listed in list.dnswl.org]
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FAF6E00A54
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 21:10:38 -0800 (PST)
Received: by mail-qk1-f179.google.com with SMTP id o125so8807485qkf.3
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 21:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZL/Z91zDCo+aLqqpf/y8AffP2M65rzG41zhAsTh/JRg=;
	b=obibzGJcSHS9eK4fcokeSNb5xkm5rzxoc1Gf1S1/Dk9lq/5auN4ZeBp/R8+XvRSdYh
	Afi5h6CWR74RhXwNZgrS5PosSF+tljlG1xVhoBeoj0cmhTQhhufRJQZlZigaz/8oboQ3
	y3g8osrx88h4Qnw+WS0rQFAfFHIvZ9JGtcESUmckAplH13bgglYJzr3bnL1Act8+4XOm
	rnvjpJKPEB5L3rxuenl8M6rRGd2FV5OpXBalegfDm9HU2Pa2vIbhjhYSAXOpzTNg/9zD
	HtXrRKIihBrS2GS5TxcU0B4CZtxfDaHigCzASQX18+Z9UJ8F3dUCKZpeNazgJ4GQYh7H
	z5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZL/Z91zDCo+aLqqpf/y8AffP2M65rzG41zhAsTh/JRg=;
	b=uMOE/yEsGIPPZdSYf/MkAqJzVwaQyUSvXFNsv6laCavkfa1qVMecKW7os8TdWPDmYA
	rC5pOSIpEr2JdSFF8PIvTf8lu/j2y7S4fF17qK36t2CH5q5YB0geUUTm7jeWkOV8rlaG
	Lq7wqR22YbHDuB5ndDg74+dVPVT7mUqVMcXtGUlOC8VzKVZWjAU+joRwLi45oP7tR5Ov
	yV8B+I4YanSWpCyPa1+BqAWNsacUKn0zemWUJHFpk2fDWBWvikmvSR+LwRy/g9ZP4Uxs
	UberHnJv1upWQy8GESBmOFOOOpTqsZn5+FlZXAAP6LbRdZZCjod7CJh0Xig//lQrVED2
	JXhA==
X-Gm-Message-State: AA+aEWal+aIMOyNsB5d02Xz+h2lVIV1IDIqxgPXlTmza1XmE5g9pAavp
	QtQBYj515pLyBllogOcXOTCgIzIiJbNQx2MFJGw=
X-Google-Smtp-Source: AFSGD/XeKvPC0Li60zTqsyNFJg7Ikg5ZzuNFHAKhcOY18GpmPaTlbgwcCYr5/VWw9YnHlcYzy72XK7OIeeQbhnMzYOY=
X-Received: by 2002:a37:ac05:: with SMTP id e5mr15199594qkm.102.1545109837972; 
	Mon, 17 Dec 2018 21:10:37 -0800 (PST)
MIME-Version: 1.0
References: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
	<CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
	<CAC0z2vG_v93qpq_q6vx+S-Kg+Z=_MbsycRAkWeByQ0m=NtvMGQ@mail.gmail.com>
In-Reply-To: <CAC0z2vG_v93qpq_q6vx+S-Kg+Z=_MbsycRAkWeByQ0m=NtvMGQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Dec 2018 21:10:12 -0800
Message-ID: <CAMKF1so-DSbCCb5PavqLCkdsQ0vVPSOr6kRV_HEZrenzWDwWEQ@mail.gmail.com>
To: sanjay chopra <sanjuchopracool@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: build fails for qemux86
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
X-List-Received-Date: Tue, 18 Dec 2018 05:10:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 17, 2018 at 9:06 PM sanjay chopra <sanjuchopracool@gmail.com> wrote:
>
> Hi,
>
> It also happens when I build for raspberry pi, core-image-sato works fine though.
>

thats ok. it just says something is not right about the tools being
used during build
I suspect qemu usermode since thats whats used to execute some of post
install hooks

> On Tue 18 Dec, 2018, 6:33 AM Khem Raj <raj.khem@gmail.com wrote:
>>
>> On Mon, Dec 17, 2018 at 12:09 PM sanjay chopra
>> <sanjuchopracool@gmail.com> wrote:
>> >
>> > Hi,
>> >
>> > Whenever I try to build core-image-minimal , it fails in rootfs step.But I am able to build core-image-sato.
>> >
>> > With thud and master branch I am getting this issue. Sumo branch was working fine.Please help me to figure this out.
>> >
>>
>> such errors sometimes pop up when qemu is failing on the built machine
>> you might want to dig a bit deeper and find out what cmd particularly is failing
>> and then try to run that manually to check if its specific to build host.
>> >
>> >
>> > bitbake core-image-minimal
>> > Loading cache: 100% |###############################################################################################################################################################################| Time: 0:00:00
>> > Loaded 1263 entries from dependency cache.
>> > NOTE: Resolving any missing task queue dependencies
>> >
>> > Build Configuration:
>> > BB_VERSION           = "1.40.0"
>> > BUILD_SYS            = "x86_64-linux"
>> > NATIVELSBSTRING      = "universal"
>> > TARGET_SYS           = "i586-poky-linux"
>> > MACHINE              = "qemux86"
>> > DISTRO               = "poky"
>> > DISTRO_VERSION       = "2.6"
>> > TUNE_FEATURES        = "m32 i586"
>> > TARGET_FPU           = ""
>> > meta
>> > meta-poky
>> > meta-yocto-bsp       = "thud:d0e0a3d7a8218fbbf057a922c86bcdd2cf469ce9"
>> >
>> > Initialising tasks: 100% |##########################################################################################################################################################################| Time: 0:00:01
>> > Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% match, 99% complete)
>> > NOTE: Executing SetScene Tasks
>> > NOTE: Executing RunQueue Tasks
>> > ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept hook 'update_font_cache' failed, details in /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs
>> > ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
>> > ERROR: Logfile of failure stored in: /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.18035
>> > ERROR: Task (/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 2420 tasks of which 2419 didn't need to be rerun and 1 failed.
>> >
>> > Summary: 1 task failed:
>> >   /mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs
>> > Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>> >
>> > --
>> > Regards
>> > Sanjay
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

