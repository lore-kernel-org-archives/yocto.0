Return-Path: <b.hutchman@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DE15E0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 07:22:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaaa14 with SMTP id a14so277767eaa.35
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 07:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JcX56Me5EsymFwF6OPCfG0q+4B6C4FZ9IAfVfQXJRro=;
	b=aL6gsqnD/1IXuWxmRXnZ0iqL3zBae42Mpei1W1DXrFXRpqsF8A128sFXfDMmnU2T3M
	2Q9jT3/QenrsPBgLzlMvMEh2XgaUOo5PQp0uKfWTV2W25jxdwa5Ql2+zIc2jNfXVdpGT
	Yr54L4gJQe4hPgGrBeZoi9GohJcBlN+Edj+wU=
MIME-Version: 1.0
Received: by 10.205.120.147 with SMTP id fy19mr1270502bkc.49.1326381719993;
	Thu, 12 Jan 2012 07:21:59 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Thu, 12 Jan 2012 07:21:59 -0800 (PST)
In-Reply-To: <CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
Date: Thu, 12 Jan 2012 10:21:59 -0500
Message-ID: <CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Joshua Lock <josh@linux.intel.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jan 2012 15:22:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

Yet another follow up.  I finally found my C3 Beagleboard and the
default kernel built off master yesterday works on that platform too.

I was able to do another build with the tips you guys gave and it
looks like it is picking up the kernel from my local git repo now.  I
did the "calibrate" example and while I couldn't see the printk's due
to the silent boot being turned on somehow, uname -a was different
than the default image .... mine is now:

root@beagleboard:~# uname -a
Linux beagleboard 3.0.14-yocto-standard+ #1 PREEMPT Thu Jan 12
08:45:10 EST 2012 armv7l GNU/Linux

And just for sanity, I made another copy of my bare clone and verified
that I pushed the "calibrate" changes correctly.

So it looks like I'm good now thanks to your help!

Do I have to do a cleanall every time I'm finished pushing changes
back to my local kernel repo?

Is there a document that gives clues as to how to setup a local u-boot
repo for making changes to it?  Is is simply changing the u-boot
recipe SRC_URI to use my local u-boot git repo in
poky/meda/recipes-bsp/u-boot or is it more involved than that?  Is
there a u-boot dev layer like the poky-extras/meta-kernel-dev?

Regards,

Brian

