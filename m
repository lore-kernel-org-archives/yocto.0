Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 690C1E00A31; Thu, 13 Aug 2015 16:43:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C385E00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 16:43:52 -0700 (PDT)
Received: by igfj19 with SMTP id j19so1785728igf.1
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 16:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sWE2hVtAKvwwG8VTZ3o3RNXmUij90zmGecuNZ7+EU6E=;
	b=U3yLmtrU/33RtM1om2LWYgb3EHTZjWzN5pzRnnJMCtQrollg1mvqb8JZoPAwu7ft9M
	Hy9O1loxgZ4n4kmPvZP1HvQHVUFiRroLqR6X+jvPn9U25QSVE9/3eWARjUdXtdZ4R6ME
	oehaYAaJZqNger7+yzOzcC8oN6CXEHuFGumKjF51TyQPMiaM0TKRi7SygoCSEjQhxg8u
	lRzVj0+p4wUUQCY7Hg3+JIRl4lrKybhsW1BK2sHth0pazys73r5fmR0Qx56Il8gcObJW
	QjyGI/xB00k9Q5YIAUcsyxEItd68aP5J82fpqJRKPkHXMtrszdTRMLr6YvRzWRMWGwaL
	FG1w==
X-Received: by 10.50.112.166 with SMTP id ir6mr5159974igb.75.1439509432234;
	Thu, 13 Aug 2015 16:43:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 13 Aug 2015 16:43:22 -0700 (PDT)
In-Reply-To: <CAN-NoH3Z-=RLKqcGvj0V7yAzM4ofT1hVN2r2hfyEL=9EvVqj_A@mail.gmail.com>
References: <CAN-NoH3Z-=RLKqcGvj0V7yAzM4ofT1hVN2r2hfyEL=9EvVqj_A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Aug 2015 16:43:22 -0700
Message-ID: <CAMKF1soi6wZ=KsfHTRfvj3V3q6U92KHti-Lv-w7-vD284Q2b+w@mail.gmail.com>
To: Richard Cagley <rcagley@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fido qt4-embedded packaging problems
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
X-List-Received-Date: Thu, 13 Aug 2015 23:43:55 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 13, 2015 at 1:56 PM, Richard Cagley <rcagley@gmail.com> wrote:
> When I try to bitbake core-image-minimal-dev I get an error involving
> cpio when I include qt4-embedded in my CORE_IMAGE_EXTRA_INSTALL list.
>
> I looked in the log file and I see a bunch of "PT_INTERP segment not
> corresponding to .interp section" and "STT_GNU_IFUNC not handled on
> ARM yet" errors and then a final failure about rootfs creation due to
> cpio.

these are prelink errors. Which release are you on ?

>
> Is there something special I need to do to include qt4-embedded for an
> arm target?

No. Although as a workaround you can disable cross prelink by removing
it from USER_CLASSES
in local.conf and see if that works then we know its a prelinking issue.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

