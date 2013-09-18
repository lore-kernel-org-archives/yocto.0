Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99915E01507
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 02:00:11 -0700 (PDT)
Received: by mail-ob0-f173.google.com with SMTP id vb8so6995911obc.18
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 02:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/GQF0CAC3AAuCo4YXWBD2kCKpLxzLxJnC0SjLMjIPSg=;
	b=WkuEP5e3gFTIX4Bpp6bf/cYIsyVD99O2Zedp4JHBFT2gBHoE2o3ahhFA2vMUWKsPZn
	yoQLfm0owtmmRHyMCl+La4EriX4c3WRrdGDJ7bxZGfLCtcqMSDqrmvV1G3rUZ0i2E/V6
	0rB7hbTeaFv7MsBksqMwD7IxOG/MJnDBoaWAbkJQO5L+jLqCMY8K5q8Ge/zsBVPw6GOZ
	CgCGhdOKnh1sAhYAvume8qEdJhnYrxPVMxy5emsZ7HvbWFXITdFsT86xr3fom3bPWqpi
	NRW+zKNH6ZLCUko+FyY+7ENaVNuRNySKUnM5ws/nRiwFbCVGx0GL3lYhWcOm2A39n3g3
	J+PA==
MIME-Version: 1.0
X-Received: by 10.182.226.199 with SMTP id ru7mr33491692obc.12.1379494811006; 
	Wed, 18 Sep 2013 02:00:11 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 18 Sep 2013 02:00:10 -0700 (PDT)
In-Reply-To: <8312953.BrE7t8V9ee@helios>
References: <CAFyqS9oT-y6p7=xs22iYNvs0bv1J7AKTA5Wrg_piStiWF+z9cg@mail.gmail.com>
	<5238AA2A.8020302@gmail.com> <8312953.BrE7t8V9ee@helios>
Date: Wed, 18 Sep 2013 11:00:10 +0200
Message-ID: <CAFyqS9q6S9ih1jiTQnaAgP4EC6u_xok9rej754H8B43K+8sg2g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems building util-linux when wide character support is disabled in distro
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
X-List-Received-Date: Wed, 18 Sep 2013 09:00:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Sep 18, 2013 at 10:12 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Hans,
>
> On Tuesday 17 September 2013 21:14:50 Hans Beckerus wrote:
>> The way forward as I can see right
>> now is to revert and put back the wide character support in libc. Unless I
>> can figure out why util-linux is actually being built in the first place?
>> What can cause dependencies to this package? It is not part of our
>> IMAGE_FEATURES directly, nor indirectly and is not installed in our rootfs.
>> But something requires it. Any hints on how to trace this back?
>
> Look at the dot graphs produced by bitbake -g (too large to be viewed in a
> viewer, but you can look at them in text form) or use bitbake -g -u depexp
> which provides a UI for exploring dependencies.
>
> FWIW, looking at the graphs here for core-image-minimal, udev is the most
> likely culprit unless you have something else that needs it (e.g. e2fsprogs).
>
Thanks Paul. I think it is e2fsprogs.
Actually, now after I enabled wide support again, I am having problems
building e2fsprogs instead.

e4defrag.c:1906: undefined reference to `nftw64'

AFAIK, nftw64 is part of the large file support, but that we have not
changed in our DISTRO_FEATURES so that came as a surprise really :(

Hans

> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

