Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 650F7E00FFC; Tue,  6 Sep 2016 15:50:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D3A6E00FF9
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 15:50:36 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id v189so4966775vkv.0
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 15:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=caG5MkXI4fmBxfYmiv6RhGuEKNGRLru8RTYY275z1Cs=;
	b=0r7ZEaBT/RDhRhMxwOqqNdNvTgIhtYBXvZyMOQxyfRVVQsQYxoIed4jRjEuCch4ZUJ
	Nal87H/pibJZdHRFVzMe9a17oI9q+h7TYzuYbqLvK3cqONNmY6cMt1SnccIKN5Waaw/P
	HsQXutXE7a10rouqA0MW66LmNTffuaG7U4WrJVfxFICP8/GpRFQAGq9rPKzGDasbytZI
	SLfmOAtkWYf1DvK1McQZ8XjE9rt11k89AKlLiTSXcPwoTjpv5Ggj77WQ2pVcyRvvWTwh
	9H/pE+qtjFwP91t9tz1gxmygKrVBTSB/4uSU/3KW2OJDHBmUXSn2FmYUPVGMvTcFCdB2
	g1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=caG5MkXI4fmBxfYmiv6RhGuEKNGRLru8RTYY275z1Cs=;
	b=RiCtBMF9rBZHuWV8r+DPqTL8BialwnyEJ9DDIlN0p8Yzv9qOzB2udr9U3qLghxRXk6
	eerc0nntD3tA8/EwKqyeU+w9+B0tgpMg8i5tvXfpbZHy3hco2M9civwM+deHcIPkg5+U
	6Tk+ZaeGHzHwfeubFFIPofCD3tlERHX+LmkYzJ9iSoEwU8fiNxbd2rX3yAmKQiRRca7w
	QJsHqgAWfn/IVlKD2C8bXV02zJfXkmToDAQG7aBbrUFJ8IDjb/UcoomGaMXmMJftp2L4
	GvocqCBsr6V3yuF7GBaFIIyqvTE8LTH7+L00pNKSttkrOjZY1GFV1mVCk7uPopKjo7ux
	Edcg==
X-Gm-Message-State: AE9vXwOswLcN/ObUgeLcG6hWEO4IzA2aIKvDJ1Q9NGz1PR6/jEJrBbfQC+l7wmRw2tG+7tRfIpm/dJh9S8xbXg==
X-Received: by 10.31.196.199 with SMTP id u190mr28707613vkf.116.1473202235256; 
	Tue, 06 Sep 2016 15:50:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.147 with HTTP; Tue, 6 Sep 2016 15:50:34 -0700 (PDT)
In-Reply-To: <CALRMKQr-HghH23Yia8H6iRyu__0DhK6V+YBP0CmoJMTvpOepqA@mail.gmail.com>
References: <CALRMKQr9upirFMexg8nkFEXY8DN9uA7LaCngNGQpk4EroHN3tw@mail.gmail.com>
	<CALRMKQr-HghH23Yia8H6iRyu__0DhK6V+YBP0CmoJMTvpOepqA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 6 Sep 2016 19:50:34 -0300
Message-ID: <CAF3SDA50QYHMECqOPsze-O5zT0h=DSOVKEODxFCnd68KbE2QGg@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Building a Kernel Module that uses /lib/modules/<version>/build/Makefile
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
X-List-Received-Date: Tue, 06 Sep 2016 22:50:37 -0000
Content-Type: text/plain; charset=UTF-8

Ronald

If you have a module developed against 3.10 you may have trouble
compiling it against 4.x. You should port the module to 4.x kernel,
not kernel to module. If you patch the kernel to compile that module
other modules may break. I suggest that you download the kernel and
module to some folders outside of Yocto while developing, create one
or more patches with the fixes and then use Yocto to apply that
patches against that module.

Cheers,

2016-09-06 19:02 GMT-03:00 Ronald Oakes <ronaldo@brc2.com>:
> I seem to have been able to solve my own problem by doing a bit more
> poking around:
>
> It looks like the makefile I'm looking for is found in
> ${STAGING_KERNEL_DIR}, which appears in the Makefile as
> $(KERNEL_PATH).
>
> At least once I replaced the setting that was hard coded to
> /lib/modules/$(KERNEL_VERSION/build with $(KERNEL_PATH), I'm getting a
> build.  (I'm still getting some issues with the fact that my third
> party source doesn't want to build wtih either kernels 4.1.18 or 4.4.x
> as they are both too new, so I may have to patch it's linux_common.h
> to accept 4.1.18 instead of 4.1.1, but that is a minor issue in
> comparison)
>
> Thank you
>   Ron Oakes
>
> On Tue, Sep 6, 2016 at 11:11 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
>> I'm trying to integrate a 3rd party kernel module for some hardware
>> that we are using as part of our project.  Following the directions
>> that work on the native Linux installation for building it doesn't
>> quite work for a number of reasons, so I'm now modifying the generated
>> Makefile.
>>
>> However, it appears that the bulk of the work is done by a standard
>> makefile located in /lib/modules/$(KERNEL_VERSION)/build (which was
>> actually hard-coded by the configure before I started modifying the
>> makefile).  But, I'm not able to locate this in the files that Yocto
>> has produced when building the embedded kernel and the other kernel
>> modules.
>>
>> I've not booted the target and looked there - but I'd rather not build
>> this on the target.  Ideally, I'd like to have everything built on my
>> development system (not that we won't have the horsepower to build on
>> the target, but I'd rather not be putting the compilers there, nor
>> have to be having a module build as part of bring up each time - we
>> won't have any non-volitate memory so everything will have to be
>> loaded each time we boot.
>>
>> Similarly, building the binary and just including that may be
>> difficult as our build system is running a much older kernel than our
>> target (3.10 versus 4.4), so we'd still be in a cross-target situation
>> and the 3rd party supplier assumes that one is building for the system
>> one is running on and provides limited support otherwise in their
>> documentation (I've not contacted them for assistance yet)
>>
>> Any suggestions/recomendations?
>>
>> Ron Oakes
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

