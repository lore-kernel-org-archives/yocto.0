Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.10931.1608221850746427063
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Dec 2020 08:17:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RYQveF33;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id h19so20429297qtq.13
        for <yocto@lists.yoctoproject.org>; Thu, 17 Dec 2020 08:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k4d/oKXm5SCSxsMG5pBW15SttFKjEyAytKF3mNg3IJ4=;
        b=RYQveF33PYNrFrCixvqli8S7Nku1JQbZnubPZCbBNDYDb1NSMQnYA4g7qUA52V94Tl
         NkEdkB9fF2zT+MFyr59UASWgAHBEglo/1Gb480Dkv348tpBHG9RR0X06Va9FTeveVKFk
         rJKoIRxVZZ/2AwTnDWtSCIwOJcFhGE7CZ3tZFykp0DHSu9YoPywdCz25kaOEVAioJu97
         6T0kA8GDyXmDpXrbqULoovmeuT0PdWvPxlyO7926/C1pPoWoJVP4lCYrKEHs6G8Ev/3B
         Jt7SGgUH6JfQT19BNgNZgCViPDBBmfqzIxl4xx+Fu3SOjxySJGHZfLTw1lgQRK3irNta
         5G2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k4d/oKXm5SCSxsMG5pBW15SttFKjEyAytKF3mNg3IJ4=;
        b=iqqnVCZmoxeIoy7CeWD/f9+9IGZghU5fMxGuirT1b5hRtHydQKaLEa5joAZ9LsbRuS
         eyEPrgiNxlkaW2n4nNUwd15n4XlgzpvKfViZapTHx1cyoJqUqe4bvaJk12Hms+u5x3ba
         McCXcWb5Y2NHnHIFcPPPF6lz1+3ee/kHnc/FMCIfjq1h5ba8ck/uiqfYf6FSFpK2VwBb
         NKqGqv8XRjD3EjZol/aNveSx4tbDxYtaDd0sBXK7X21Tdtfi8i6QB3QA5qz91H9tTJCf
         BcD/Flg4RZFR5cyMo0y2CcSOTJAfuakf0zwv2YTGFnpmNl0idc253dbu1x4HowHMTqRm
         9wzg==
X-Gm-Message-State: AOAM530fWBLGXI11U2zredDBGJ5mDwtumz6uTMbWzTaW3N2iDlbA+KE8
	0abWY+jlomgI0XtQ2OAfR2hEpxLcxXQRXLx6Bec=
X-Google-Smtp-Source: ABdhPJw0u0yQnuQnNmNGm+CwBvNqxvUFhv/PsKAIcGzFygl1B5pWaj++6YC+GzReKL6SZeBbqafvVZ7aWgWkoGS57Y8=
X-Received: by 2002:ac8:3417:: with SMTP id u23mr47879140qtb.80.1608221849631;
 Thu, 17 Dec 2020 08:17:29 -0800 (PST)
MIME-Version: 1.0
References: <20200225180214.114643-1-mark.hatle@kernel.crashing.org>
 <20200225183616.GA9058@localhost> <61ddf01d-b0ed-ce85-4518-79fcc48d1061@kernel.crashing.org>
 <8c11ff9b-4e2b-178b-b713-76f44301f7c9@gmail.com> <2f77450d-290a-88bb-36cf-6b26245946d7@kernel.crashing.org>
In-Reply-To: <2f77450d-290a-88bb-36cf-6b26245946d7@kernel.crashing.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 17 Dec 2020 08:17:03 -0800
Message-ID: <CAMKF1sqqhT_V7eW6M1mYy+ehMADmpcYQtXf1-MSkEKwaP9GnAA@mail.gmail.com>
Subject: Re: [yocto] [[meta-mingw][PATCH] libgcrypt: disable amd64 optimization
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: Joshua Watt <JPEWhacker@gmail.com>, Adrian Bunk <bunk@stusta.de>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 16, 2020 at 4:50 PM Mark Hatle
<mark.hatle@kernel.crashing.org> wrote:
>
> Note, this is still happening.  Using meta-mingw w/ gatesgarth to build, and
> including libgcrypt I get the same failure.  The failure resolves with
> "--disable-amd64-as-feature-detection".
>
> Looking at the code, I don't really understand it, but there are some lines
> after that which may be more indicative of the actual error:
>
> ../../libgcrypt-1.8.6/cipher/rijndael.c: In function 'do_encrypt':
> ../../libgcrypt-1.8.6/cipher/rijndael-tables.h:103:24: error: expected ']'
> before '.' token
>   103 | #define encT enc_tables.T
>       |                        ^
> ../../libgcrypt-1.8.6/cipher/rijndael.c:775:20: note: in expansion of macro 'encT'
>   775 |                   [encT] "r" (encT)
>       |                    ^~~~
> ../../libgcrypt-1.8.6/cipher/rijndael.c:776:17: error: undefined named operand
> 'encT'
>   776 |                 : "cc", "memory", "r8", "r9", "r10", "r11");
>       |                 ^
>

