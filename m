Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A10E01756
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 16:11:35 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id as1so982462iec.27
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 16:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tiW+PItZf8DyRJigx4PE4nISWHAtk4mkzakA06JqbTI=;
	b=KWqbJ69sVO4c0AyyikWvXzLLXIxnC3nco1SdXKnSShP3vo9cs1KjPBGyVfl1oWgBBa
	DBRBa6vTssz/x9fBdGRz1rJMWXJMdIhGF+X+UXyP5uak9x8oNOGQ3Qu4XpF6pCEPFjbX
	xfVzY3JzN4dma+ya/JYgRvAeIuBKYLbLuiu21N37xSUwsS/3+KW5Fww3Ut8zWoX+RZ3p
	ovrEvW5imJC+0R2gDWVC3U5jI7VfxA19OUzyVMUbw1Tt/KJqKdJ917KfMKJIjFG+MEZn
	5yLrjqH86i585inYPqb1sWjVn8NLtmDmOwXtLwdMmRyNv6VOjGXQS8vxOc544oh/ny/X
	EMgg==
X-Received: by 10.50.23.103 with SMTP id l7mr156267igf.3.1383088294747; Tue,
	29 Oct 2013 16:11:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Tue, 29 Oct 2013 16:11:04 -0700 (PDT)
In-Reply-To: <52703CE8.9020306@aeonyx.ca>
References: <52702B41.1040504@aeonyx.ca> <52703CE8.9020306@aeonyx.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Oct 2013 16:11:04 -0700
Message-ID: <CAMKF1spWtCmptujJk_N3AUz3v961+T+JibJtbFpZmF7ZEB3VFA@mail.gmail.com>
To: Markus Svilans <msvilans@aeonyx.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fail to build core-image-minimal when MACHINE=genericx86-64
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
X-List-Received-Date: Tue, 29 Oct 2013 23:11:36 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 29, 2013 at 3:55 PM, Markus Svilans <msvilans@aeonyx.ca> wrote:
> Dear list,
>
> A quick update:
>
> - The same build failure occurred when I tried "bitbake core-image-minimal"
> using a fresh poky 1.5 downloaded from the Yocto web site, with MACHINE set
> to genericx86-64.
> - The same build failure occurred when I manually created a recipe for
> syslinux 6.02 and tried to build it directly "bitbake syslinux"
>
> Any assistance would be greatly appreciated.

its failing while building syslinux-native package and as it seems
from errors, its not building com32 bits by passing -m32
flags to compiler. Seems like you need to hack syslinux build and add
-m32 when building com32/ subdir or alternatively
remove it from build

sed -e 's,com32/\S*,,g' -i Makefile

but that may not be best thing to do.


>
> Thanks very much
> Markus
>
>
>
> On 10/29/2013 05:40 PM, Markus Svilans wrote:
>
> Dear list,
>
> I'm trying to build a core-image-minimal recipe using MACHINE=genericx86-64
> but it always fails at syslinux-native-6.01 recipe. I've tried deleting my
> tmp and build folders several times, but it will not build. I am using the
> genericx86-64 BSP package downloaded from the Yocto website, located at:
>
> https://www.yoctoproject.org/download/intel-x86-64-based-pcs-and-devices-genericx86-64
>
> File: genericx86-64-dora-10.0.0.tar.bz2
>
> I extracted it to:
> /home/markus/yocto/genericx86-64-dora-10.0.0
>
> Then ran the "oe-init-build-env" script and editted local.conf to enable
> parallel make, and changed MACHINE to genericx86-64. (I've attached a copy
> of my local.conf file.)
>
> After that, I ran the command "bitbake core-image-minimal" and sat back,
> waiting for it to build.
>
> The build always fails at syslinux-native.
>
> I tried several things:
> - deleted tmp directory, re-try build = failure
> - deleted build directory, re-try build = failure
> - deleted build directory, build only syslinux = failure
> - deleted build directory, build only syslinux-native = failure
>
> I think I may be doing something wrong, because about an hour of Google
> searching did not turn up anybody having a similar issue.
>
> I am running Kubuntu 13.10 64-bit.
>
> Can anyone please offer any advice, so that I can successfully build x86-64
> images?
>
> Thanks very much
> Markus
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

