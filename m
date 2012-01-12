Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 002BEE0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:00:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0CG0qr9026373
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jan 2012 08:00:52 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 12 Jan 2012 08:00:52 -0800
Message-ID: <4F0F03AB.1010808@windriver.com>
Date: Thu, 12 Jan 2012 11:00:43 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
	<CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
In-Reply-To: <CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
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
X-List-Received-Date: Thu, 12 Jan 2012 16:00:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-12 10:21 AM, Brian Hutchinson wrote:
> Yet another follow up.  I finally found my C3 Beagleboard and the
> default kernel built off master yesterday works on that platform too.
>
> I was able to do another build with the tips you guys gave and it
> looks like it is picking up the kernel from my local git repo now.  I
> did the "calibrate" example and while I couldn't see the printk's due
> to the silent boot being turned on somehow, uname -a was different
> than the default image .... mine is now:
>
> root@beagleboard:~# uname -a
> Linux beagleboard 3.0.14-yocto-standard+ #1 PREEMPT Thu Jan 12
> 08:45:10 EST 2012 armv7l GNU/Linux
>
> And just for sanity, I made another copy of my bare clone and verified
> that I pushed the "calibrate" changes correctly.
>
> So it looks like I'm good now thanks to your help!
>
> Do I have to do a cleanall every time I'm finished pushing changes
> back to my local kernel repo?

The bitbake AUTOREV code should take care of updating the clone
of your local repo in downloads/git2. I take it that this isn't
happening ?

>
> Is there a document that gives clues as to how to setup a local u-boot
> repo for making changes to it?  Is is simply changing the u-boot
> recipe SRC_URI to use my local u-boot git repo in
> poky/meda/recipes-bsp/u-boot or is it more involved than that?  Is
> there a u-boot dev layer like the poky-extras/meta-kernel-dev?

It should be (largely) as simple as that. We could create something
simple and throw it in with the meta-kernel-dev layer if there's any
interest in adding it.

Cheers,

Bruce

>
> Regards,
>
> Brian


