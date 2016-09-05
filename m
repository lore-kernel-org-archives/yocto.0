Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FFDFE00E3F; Mon,  5 Sep 2016 06:28:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D025E00E1D
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 06:28:32 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id j189so2824921vkc.2
	for <yocto@yoctoproject.org>; Mon, 05 Sep 2016 06:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fj5HFzxMxhLkj9PWecnp2gLlWps5p2q/ZmvVeEQu9rY=;
	b=COXMIL4Iw9BXyerCiBBbgDufvz3cIcZodN4Mfuiw0a+RTMHeBWABKMGshcGP4sJWhN
	/1mXXLtxHw/JjxreHGI+D10PMGo+Kucv6iXH/AdsjLIuHAZtgM6i5wokmWUq58+yeE+r
	Ms/1FMudKtKbG9SzGENlbCeDunqByHiOUm2pepetllkK43gwtRKgGl59+Wg4sbA+vwQ7
	mlYQWKkL19L7G2bLaWUlSuG5u3CXAT91dYpWSz6oONtbTfIcDZlqzR8oOm372On92v3G
	j/xri+92S/1amA8AgavB9TGOfFVXIe90QR5qVtdQY8vDMGC+JwYktk46Y1PfgXbxvXs+
	pVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fj5HFzxMxhLkj9PWecnp2gLlWps5p2q/ZmvVeEQu9rY=;
	b=jvvIx4LYPqXpZnzQ+/YT/mqz2gIcKo9Hh9/yMn8yRsK+QdVkd7gztuiKFL1VU4zLl/
	Cx7FI3rpbWCFIoZ9bsoWgB7IIL04CKYZyM2z+mMl0stCDwH7bUtza+T+lhEER554vxlX
	nnEol5qd7knzjZs1PXpzVPGaqSsJCIG3lHzrSdpYekUpujr7PI4TyhI6p8pCsTrfU/FX
	xUdxN0aEfzmUcGGmuuytw9sYtz3AVtow63x4DNNj5Ck4+xhAVVgsdbtlxhjX3glNQVxT
	Ki5SaXcsmqaUQdBDwfBa/QSxHsEcWTaT5V/E4ShamZkQU0j5gW31Uh6vYSlmdf3tQ76v
	+3Ag==
X-Gm-Message-State: AE9vXwOm6crNXaDK65j9tAQfpRB7oSIdtQI6rrpLWWnfsJCM1HCB/pcHLU7TR7li8zO4+6sCJAPHHLpQwDxsaw==
X-Received: by 10.31.12.72 with SMTP id 69mr22430782vkm.62.1473082111351; Mon,
	05 Sep 2016 06:28:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Mon, 5 Sep 2016 06:28:30 -0700 (PDT)
In-Reply-To: <87wpiq8psf.fsf@posteo.net>
References: <871t0ya6co.fsf@posteo.net>
	<CAF3SDA44veF1YgepzyN0L-ntKGTr9Z4NwwMFGb4yw9XW_RNokw@mail.gmail.com>
	<87wpiq8psf.fsf@posteo.net>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 5 Sep 2016 10:28:30 -0300
Message-ID: <CAF3SDA7VSEkM6SBDFKJRCWRDC7OPmSy6diDVXSwqdU7fjdfhAw@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: arm-*-linux-gnueabi : unrecognized option -Wl, -soname
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
X-List-Received-Date: Mon, 05 Sep 2016 13:28:37 -0000
Content-Type: text/plain; charset=UTF-8

Try to crosscompile "by hand" using Yocto toolschains. then try to
crosscompile it inside Yocto. Does gRPC uses autotools? If so you may
be interested in $CONFIGURE_FLAGS setted by Yocto' environment setup
script. Here is an example of how I did compile libfprint using
Yocto's toolchain: http://pastebin.com/hyzrd3up

Regards :)

2016-09-05 10:00 GMT-03:00 Pietro <pulsarpietro@posteo.net>:
> Well,
>
> I am cross-compiling the gRPC using the Yocto build system, I have
> created a recipe for a new package which generates the gRPC
> library(ies).
>
> The error comes from here *guess* :
> ifeq ($(SYSTEM),Darwin)
>      $(Q) $(LD) $(LDFLAGS) -L$(LIBDIR)/$(CONFIG) -install_name
>      $(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT) -dynamiclib -o
>      $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).$(SHARED_EXT)
>      $(LIBGPR_OBJS) $(LDLIBS) $(ZLIB_MERGE_LIBS)
>      else
>         $(Q) $(LD) $(LDFLAGS) -L$(LIBDIR)/$(CONFIG) -shared
>         -Wl,-soname,libgpr.so.1 -o
>         $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).$(SHARED_EXT)
>         $(LIBGPR_OBJS) $(LDLIBS) $(ZLIB_MERGE_LIBS)
>                        $(Q) ln -sf
>                        $(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT)
>                        $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).so.1
>                         $(Q) ln -sf
>                         $(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT)
>                         $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).so
>                         endif
>
> What's puzzles me is that the same source code builds without problem on
> my machine (not cross compiled).
>
> It might be a question for gRPC developers though
>
> "Daniel." <danielhilst@gmail.com> writes:
>
>> I *guess* that it should be -Wl,-soname=libgpr.so.1 intead of
>> -Wl,-soname,libgpr.so.1. Now from where this flags are comming is a
>> good question..
>>
>> 2016-09-05 9:17 GMT-03:00 Pietro <pulsarpietro@posteo.net>:
>>>
>>> Hi all,
>>>
>>> I want to cross compile the gRPC library for ARM and I am using the
>>> Yocto build system.
>>>
>>> The build fails for the following error, which I am suspicious has
>>> something to do with the compiler being used:
>>>
>>>
>>> [LD]      Linking
>>> /export/arm/xxx/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/libs/opt/libgpr.so.1.0.0-pre1
>>>
>>> arm-phytec-linux-gnueabi-ld
>>> : unrecognized option '
>>> -Wl,-soname,libgpr.so.1
>>>
>>>
>>> arm-phytec-linux-gnueabi-ld
>>> : use the --help option for usage information
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> "Do or do not. There is no try"
>>   Yoda Master
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

