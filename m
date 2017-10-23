Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D218E00928; Mon, 23 Oct 2017 11:11:35 -0700 (PDT)
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
	*      [74.125.83.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07BB4E00708
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 11:11:33 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id m18so12376456pgd.13
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 11:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GrbBRNAcO3yKOo2mB2gPzVFYpiM7L30symIN7n3xzxY=;
	b=Dt7iaWM79Ybt9oIdnkaXfdDawBu2BLOJYhcxf/0ICgbqFHdsvR0fRuAMBW4bNpvAyt
	eakOCvRV9s3TAp8LYhBE6CBCwIb9voHvtENPjVi8BLIN619OcbrT/Ld3c0NvvG9s0G5t
	OB5G5oiwFIRlkOAWEFK5JrTWXv50bvuielXi/9Rrgf56y3TS9UjXoQVxKEGEIelcEy3P
	/e1Ka4C/XvdO7y7QEegmTCQysdfBJG7EvTfUycocsObqJEK4HWK1YU2zg/Efhf0Bgo6Z
	CNQwKU6+0Vy63d+4oFr+H347RwcxAtBxbNBG09eVbfdlXeYEa7G+m2Uh+7S3Shczj79O
	gvNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GrbBRNAcO3yKOo2mB2gPzVFYpiM7L30symIN7n3xzxY=;
	b=AKyJkB/JSxJwfAEIfOkuEUZIxRZtQkn6SOaw/KEf7JYMggWhhAFDZkbb0+748GLRpi
	8OkBJlHpPjbW12H+8XXq2r5l8fiBlDcHN6+MjALaPWYCuYqrhya8LUoHdZgsIcQHDze8
	mHmrY48YYSdQ0/kBYvtl6bbcMcbGaEh9DHzIQcaCONdgUXNaeWP7MNHaDSHxds4ND1Kb
	432tGNvNG/cxGshqlVYrltIcKZ8zdmdYv+A0iynIaibEk8lyOCoeaCf/FxBAh5eKW4q6
	CmjE5+p/glF2U3hTHK8PrPSN4yfTvtX8SItiWXrOioxCrI6Gq+zl6Ezzs8n48PJedRXg
	fggw==
X-Gm-Message-State: AMCzsaXThfPUrQCmZBbtjsHBQpyZp1wKAUBVmrm/dtLVofFZnqsFNZxi
	BiIO6HDGTA/GhG3X8i1DAFFiZvz57L1GOVHj1B7GMA==
X-Google-Smtp-Source: ABhQp+ToNwhOI/aF8i2GufANshv1Rek1WuHn/rbffD+lT8WHj1xE50YnKcylzWAj8FGCU0yJ4qTfhSuHEwe12iRRbuQ=
X-Received: by 10.99.183.67 with SMTP id w3mr12434689pgt.329.1508782293230;
	Mon, 23 Oct 2017 11:11:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Mon, 23 Oct 2017 11:11:02 -0700 (PDT)
In-Reply-To: <1508782059.4636.99.camel@gmail.com>
References: <1508364829.4636.30.camel@gmail.com>
	<CAMKF1srFzdJusbLTTEikKQHrzKinot3=YgR+nkegsKGUCbM6tQ@mail.gmail.com>
	<1508441896.4636.70.camel@gmail.com>
	<CAMKF1sqz8cCN=cE4zoc-HVH1K5FhAQdTkXDMuTCw1H763Www3g@mail.gmail.com>
	<1508782059.4636.99.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 23 Oct 2017 11:11:02 -0700
Message-ID: <CAMKF1sp-gUkY=LSjD_CucEQB2YKkYmNV1C=qNDx22-+gb86A7w@mail.gmail.com>
To: Marlon Smith <marlon.smith10@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building kernel backports for ARM with Yocto
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
X-List-Received-Date: Mon, 23 Oct 2017 18:11:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 23, 2017 at 11:07 AM, Marlon Smith <marlon.smith10@gmail.com> wrote:
> Khem, with a couple of modifications I was able to get this script working
> perfectly and installing the modules into the system automatically.  Thanks
> a lot!
>
> If you or anyone else would like a copy of the modified bitbake file I'd be
> happy to share it.

Please contribute it back to meta-openembedded or meta-himvis
(https://github.com/kraj/meta-himvis)

>
> On Thu, 2017-10-19 at 14:18 -0700, Khem Raj wrote:
>
> On Thu, Oct 19, 2017 at 12:38 PM, Marlon Smith <marlon.smith10@gmail.com>
> wrote:
>
> On Wed, 2017-10-18 at 22:50 -0700, Khem Raj wrote:
>
> On Wed, Oct 18, 2017 at 3:13 PM, Marlon Smith <marlon.smith10@gmail.c
> om> wrote:
>
>
> Hi everyone,
>
> I'm trying to build the Linux backports project to get updated wifi
> drivers
> on an older kernel.  The problem is that when building backports,
> it first
> builds several tools that need to be run natively before cross-
> compiling the
> rest of the project.
>
> I know how to write a bitbake recipe to compile natively, and how
> to write
> one to build for the target, but I can't figure out how to combine
> the two.
> The backports project has steps for LTIB:
>
>  %Build
>  export PATH=$UNSPOOF_PATH
>
>  make menuconfig prefix=%{_prefix} \
>    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>
>  export PATH=$SPOOF_PATH
>
>  make prefix=%{_prefix} \
>    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>
>
> I believe what I need is an equivalent to the line export
> PATH=$UNSPOOF_PATH
> but I can't find anything in the Yocto documentation or mailing
> lists that
> would be equivalent to that.
>
>
> Any help would be much appreciated!
>
> You might try this out
>
> https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/linux-
> backports/linux-backports_4.14-rc4.bb
>
> it does not work out of box but with few fixes here and there it
> should work
>
>
> It looks like that recipe inherits backports_module and kernel-
> backports_module-split.. do I need those files as well?
>
>
>
> backports_module is merged into recipe itsellf. Other one can be
> replaced with inehrtiting
> module bbclasss
>
>
>
>
>
>
>
>
> Thanks
>
>
> Marlon
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

