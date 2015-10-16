Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5723E00B21; Fri, 16 Oct 2015 12:30:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (federicobriata[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDD0E006D5
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:30:39 -0700 (PDT)
Received: by lbbes7 with SMTP id es7so17628096lbb.2
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=urIQ7PFX1AXSdZP89BvUcug/hYVO97vPgl6zNF8m+LQ=;
	b=iGFBB4PpJHMIeqBkNV8aEOu8FmCOBquS02FRRy/C3PyOBLmvJtOhB46fdAGPXssiD4
	3F4UAW1miE8IxDbq50oZqwqXhJyo98/Xto0NQPFg6NZIAGDuh7jcui+0ybDD9vPtMCzs
	pCw/I34iN2C4oCNG7enRnULgQzSGAif++QUWCT8hWOdvwTHvOSFgeJqd3RBVLuCv0SdC
	51eoucbYvkiN9afY/CD/xSPgmk1LZ1b16JgWxYOsrrK/XqKixtUtITL3xWUawyuune/o
	evsnJp0NLdxPGsoY77BAIgUml9K8a0zpPQDg/zA8jffxuTfIyTRWetxLtsn97oUFTshT
	H8hA==
MIME-Version: 1.0
X-Received: by 10.112.54.169 with SMTP id k9mr8866013lbp.95.1445023838025;
	Fri, 16 Oct 2015 12:30:38 -0700 (PDT)
Received: by 10.112.43.68 with HTTP; Fri, 16 Oct 2015 12:30:37 -0700 (PDT)
In-Reply-To: <28948725-D204-4011-89DF-BDAB9EB4FE12@gmail.com>
References: <CA+KKcbkVBYfsE7fuJ+g1nmS9TdhL2wheObcCgyuf-LCiC7SOew@mail.gmail.com>
	<28948725-D204-4011-89DF-BDAB9EB4FE12@gmail.com>
Date: Fri, 16 Oct 2015 20:30:37 +0100
Message-ID: <CA+KKcbmbRoFBfAFewy4=tQMB5K8ndO3HzOq4Oq_Zjpz0A-M=VA@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] can zero shark be enabled again?
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
X-List-Received-Date: Fri, 16 Oct 2015 19:30:41 -0000
Content-Type: text/plain; charset=UTF-8

2015-10-16 16:14 GMT+01:00, Jens Rehsack <rehsack@gmail.com>:
>
> I fear you mix between ARMJIT provided by IceadTea and ZeroShark provided by
> OpenJDK.

Ops

> While IcedTea maintains the ARMJIT within hotspot ported from OpenJDK6,
> ZeroShark uses LLVM's JIT.

I thought ARMJIT was part of Shark and provided with hotspot Zero,
thanks for clarification!

> Since ARM support in LLVM's JIT was utterly broken, MCJIT support is
> required for ZeroShark.
> I was working on that but my ARMv7 and my ARMv5 are still crashing - even
> when I can realize some progress (how quick does it crash ^^).
>
> Dunno if - and if, when - I find some tuits to continue the crash detection
> and fixing...

Can I help you with testing and debugging? If you give me some tip,
I've lot of time to spend for it! :)

>
> Cheers

Ciao
federico

