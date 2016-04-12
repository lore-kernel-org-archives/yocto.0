Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79402E00E42; Mon, 11 Apr 2016 18:44:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF91EE00970
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:44:31 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id v188so107967510wme.1
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=DgkWzZyjidFLI0mB1veX8Pthh56T0n7gNSiO7umdLes=;
	b=Q4hIOXzcmD6yD3AmHuNLUpLy3oQCDMbwJR7gfAZo5rxcsX/JRr6BYjs8RnQYUIdHj7
	EYv/Chf5d6WOW4a4Z457I11nn9G0fMfoyxq7DSqyJValEsR02mT5xpUrq+sULIG7LbeG
	yuobknIFNAzQhNBaRUmYSG4DC0ATl+ivIGsYCWWRiGjhNzgbgs4xK33+L5EjwOi7EF2x
	w2A/EoJi0VBEuCoPe/d/o5TV1gQ/S6mw4kz8AXHbbETnzZGtzrvtg2g/dS0VszI9PMDI
	2jlm2BlCvBv8ooT2FiSh0tulCLFL1MdJ5L/ltK9hkj8TePG4aUwyrsp3ZfCXOBaxA42M
	wFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=DgkWzZyjidFLI0mB1veX8Pthh56T0n7gNSiO7umdLes=;
	b=KGa9XptPJUL7ireeUoJAbNYHhZZP1F/5gy9HqyIK434ZiSOGTUGfQvTv/wuD/qB/Sf
	d1det3B9K4RH+IxCSWhviYOElrWELqTBR+TDcbY7Ol9haWFqgcTLSNsjRkZqndra8XKN
	2v++ViU6XE8lbjjYs3gJo0go5G/JWtnZh82r+Yya+2ApF5uS1I4PYjhik9M+MHWU3y4z
	chEINQkDcKfSJmKzp52uhkITyw4XiPctwUk4sMDPE4RYwDAhB9uXwgTJWgtxbQvVrLwF
	e09B143xgl22ITsWOQFhsUduF7A/phBHVqZb/QetDOoW1wbbt0YkZ4f04LAWrEUWHSNw
	mPIQ==
X-Gm-Message-State: AOPr4FVw3LnuOmC3bRl/CbPzmfNVi3zYPMmojLRGb/jrZhQUGW+umISoznPnOnBOLWwq4epGPDTTGsXHvYMa9A==
MIME-Version: 1.0
X-Received: by 10.194.57.168 with SMTP id j8mr457668wjq.43.1460425470443; Mon,
	11 Apr 2016 18:44:30 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Mon, 11 Apr 2016 18:44:30 -0700 (PDT)
In-Reply-To: <CALRMKQodeu99iu=6Sg1xMAkK3cchbTt0JEGBTy-4TwALttx-XQ@mail.gmail.com>
References: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
	<CAJ86T=WaPSiWoy0zNiaV8GnWd_7zJ1L2-qJNFU=MUbgidDy31Q@mail.gmail.com>
	<CALRMKQodeu99iu=6Sg1xMAkK3cchbTt0JEGBTy-4TwALttx-XQ@mail.gmail.com>
Date: Mon, 11 Apr 2016 18:44:30 -0700
Message-ID: <CAJ86T=VvELpt3mgdHtmBd2wDYM+L7T5K8yyWD2E_euF+Mp+4dA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
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
X-List-Received-Date: Tue, 12 Apr 2016 01:44:44 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 11, 2016 at 6:38 PM, Ronald Oakes <ronaldo@brc2.com> wrote:
> It looks like it is hanging fairly consistently during the
> gcc-cross-initial-x86_64-5.2.0-r0 do_compile or do_install steps.
> I've tried stopping, cleaning, and just building
> gcc-cross-initial-x86_64, but it still hangs.

Did you try "ps axf" to determine exactly which commands within
do_compile or do_install are hanging?

Also, just as a sanity check, how much DRAM on your build system?

> I'm going to try a 32 bit build just to see if I can get past this.
>
> Ron Oakes
>
> On Mon, Apr 11, 2016 at 12:35 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>> On Mon, Apr 11, 2016 at 11:22 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
>>> Over the weekend, I upgraded my connected development platform to
>>> Debian 8.4.0 from Centos 7.
>>>
>>> However, today I have yet to make a successful poky-tiny build for
>>> either coreI7-64 or qemux86-64.  In each case, I've aborted the build
>>> after one or more tasks has stopped doing anything for 30 minutes or
>>> more.
>>>
>>> I define "stopped doing anything" as having not touched a file in 30
>>> minutes, while the CPU utilization (on this 2 core, low end, ASUS
>>> VivoPC) drops very low.
>>>
>>> I've tried re-running the offending recipes and tasks individually,
>>> and cleaning and restarting from scratch, but I keep ending up with
>>> something hung.
>>>
>>> Any ideas what is up, and, more importantly, what I should do to resolve it?
>>
>> Have you used bitbake with the "--debug" option or run "ps axf" or
>> similar to see which tasks or commands are hanging?
>>
>>> Ron Oakes
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

