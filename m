Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FBD0E00B57; Wed, 25 Apr 2018 01:38:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28C45E00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:38:34 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id t192-v6so14676053itc.1
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AlWse4wWBFDZJLO9AkxlT5McdlfYKuBw4+z6I+2RvOQ=;
	b=gqx5nbKmRUa+ttQCw0t0OrVkgEO1ONDKNfYobarjSic2cykvgYfmukVW08RNJxM+fi
	+lZ2bnk7gIU8H91wkCQwpWC61ci9PHKSz1WX5XS2AMWn9r2jeJxnO0hhwqM/2JONVbDg
	CE2rPRcGNFj8yn2PYNTAmde+Qx5W4KD+5Tr0yj0DdvFsmiVJEJQ318xDo1gmxuw6lWqF
	rIGGPNCadXjx+eD/Kkrp7CtHpmh8euaOfzNYSd2peHe45RRaV9kpm4eRf2th8EFVXr8d
	Xxlo88LscetAqMZFofybDVVN57P78Z2mxu3HsmvMyGqBo8VxouzUlMAWrAnuhSH/Zr2l
	mxzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AlWse4wWBFDZJLO9AkxlT5McdlfYKuBw4+z6I+2RvOQ=;
	b=d9s9g4aPfmWMdN0e0Bwz3ouekYzv94ArqDmOJrHSe+c/AFjtRuLg1kQHZ/2TI0OK/w
	SMlCHWeL7haeSRGenRIQelUiM7IHAkijQpkgPvbLpy4kXE2r5kwLHEHYzwNvmyoFWk0w
	cKHa/i2Lv2ExkzaNNl83lZXN1fMxZBIGxN3wmxUQLS2KyyndehSXW0ZJ79Am1yKRTX3y
	kNmTuFYndH8CBwOUGk23qQ3CLx/IbT2LvJyKz/ihUIJmMPRQeELosXfVGbxmNjY6FlWO
	VatXhVgMFvMwGH8Jgaf1lDyyGLdH/ncegbPOKQ/Jg9Afts8X7k8/IS9B6OARQ88h3J/A
	gCqg==
X-Gm-Message-State: ALQs6tBrwKVtIW6bERRW27jNH+zEmZ/N+6TYp+slYiEzLUob13nSJqqu
	iRp3jqcabb5VuY8ckB8NVLZa86r3LpCguxCafWeYEw==
X-Google-Smtp-Source: AIpwx49vWMkpuzror+TRJ1GuCRAbsoJqZ0j0PgCLfRWRF8AOwnBDTyJdht0o0G/okUWZnQSSBym6OEMGHFy4HkoULSk=
X-Received: by 2002:a24:730e:: with SMTP id
	y14-v6mr22861279itb.45.1524645514013; 
	Wed, 25 Apr 2018 01:38:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 01:38:13 -0700 (PDT)
In-Reply-To: <c9e549ba-42f6-1a79-ec63-c37ceb805364@windriver.com>
References: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
	<c9e549ba-42f6-1a79-ec63-c37ceb805364@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 09:38:13 +0100
Message-ID: <CAJTo0LYtg87SdW_SPuxTo+ifMxZN+qKJmnA4+PqC2R5fBgZ+kA@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 25 Apr 2018 08:38:36 -0000
Content-Type: text/plain; charset="UTF-8"

Plenty of recipes do that though...

On 25 April 2018 at 09:36, ChenQi <Qi.Chen@windriver.com> wrote:
> I guess the problem is caused by the following line.
>
> S = "${WORKDIR}/"
>
> Try setting it to some dir under ${WORKDIR}, and make sure source file is
> under it.
> Check if the problem is still there after the above change.
>
> Best Regards,
> Chen Qi
>
>
> On 04/25/2018 04:24 PM, Mirza Krak wrote:
>>
>> Hi.
>>
>> I have come across a somewhat strange error that I can not explain to
>> my self, why it is occurring and hopefully someone on the list can
>> provide some insight.
>>
>> I am currently on "rocko" on all my layers and the recipe that I
>> having issues with is brcm-patchram-plus[1]. And even though this
>> recipe is part of meta-rockchip it seems to be modeled after the
>> hello.bb that is found in poky so I still think that this is a
>> "generic" problem and not specific to brcm-patchram-plus[1].
>>
>> The issue I am having is that we get intermediate build errors on
>> brcm-patchram-plus[1] on our build server. We have a nightly build
>> that builds without "sstate" and this is where we are seeing the
>> error. It does not always fail, but every once in while with the log
>> pasted below.
>>
>> Doing a "bitbake -c cleansstate brcm-patchram-plus" and rebuilding
>> solves it, but I would like to prevent it to happening in the first
>> place.
>>
>> NOTE: Running task 2923 of 3702
>>
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_fetch)
>> NOTE: recipe netbase-1_5.4-r0: task do_install: Started
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Started
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Succeeded
>> NOTE: Running task 2924 of 3702
>>
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_prepare_recipe_sysroot)
>> NOTE: recipe netbase-1_5.4-r0: task do_install: Succeeded
>> NOTE: Running task 2925 of 3702
>>
>> (/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:do_populate_sysroot)
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_prepare_recipe_sysroot:
>> Started
>> NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Started
>> NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Succeeded
>> NOTE: Running task 2926 of 3702
>>
>> (/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:do_package)
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task
>> do_prepare_recipe_sysroot: Succeeded
>> NOTE: Running task 2927 of 3702
>>
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_unpack)
>> NOTE: recipe netbase-1_5.4-r0: task do_package: Started
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Started
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Succeeded
>> NOTE: Running task 2928 of 3702
>>
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_patch)
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Started
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Succeeded
>> NOTE: Running task 2929 of 3702
>>
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_configure)
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Started
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Succeeded
>> NOTE: Running task 2930 of 3702
>>
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_compile)
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Started
>> ERROR: brcm-patchram-plus-0.1-r0 do_compile: Function failed:
>> do_compile (log file is located at
>>
>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
>> ERROR: Logfile of failure stored in:
>>
>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> |
>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
>> 100:
>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
>> arm-custom-linux-gnueabi-gcc: not found
>> | WARNING: exit code 127 from a shell command.
>> | ERROR: Function failed: do_compile (log file is located at
>>
>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Failed
>> ERROR: Task
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_compile)
>> failed with exit code '1'
>> NOTE: Running task 2931 of 3702
>>
>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_populate_lic)
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Started
>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Succeeded
>> NOTE: recipe netbase-1_5.4-r0: task do_package: Succeeded
>> NOTE: recipe groff-native-1.22.3-r0: task do_compile: Succeeded
>> NOTE: recipe perl-5.24.1-r0: task do_compile: Succeeded
>> NOTE: Tasks Summary: Attempted 2931 tasks of which 0 didn't need to be
>> rerun and 1 failed.
>>
>> [1].
>> https://github.com/rockchip-linux/meta-rockchip/blob/master/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

