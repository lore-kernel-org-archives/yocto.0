Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 090B1E00E55; Mon, 11 Apr 2016 20:49:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8298CE00BBF
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 20:49:50 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id w18so687272oie.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 20:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Xe8xxaAonzrIXAAUPwI8Gpvoj0jdh6fopqObu9P/FVs=;
	b=wz4RO+c1BvkY5OjkYvY6GGNhe4WmmWZMZtXlq1x1Fh5vxHglRTw2/RbdSKzpEKYz42
	cGCr0UoIl3XRkFnHF9RXv9HTby7ewf5WZUlXl3qPxY8UC2A2/5XTlP+VouAWQ5v9glq2
	OlGnXY20CfWOSjyHLFfrnO6wUR1pbf3jL1Vcir6PsXKmomuzgbQZ0fiO+RN/MyOxtOiF
	KWNqP5uoMZEwfPDhBSjt5F9uK2xSD9q6yVHPRAskilNrpFQFzn9bi219q0kkRFx2yTRN
	E/HL5A8//2ZDSLhVBqBdGyt3893DZZvH23WFKrihO4sMXpxK/YymeEZuv5tE7I2eugjx
	Ce0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Xe8xxaAonzrIXAAUPwI8Gpvoj0jdh6fopqObu9P/FVs=;
	b=ihG2SWJPlmwSom2J+f0VJuAuJ6xsOmukLylGgrsmGNRY9ZJKLblYdmsJfXmtwNrGT0
	Er74YoJIHrVshSYOCpcau01UalULjhgg/pj1MgilOjPUBAEQZIUoo9AZc/f1c0nj07nH
	7H9KOzuzcZ1NVbmQ6n+OutlY7bTBWElKEOJuWNEouXrEBTaIRlPxQLJ1oqXd31cYkkAN
	lgMbdO0YD+KoYs9ykMyrfgzq9deSmTsXEHJ9TSgTVaTDSoJkMsriieKdXtyLQR/kupHU
	I1h/V0x/31H8oBAF3dYVMGJ3QWIVIaq1Sz2dKtNApcYpYxrusBp/VCC7Pbq1cwV650lz
	LM5Q==
X-Gm-Message-State: AOPr4FW0svwTrUUyzjay4SifdFR14zDY/oWrya9PyN1yVqrDwleU5yR6YmjpdAhc4oYdwgB39CpEesvBVNtoLw==
MIME-Version: 1.0
X-Received: by 10.157.34.193 with SMTP id y59mr483410ota.88.1460432990274;
	Mon, 11 Apr 2016 20:49:50 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Mon, 11 Apr 2016 20:49:50 -0700 (PDT)
In-Reply-To: <CAME0jBTj6rHSAxP_yBEGHrmG8R1vAsMbt6Xj9PVm+qBRWbUB5Q@mail.gmail.com>
References: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
	<CAJ86T=WaPSiWoy0zNiaV8GnWd_7zJ1L2-qJNFU=MUbgidDy31Q@mail.gmail.com>
	<CALRMKQodeu99iu=6Sg1xMAkK3cchbTt0JEGBTy-4TwALttx-XQ@mail.gmail.com>
	<CAME0jBTj6rHSAxP_yBEGHrmG8R1vAsMbt6Xj9PVm+qBRWbUB5Q@mail.gmail.com>
Date: Mon, 11 Apr 2016 21:49:50 -0600
Message-ID: <CALRMKQoQ_1oOi+MDr9gO41wXCRW5jLw_kwpBF7xm=BBqC7hb6w@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: Chris Hallinan <challinan@gmail.com>
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
X-List-Received-Date: Tue, 12 Apr 2016 03:49:54 -0000
Content-Type: text/plain; charset=UTF-8

Thank you all.  I'll try some more of the debugging if my current fix
attempt (using the current sources rather than the tar file, and
building the qemux86 first) don't work.

I have 4 GBytes DRAM.  I've never seen (at least not according to the
Gnome system monitor) my current memory usage exceed 60%, and swap
isn't getting touched at all.

Ron O

On Mon, Apr 11, 2016 at 7:52 PM, Chris Hallinan <challinan@gmail.com> wrote:
> I have very occasionally hit hung tasks, but I was usually able to identify
> the exact task which was hanging, it was never "many".  Note that some tasks
> which may appear "hung" may be waiting for a dependency to complete.  You
> could try some brute force debugging...set these in local.conf:
>
> BB_NUMBER_THREADS = "1"
> PARALLEL_MAKE = "-j1"
>
> Then try building again, and yes it will take a long time.
>
> if something is actually hanging, it would be useful to know what task, not
> only the bitbake "task" but the actual process as reported by ps.  A bitbake
> "task" can spawn many processes as it works to complete it's job.
>
> In the past, once I found the hanging process, strace usually helped me
> discover why.
>
> You mention a "low-end" 2-core machine...RAM is everything.  If you're
> running Linux out of memory, you get what you deserve <grin>
>
> Remember, poky-tiny refers to the resulting distribution you are building,
> not the machine you want to build it on ;)
>
> -Chris
>
>
>
> On Mon, Apr 11, 2016 at 9:38 PM, Ronald Oakes <ronaldo@brc2.com> wrote:
>>
>> It looks like it is hanging fairly consistently during the
>> gcc-cross-initial-x86_64-5.2.0-r0 do_compile or do_install steps.
>> I've tried stopping, cleaning, and just building
>> gcc-cross-initial-x86_64, but it still hangs.
>>
>> I'm going to try a 32 bit build just to see if I can get past this.
>>
>> Ron Oakes
>>
>> On Mon, Apr 11, 2016 at 12:35 PM, Andre McCurdy <armccurdy@gmail.com>
>> wrote:
>> > On Mon, Apr 11, 2016 at 11:22 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
>> >> Over the weekend, I upgraded my connected development platform to
>> >> Debian 8.4.0 from Centos 7.
>> >>
>> >> However, today I have yet to make a successful poky-tiny build for
>> >> either coreI7-64 or qemux86-64.  In each case, I've aborted the build
>> >> after one or more tasks has stopped doing anything for 30 minutes or
>> >> more.
>> >>
>> >> I define "stopped doing anything" as having not touched a file in 30
>> >> minutes, while the CPU utilization (on this 2 core, low end, ASUS
>> >> VivoPC) drops very low.
>> >>
>> >> I've tried re-running the offending recipes and tasks individually,
>> >> and cleaning and restarting from scratch, but I keep ending up with
>> >> something hung.
>> >>
>> >> Any ideas what is up, and, more importantly, what I should do to
>> >> resolve it?
>> >
>> > Have you used bitbake with the "--debug" option or run "ps axf" or
>> > similar to see which tasks or commands are hanging?
>> >
>> >> Ron Oakes
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> Life is like Linux - it never stands still.
>

