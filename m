Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4418E00D6A; Thu, 24 Oct 2019 07:02:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3438AE00C46
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 07:02:53 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id w18so25697784wrt.3
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 07:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=aOl5JQvDlHb/89ZzyGTThA3KzYhM2Xlo2UaqOhRvy64=;
	b=OaWIThgibELx+GFMCKMpEJl2g3aBAbW88gE1x6vlQEOYFHqxIyP7zS044QC5Cjmxf1
	8uNsRHYW943DyhXOadwOkD5HLkvBGtjB6EIOPkmPYp1iEQCERjoWJpTwIvfN5muRDTYw
	WGyFLJ0Qr+BBfaeD3RbFMVBkL5iC/X6mx1evw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=aOl5JQvDlHb/89ZzyGTThA3KzYhM2Xlo2UaqOhRvy64=;
	b=NIWohVl1WHSkRXKRFmuRuPraq0YHxT7oiHwr/tCb+A/E8RuAoMZA4Scfsf95VZsTYT
	BgvJullu97h1Q3a03vYVKlPaXwYWwnvdIUVEOyWLoiv5Vilv/ooTSjnETlPX0MYlBt8o
	DLfIXc89vkWEVUSAlOQkwhLP7DFhcsN0DB91nqEVyH/h3qHUcAex7movcNVtbwplt9Sk
	AniOlbedOARrbalomU33c7+Z26KapVMHzuXkYd2Z5Zc88ugemIaBYzpLodd1jxTVa7HO
	6xnpyp4FzffwJvdWwEMwDOSMLHga3exNX3e0bdKkp9E7MwuANNtZEgortWI9x9m7Kt+k
	Kduw==
X-Gm-Message-State: APjAAAUXVs/OG7duohbodWQl8kfIWNkyLN+asMcsA5Ee63CqLE3IJp93
	uyvQZ81eqT0Djwk6R5IVa8thCV7W60Y=
X-Google-Smtp-Source: APXvYqzUGLaNNMqo9FRYJA47/I+Te7V2Z52BJ6YlL/2HX6uZkKna5LRHqVADz7l/n99twsaxX1LsnA==
X-Received: by 2002:adf:f306:: with SMTP id i6mr3862011wro.209.1571925772207; 
	Thu, 24 Oct 2019 07:02:52 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	y128sm273098wmg.10.2019.10.24.07.02.50
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 24 Oct 2019 07:02:51 -0700 (PDT)
Message-ID: <f95fb29cf51372495e0a604b5e830a0152dbdd13.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: William Mills <wmills@ti.com>, "Westermann, Oliver"
	<Oliver.Westermann@cognex.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Dmytriyenko, Denys" <denys@ti.com>
Date: Thu, 24 Oct 2019 15:02:49 +0100
In-Reply-To: <95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
	<95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: [EXTERNAL] Re: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Thu, 24 Oct 2019 14:02:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Bill,

On Thu, 2019-10-24 at 09:43 -0400, William Mills wrote:
> I started looking at this thread because I had the same
> questions.  Is it possible to make a recipe depend on another version
> of GCC and restart the whole GCC build process again with a different
> config.
> 
> Or does this need multi-config?

A different version of gcc would be most easily handled with
multiconfig, yes.

> This is the question I was trying to ask the other day.
> 
> > I'm saying I don't think you need a second toolchain. I think you
> > could
> > use your existing arm toolchain with the right compiler options.
> > 
> > See 
> > https://stackoverflow.com/questions/28514507/what-makes-bare-metal-tool-chains-special
> > 
> > So you'd just add the right flags to the compiler, something like:
> > 
> > XXX-gcc -mcpu=cortex-m4 -march=armv7e-m -ffreestanding -nostdlib
> > -nostdinc
> > 
> > i.e. tell it which processor to target and not to use standard
> > libraries/includes.
> > 
> > There isn't anything that special about a baremetal compiler except
> > it
> > sets some different default flags and is missing the library
> > support.
> > 
> 
> Really??

As I understand it. I'm by no means an expert but I do my best with the
OE toolchain recipes.

> Lets start with the fact that the ARM binary toolchain has been
> tested with M4 cores.

Sure, I'm not claiming this is a well travelled path. I don't see why
it shouldn't work though, or why it makes much difference with the
right compiler options.

> Then understand that you will need to supply your own gcc compiler
> helpers and all stdc functions even the ones that port well like
> strlen and memcpy.  (Because everyone should embedded their own
> unoptimized memcpy in their projects.)

Right, that is by definition baremetal.

> This works for the kernel and u-boot but they were designed for this
> and have many eyes on their version of memcpy etc.  They are also
> running on the same CPU core as the Linux user space.
> 
> Given this I can believe this would work for CLang/LLVM if M4 support
> was enabled at build time.  I am not convinced for GCC.
> 
> If the above really works then why does gcc insist on being compiled
> again after the c library has been compiled?  I have asked and never
> got an answer that I understood.  I have been told that it looks at
> the c library headers and changes what it builds into the compiler.

I've never understood that either and looked into it. Back in December
last year, we dropped gcc-cross-initial:

http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/gcc?id=0afd3ac3ada35dd986aaf3be41d7177dc6b71ade

After that, YP does no longer rebuild gcc after building the c library,
there is one cross toolchain. That one toolchain is used for all
different arm targets, its only architecture specific.

The only thing we do rebuild is libgcc, which is why there is still a
libgcc-initial and a libgcc, the latter being built after libc. That
much kind of makes sense.

>   Does all that magic go away with just -nostdinc and -nostdlib?

I believe so, yes.

> I know this works for the kernel but targeting an RTOS or bare-metal
> for a very different core would make me nervous.  Especially true if
> the M4 would need to link libraries that were built outside of OE.
> 
> I know I am pushing back hard but I am also hoping you will convince
> me I am wrong.

You're probably right to have some concerns in that its not a well
travelled path. There are libc specifics encoded into libgcc but I
can't quite see where they change how gcc behaves other that the
default option selection.

Equally there may be something I'm missing.

For full disclosure, gcc is built against linux-libc-headers wherease
with baremetal it would be built without headers. I believe that
changes the default options gcc uses for compiling but not the way the
compiler itself works.

Cheers,

Richard


