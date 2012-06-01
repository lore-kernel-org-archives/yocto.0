Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC77FE013D1
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 11:07:43 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1101917eek.35
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2012 11:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kRbb4P68SwtqPfhEmj+WFo5Cp7Bf4Zxh2bG03mcfauQ=;
	b=s2UXks1PYpDsfHEEG9j0B8QDg7jqpV1O2dNIHEL2aVUXoXuUvuu0QCCc43k4ACWx/G
	vfFTb8RGA5YbiG1SnP6AL1VfZEhaAeBJ2P3rX8803ap1M4I7ngfz1Ga5uEqKOANVVzPe
	NmVrOoXAcnm9PMxDiVGp+/1yO6dmfipLJJgpsx7T75qSVpyAhauMX6ZX2mqNYMMOy/LD
	9MRbD30eIKtM5hsFsp1rkDcZYZknYgLMzuuRK+82zxK0/30QDSb20t435ZYW7EL4HyBB
	WDN5PzjUwM2vupHoEmqrzt37SLxpxVBPNUPADcp38J2Zfkw+uDQXDg0L6JZ8r0tD3NYs
	BSiQ==
Received: by 10.14.188.140 with SMTP id a12mr1692269een.25.1338574062352; Fri,
	01 Jun 2012 11:07:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Fri, 1 Jun 2012 11:07:12 -0700 (PDT)
In-Reply-To: <4FC8D934.7050100@linux.intel.com>
References: <4FC8D934.7050100@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Jun 2012 11:07:12 -0700
Message-ID: <CAMKF1sqQoxAVSg6kzPp394SGs701b1YeUK6E_hsmG4+0QpRJXw@mail.gmail.com>
To: John Toomey <john.toomey@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: meta-toolchain uclibc issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Jun 2012 18:07:44 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 1, 2012 at 8:01 AM, John Toomey <john.toomey@linux.intel.com> wrote:
> Hello all,
>
> I'm trying to use uClibc and meta-toolchain to compile software for my
> target system. After building and installing the toolchain I get the
> following error when trying to compile:
>
> /toolchain$ $CC hello.c -o hello_after
> /toolchain/poky/1.2/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux-uclibc/../../libexec/i586-poky-linux-uclibc/gcc/i586-poky-linux-uclibc/4.6.4/ld:
> cannot find uclibc_nonshared.a
> collect2: ld returned 1 exit status
>
> but if I include the following Yocto tmp directory
>
> /toolchain$ $CC -o hello hello.c -L
> .../tmp/work/i586-poky-linux-uclibc/uclibc-0.9.33-r6.0/package/usr/lib
>
> everythoing works correctly. Does anyone know why this file isnt included in
> the toolchain package? Is this something im doing wrong or an issue with
> meta-toolchain?

if you are not on master then please cherry-pick below for OE-Core

commit d78ef792ac000637191defa049f197733481733a
Author: Mark Norman <mpnorman@gmail.com>
Date:   Wed Apr 25 20:14:20 2012 +0930

    uclibc SDK not including libpthread_nonshared.a

    Modified the uclibc PACKAGES list order to ensure the uclibc-dev package is
    processed before uclibc-staticdev to allow *_nonshared.a libraries to be
    packaged in the uclibc-dev package.  The *_nonshared.a libraries
are required
    by the SDK.


>
> Thanks,
> John
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

