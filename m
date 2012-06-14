Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8518E013A6
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 18:22:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2012 18:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165394443"
Received: from unknown (HELO envy.home) ([10.255.12.119])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2012 18:22:05 -0700
Message-ID: <4FD93C71.1080004@linux.intel.com>
Date: Wed, 13 Jun 2012 18:20:49 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <4FD93175.7070202@linux.intel.com> <4FD939BD.8090600@am.sony.com>
In-Reply-To: <4FD939BD.8090600@am.sony.com>
X-Enigmail-Version: 1.4.2
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Thu, 14 Jun 2012 01:22:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/13/2012 06:09 PM, Tim Bird wrote:
> On 6/13/2012 5:33 PM, Darren Hart wrote:
>> For those of you using poky-tiny or are interested in building very very
>> small systems, I would appreciate your thoughts here.
>>
>> Currently poky-tiny images will boot and run /bin/sh, which results in
>> error messages to the console about being unable to open the tty and job
>> control being disabled (this is a common problem, if not commonly
>> understood).
>>
>> The shell must be session leader to open the tty, and the tty must not
>> be /dev/console (it should be a vt or a physical tty like ttyS0), the
>> tty is required for job control (handling signals, etc.).
>>
>> The Problem:
>> poky-tiny should boot to a shell without error messages and have
>> job-control.
>>
>> The Vision:
>> The goals of poky-tiny are to be an initial starting point from which to
>> build a distribution that does what you want, and NOTHING more.
>>
>> The Proposal:
>> o Do not include the standard Busybox init
>> o Do provide a basic /init script that can be easily modified
>> o Do provide a basic shell
>>    o Without init, this requires setsid and cttyhack to easily find the
>>      right device
>> o Do not provide inittab functionality
>>
>> I can accomplish this by updating busybox to include:
>> CONFIG_SETSID=y
>> CONFIG_CTTYHACK=y
>>
>> And providing a basic init script as follows:
>>
>> #!/bin/sh
>> mount none -t proc /proc
>> mount none -t sysfs /sys
>> mkdir /dev/pts
>> mount none -t devpts /dev/pts
>> ifup lo
>>
>> # Become session leader and try to find a real tty (e.g. ttyS0)
>> setsid cttyhack sh
>>
>> This results in a system that boots with the virtual filesystems
>> mounted, the local network interface up, and a shell with job control
>> running. Nothing else.
>>
>> Potential Problems:
>> Should the script be /init (for initramfs images) or /sbin/init for
>> images on block devices. Note that the default method of running
>> poky-tiny is with an initramfs as it doesn't support any block devices
>> by default.
>>
>> Adding services like dropbear to your image will not get started on boot
>> as their init scripts will not be run. I'm OK with documenting this
>> behavior as part of creating your own distribution based on tiny.
>>
>> If the shell crashes, or you exit, the kernel panics (because init returns).
>>
>> Thoughts/Comments/Criticism welcome.
>>
> 
> This sounds like a great approach.  What I've found at Sony is that it's 
> nice to
> have a template for turning on individual services, that users can 
> decide to enable or not.
> You don't want to include everything under the sun, but it's nice to 
> have a few basic
> things spelled out (but disabled) so that users can easily enable them.
> 
> How about adding something like:
> if [ -f /etc/rc.local ] ; then
>   exec /etc/rc.local
> fi
> 
> You could have this be as is, or the lines could be commented out.
> 
> Inside /etc/rc.local you have a bunch of commented-out lines for turning on
> services like telnetd, dropbear, mounting debugfs, starting networking 
> (ifup eth0),
> etc.  If the user wants any of these individual items, they uncomment the
> appropriate lines in /etc/rc.local.
> 
> IMHO, you DON'T want to create some fancy directory-based system like 
> sysVinit
> that automatically handles anything that could possibly be included.  But
> having a couple of common cases that the user can easily enable is 
> pretty handy.
> 
> Alternatively, you could have these commented-out lines in the init 
> script itself.
> This saves you an additional file in the rootfs, as well as the fork to exec
> /etc/rc.local.  (I suppose you could also 'source' this, to avoid the fork.)
> 
> Just some ideas.

I like the rc.local idea as that makes it easily extendable without even
having to modify the original distro definition.

Excellent suggestions, thank you!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



