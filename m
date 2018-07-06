Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5011DE010BE; Fri,  6 Jul 2018 05:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED48E00AD8
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 05:58:55 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id i12-v6so23275682oik.2
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 05:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oaLhjR8eEvnIjHlYpJ0Jl9PLh0p6ZjNUV3O68pKdqiA=;
	b=y+5ewE/2hkMtrR/NyghNiOpoA7yBhnsjfxwULynvLZ9XbNFUDb15TE5CvBxGbl8PeY
	8IG7SBpa0/wnSZiXoY38j3ykiJTKKFxBBnEEF7g3PXGg60QpMCi6mf3Zwo4iejXWOx1O
	efA4coO2qqWnPikrhwneQ0t9Jw8W0GqML1/bqs3o0x3jkbLfwm9oQ8r4kJhv9LP576+F
	HvAS+dkETV/imqq9XxqsQIEKOJ8Ya4garYL6+/svHZg/J8Zi9qez7euoxry+dxdJ32ns
	7G8bxNL3NEqm/0190TXd2gkCX8YIpzvZTthGDiOC5t/zQ0K/DwTZg2Aiqg3SIoZvq72H
	hyiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oaLhjR8eEvnIjHlYpJ0Jl9PLh0p6ZjNUV3O68pKdqiA=;
	b=G6OheoqupE/nE1TFY9pQ87NgbhjoIlGDWLdoE8/xN4M/O2axQmKCZTgj/B1UdtkcJ9
	sb/X0Pk/oaidXJpqTyAdNPXs+Pe1BiCrOAqGQ5tYAldndhI6EVKMFXI3jL+eFyCWVM1y
	Ht6wM+Wu70jO581yuBM9s2XBIjrKH0Huzv4ZI82GTTSqkXsWOq0c+apVja8RTR/nhs+r
	AntMBlVVTPmP+ljOb7/jjl/KnoOuUMS3ySlAKZlrOlGG4Nvp9MjxxO6h1wIZABsa2i2e
	DMPIOtm8zEKSOgWN8w+4TO8aUKk1wmpzqqcB+srbKqgrzxRCpBKoxDtMxH+eFt0CfTH1
	K6lg==
X-Gm-Message-State: APt69E1/YY5VC7UbW2eCLVwwtnvKTIfnFHilbc6zkuAFB/8pZP8EmZER
	fy7yV5vLbJk7RuzvACAMS0w9RANqv9b+828ZYiF61g==
X-Google-Smtp-Source: AAOMgpcscuh+rxaui6kJ1urHwnEZD/j+ZSLKF+E7ApIrEIGEXnXLzpiZF8GyE3HGT7kb7rZ/YyHJ7M7t2Q86Xn61j98=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr12100390oig.245.1530881935509; 
	Fri, 06 Jul 2018 05:58:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 05:58:34 -0700 (PDT)
In-Reply-To: <CAGKr=yfs7shznSGNcpGz9vJbwXhHr8XAPNuhafsBgjpFPxkfOQ@mail.gmail.com>
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
	<CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
	<CAGKr=yfs7shznSGNcpGz9vJbwXhHr8XAPNuhafsBgjpFPxkfOQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Jul 2018 13:58:34 +0100
Message-ID: <CAJTo0LZTbW7RRUt1rA62VxdwitR9Xac5KrBbuSLtdx5reHrdVQ@mail.gmail.com>
To: Oliver Westermann <owestermann@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Fri, 06 Jul 2018 12:58:57 -0000
Content-Type: text/plain; charset="UTF-8"

What. You've got inherit setuptools3 so it should be using our own
python3 and have setuptools present. This makes no sense. :/

Can  you share the recipe you're building?

Ross

On 6 July 2018 at 13:56, Oliver Westermann <owestermann@gmail.com> wrote:
> Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross
> <ross.burton@intel.com>:
>>
>> That's very odd.  I'd suggest maybe something really weird happened,
>> what happens if you bitbake -cclean python3-pillow ; bitbake
>> python3-pillow?
>
>
> It fails with another error *dudum*
>
> ERROR: python3-pillow-5.2.0-r0 do_compile: python3 setup.py build_ext
> execution failed.
> ERROR: python3-pillow-5.2.0-r0 do_compile: Function failed: do_compile (log
> file is located at
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328)
> ERROR: Logfile of failure stored in:
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Traceback (most recent call last):
> |   File "setup.py", line 22, in <module>
> |     from setuptools import Extension, setup
> | ImportError: No module named 'setuptools'
> | ERROR: python3 setup.py build_ext execution failed.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328)
>
> Olli
>
> Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross
> <ross.burton@intel.com>:
>>
>> On 6 July 2018 at 13:32, Oliver Westermann <owestermann@gmail.com> wrote:
>> >  This does not seem to work as expected. With option 1) and 2) it fails
>> > in
>> > do_compile:
>> >
>> > | DEBUG: Executing shell function do_compile
>> > |
>> >
>> > /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
>> > 112:
>> >
>> > /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
>> >
>> > /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
>> > not found
>> > | ERROR: python3 setup.py build_ext execution failed.
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Function failed: do_compile (log file is located at
>> >
>> > /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)
>>
>> That's very odd.  I'd suggest maybe something really weird happened,
>> what happens if you bitbake -cclean python3-pillow ; bitbake
>> python3-pillow?
>>
>> Ross

