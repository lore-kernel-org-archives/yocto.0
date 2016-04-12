Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD686E00E3E; Mon, 11 Apr 2016 18:38:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA5A1E00AAF
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:38:30 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id v126so417865oia.3
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=ah716tdJofs/DPgnPF+sGdzts0q991SAdoEAEDvC7NM=;
	b=oqdcaM4GqJAqIOb6PN68mnLwOHHo/Jt0KqJMXWsU8G9khu5OwJP29eHg/aAwzixd7t
	Cz2OK3dGOqjgUyybt00y43GZIesJ6IkQ7Qujm29BOboPpz8I+fztMcfrAhmEkEeOnzh0
	7R5EtwSe/jkAsehaI+MQxkmIfPpL+1tL+5Kw4+fDIJeKcx4h/OnCR4l4bwrDZpfhB9g1
	qFR/l0PqFtyFDApkGF29CYj/u/yAWfzfUQ/KhN3TLW1ioIwUCWxdBGNnSJzMoK6Pp0dI
	R0ZDMvIDdkF0AJQJBV70LItfnYPuPmGp7eC5Kl+NnhbIwU8C/EHWETppOyBFJeBiB0Xk
	Qplg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=ah716tdJofs/DPgnPF+sGdzts0q991SAdoEAEDvC7NM=;
	b=bm9svsMQTrrsiACfY+SWNocQk2q84JFsMcGY4LWZsAFrBGjTM/w77OeYFOG8505rV2
	OUrHHXwvJRHZC85Z5hAyWqdZRCwklLfGI1tNbx7hR1BTpne8U3ElOSoWvcx0xI1uCbkk
	bDbYD/5mBb4g0zsN0LumnHnR0QaG36b2Pd53cY9Vi8AjceW2x9T9GsmOz53H77/Tfl73
	PxwTOpRLCpPfkcAaE3LyKlRXzp3AswJBQmuAdrYh6PHAoWs6Q0I2f2EiGouw5rQ9M2wA
	8242mpdSd7Gs/GfJpMCYzN0+iuuEut0ZC1HyDDVHXH68H9S7AAJTHlLwF8bDQZ30nPdB
	ABCA==
X-Gm-Message-State: AOPr4FWPld9/pHPXg+w+NNTzf5dtVIjk2GucCz1sRctlsIPKOt2/n4gP3uAJ7nGyPmhVgi9+Zo0NNq7jGWaqbw==
MIME-Version: 1.0
X-Received: by 10.157.15.196 with SMTP id m4mr258181otd.79.1460425109831; Mon,
	11 Apr 2016 18:38:29 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Mon, 11 Apr 2016 18:38:29 -0700 (PDT)
In-Reply-To: <CAJ86T=WaPSiWoy0zNiaV8GnWd_7zJ1L2-qJNFU=MUbgidDy31Q@mail.gmail.com>
References: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
	<CAJ86T=WaPSiWoy0zNiaV8GnWd_7zJ1L2-qJNFU=MUbgidDy31Q@mail.gmail.com>
Date: Mon, 11 Apr 2016 19:38:29 -0600
Message-ID: <CALRMKQodeu99iu=6Sg1xMAkK3cchbTt0JEGBTy-4TwALttx-XQ@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: A lot of, seemingly, hung tasks
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
X-List-Received-Date: Tue, 12 Apr 2016 01:38:33 -0000
Content-Type: text/plain; charset=UTF-8

It looks like it is hanging fairly consistently during the
gcc-cross-initial-x86_64-5.2.0-r0 do_compile or do_install steps.
I've tried stopping, cleaning, and just building
gcc-cross-initial-x86_64, but it still hangs.

I'm going to try a 32 bit build just to see if I can get past this.

Ron Oakes

On Mon, Apr 11, 2016 at 12:35 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Mon, Apr 11, 2016 at 11:22 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
>> Over the weekend, I upgraded my connected development platform to
>> Debian 8.4.0 from Centos 7.
>>
>> However, today I have yet to make a successful poky-tiny build for
>> either coreI7-64 or qemux86-64.  In each case, I've aborted the build
>> after one or more tasks has stopped doing anything for 30 minutes or
>> more.
>>
>> I define "stopped doing anything" as having not touched a file in 30
>> minutes, while the CPU utilization (on this 2 core, low end, ASUS
>> VivoPC) drops very low.
>>
>> I've tried re-running the offending recipes and tasks individually,
>> and cleaning and restarting from scratch, but I keep ending up with
>> something hung.
>>
>> Any ideas what is up, and, more importantly, what I should do to resolve it?
>
> Have you used bitbake with the "--debug" option or run "ps axf" or
> similar to see which tasks or commands are hanging?
>
>> Ron Oakes
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

