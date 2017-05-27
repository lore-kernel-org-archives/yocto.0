Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B68B6E0085D; Fri, 26 May 2017 18:56:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.46 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B92FE0077F
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 18:56:47 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id y190so12551903vkc.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 18:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pIe8qt1ldeT1fzgYhpZhQP69PTYCOJQEtpy8icCMyA0=;
	b=bIMtSU9uIebVC94LzoXSFhCTWSP2iQ5TAXCJD2odAS+DkkvyTu7yaCeR8vfMeDYh7W
	ylZ2QDa/lv1iniWDHW1WHwFY4hQeKYnrk9qdGHGSsNqwiTAWTFhhUqjnIr9temyJgY8X
	n2aq+Sf156W7EZNOqKyFBJT+q5UqV+I1+fMXnNQ9+T4PCMy96+bjhOErZ2KgBQ/RZZ+n
	YS4j1D+EL6RGL332LIL5pllwkif1dWDHxu3X8jAjRI4iAHVZvPaftR4SgoCvYKlARj3M
	hwzH7FqGnGRCNSxHQwwePR6KCtisRQWB6PVS/VqyVK+yX/uDesshFQxr11E/QDKEalcV
	2hMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pIe8qt1ldeT1fzgYhpZhQP69PTYCOJQEtpy8icCMyA0=;
	b=APbpuhwTqIBHUxWAHjXIMfduy1VfAAizgLGwm6NtpFbycO8FvxlIAza3Gq9mtjJaET
	ML/gcOu557AB63PIP0pUwajs1d8MuwosjLyb5nwKSPZniCZA4n/D8mjBmfRKn2lWBB2r
	E60j1gu0JzBEXZcMbAixm5+yyM4443zoSMOGFx8iE8vJPfyUm7KZcvXAl26yVW3WYNJT
	cMJzWKiO5KdbGfo/h4AwaunBJ/iJQ1tjg8irljOU/i4nnVkwBhx9MdDRsj3mmkK0ZIgH
	uuG/NXQirHCOuQ3UXzg2ltHnldeASJnyAxJRLCuHe3HinJukbwUCxYlYTOrz4oLtEu6V
	4vrA==
X-Gm-Message-State: AODbwcBq6n3M9RffpVvyHd50YGpZBM2X67eWemt02rbJA8Kvp7de/p3i
	3uqM/8UXTxoidy2u5M3k+IfhHu7A+w==
X-Received: by 10.31.220.68 with SMTP id t65mr2162204vkg.145.1495850207121;
	Fri, 26 May 2017 18:56:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.26.13 with HTTP; Fri, 26 May 2017 18:56:46 -0700 (PDT)
In-Reply-To: <CAK18fxFoxtO_Q+aAJJi-UvwwzGHOEcyGm7BKn0PWSKXSg-Qx2Q@mail.gmail.com>
References: <CAK18fxHPsQ9XUZq1v3cZ0MymeNA9t+dUhcvtV==XTHF-i6RFnQ@mail.gmail.com>
	<CAMKF1sreUL-JNJ7jR-1enGtwyNQU0y+W2sCx1JWBs5E7kgT+8Q@mail.gmail.com>
	<CAK18fxFoxtO_Q+aAJJi-UvwwzGHOEcyGm7BKn0PWSKXSg-Qx2Q@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Sat, 27 May 2017 03:56:46 +0200
Message-ID: <CAEjjReL69UPmjxZbhDFV_nikM2PggSp39Ce5+jWfTbUjnz-Upw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Very strange issue where bitbake hangs at do_rootfs
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
X-List-Received-Date: Sat, 27 May 2017 01:56:50 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Have you tried to find on which syscall it hangs ?  sysdig or strace ?

Maybe it's issue with python subprocess, documentation mention that
subprocess can deadlock or hang with large data and no read from pipe
is done.

Br,
Chris Z

On Fri, May 26, 2017 at 11:35 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, May 26, 2017 at 5:19 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Fri, May 26, 2017 at 5:52 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> > Hello all,
>> >
>> > I moved recently on a new arch linux host and everything works fine with
>> > one
>> > exception: when I build a custom distribution based on morty with many
>> > packages including kernel-modules (beaglebone), the build system hangs
>> > without any details. I hooked into package_manager.py RPM install and
>> > streamed output from `process = subprocess.Popen(cmd.split(),
>> > stderr=subprocess.STDOUT, stdout=subprocess.PIPE)` and it seems that it
>> > hangs in different places every time. Output example:
>> >
>> > ---
>> >
>> > Result of kernel-module-industrialio-sw-trigger postinst: 0
>> > debug: Processing
>> > kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone in
>> >
>> > /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/beaglebone/kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b.beaglebone.rpm
>> > 1428:Installing kernel-module.. ########################################
>> > [
>> > 55%]
>> > Output from kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone:
>> > Executing kernel-module-lm8333 postinst with: /bin/sh
>> >
>> > /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///oe_install/tmp/rpm-tmp.76459
>> > 1
>> >
>> > # kernel-module-lm8333 - postinst
>> > #!/bin/sh
>> > if [ -z "$D" ]; then
>> >         depmod -a 4.4.55+
>> > else
>> >         # image.bbclass will call depmodwrapper after everything is
>> > installed,
>> >         # no need to do it here as well
>> >         :
>> > fi
>> > Result of kernel-module-lm8333 postinst: 0
>> > debug: Processing
>> > kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone in
>> >
>> > /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/beaglebone/kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b.beaglebone.rpm
>> > 1429:Installing kernel-module.. ########################################
>> > [
>> > 55%]
>> > Output from
>> > kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone:
>> > Executing kernel-module-tca8418-keypad postinst with: /bin/sh
>> >
>> > /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///oe_install/tmp/rpm-tmp.76459
>> > 1
>> >
>> > ---
>> >
>> > If I don't install kernel-modules build succeeds.
>> >
>> > Any hints on how to debug this further? I can't seem to find anything
>> > relevant in smart output.
>> >
>>
>> yeah rolling ditros are always intesting when you want to build fixed
>> releases from past.
>> one of things that helped me in past was to pin python3 to 3.5 but a
>> clean reinstall of arch
>> I got that problem solved automagically
>
>
> Downgraded to 3.5 and didn't help sadly.
>
> Regards,
> Andrei
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