does it have --enable-optimization switch on ? if so then its probing
the build platform
for features and detects XMM registers and enables them but perhaps
does not account
for it not being a sysv ABI based platform for right ABI calling convention
may be asm code have made some assumptions here

> I can't find any difference in generated content anywhere, only that the
> function (.c) that is failing seems to have a comments it's loading something
> for use w/ a SysV style function:
>
> # else
>   /* Call SystemV ABI function without storing non-volatile XMM registers,
>    * as target function does not use vector instruction sets. */
>   const void *key = ctx->keyschenc;
>   uintptr_t rounds = ctx->rounds;
>   uintptr_t ret;
>   asm volatile ("movq %[encT], %%r8\n\t"
>                 "callq *%[ret]\n\t"
>                 : [ret] "=a" (ret),
>                   "+D" (key),
>                   "+S" (bx),
>                   "+d" (ax),
>                   "+c" (rounds)
>                 : "0" (_gcry_aes_amd64_encrypt_block),
>
> As far as my configuration (all gatesgarth):
>
> conf/bblayers.conf:
> BBLAYERS ?= " \
>     /scratch2/mhatle/2021/sources/poky/meta \
>     /scratch2/mhatle/2021/sources/poky/meta-poky \
>     /scratch2/mhatle/2021/sources/meta-mingw \
>     /scratch2/mhatle/2021/sources/poky/../meta-xilinx/meta-xilinx-bsp \
>     /scratch2/mhatle/2021/sources/poky/../meta-xilinx-tools \
>     /scratch2/mhatle/2021/sources/poky/../meta-openembedded/meta-python \
>     /scratch2/mhatle/2021/sources/poky/../meta-openembedded/meta-oe \
> "
>
> DISTRO=nodistro MACHINE=zynqmp-generic SDKMACHINE=x86_64-mingw32 bitbake
> nativesdk-libgcrypt
>
> On 3/3/20 9:19 AM, Joshua Watt wrote:
> >
> > On 2/25/20 1:32 PM, Mark Hatle wrote:
> >>
> >> On 2/25/20 12:36 PM, Adrian Bunk wrote:
> >>> On Tue, Feb 25, 2020 at 12:02:14PM -0600, Mark Hatle wrote:
> >>>> amd64 optimization when using with mingw32 sometimes results in:
> >>>>
> >>>> | ../../libgcrypt-1.8.4/cipher/rijndael-tables.h:103:24: error: expected
> >>>> ']' before '.' token
> >>>> |  103 | #define encT enc_tables.T
> >>>> ...
> >>> Please send a complete build log, this looks like a parallel build
> >>> failure where some .c is compiled before some header it uses is
> >>> fully generated (or something similar).
> >> I'll reply with a private email to where you can get a copy of the build directory.
> >>
> >>>> --- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
> >>>> +++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
> >>>> @@ -1,3 +1,4 @@
> >>>> +EXTRA_OECONF_append_mingw32 = " --disable-amd64-as-feature-detection"
> >>>> ...
> >>> I assume PARALLEL_MAKE = "" would also work instead?
> >> I tried this and it didn't appear to make a difference.  I only see the problem
> >> when building for mingw32.
> >
> > Did we ever figure out what was causing this? It does appear to be some
> > sort of race condition at the moment, and I'm surprised we haven't seen
> > it on the autobuilder (we have pretty good test coverage for meta-mingw
> > there).
> >
> >>
> >> I've never seen any issues for any other SDK target.
> >>
> >> --Mark
> >>
> >>> cu
> >>> Adrian
> >>>
> >>>
> >>>
>
> 
>
