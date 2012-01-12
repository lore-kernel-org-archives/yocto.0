Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC87EE0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 07:57:30 -0800 (PST)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 0BA7926A3F
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 15:22:31 +0000 (GMT)
Message-ID: <4F0F02BA.4000008@communistcode.co.uk>
Date: Thu, 12 Jan 2012 15:56:42 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
	<CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
In-Reply-To: <CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
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
X-List-Received-Date: Thu, 12 Jan 2012 15:57:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/12 15:21, Brian Hutchinson wrote:
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
>
> Is there a document that gives clues as to how to setup a local u-boot
> repo for making changes to it?  Is is simply changing the u-boot
> recipe SRC_URI to use my local u-boot git repo in
> poky/meda/recipes-bsp/u-boot or is it more involved than that?  Is
> there a u-boot dev layer like the poky-extras/meta-kernel-dev?
>
> Regards,
>
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Brian,

What image are you building, as I cannot get core-image-minimal to boot 
at all on my xM. I am currently trying to fix a hosed sd card (who knows 
what happened to it!) and then I will see if it has made any difference.

Cheers,
Jack.

