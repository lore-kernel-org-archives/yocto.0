Return-Path: <tim.bird@am.sony.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD72E013A6
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 18:09:40 -0700 (PDT)
Received: from mail150-ch1-R.bigfish.com (10.43.68.235) by
	CH1EHSOBE005.bigfish.com (10.43.70.55) with Microsoft SMTP Server id
	14.1.225.23; Thu, 14 Jun 2012 01:08:33 +0000
Received: from mail150-ch1 (localhost [127.0.0.1])	by
	mail150-ch1-R.bigfish.com (Postfix) with ESMTP id 37DF73A0652;
	Thu, 14 Jun 2012 01:08:33 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.231; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail04v.am.sony.com; RD:mail04.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1202hzzz2fh2a8h668h839hd25hf0ah)
Received-SPF: pass (mail150-ch1: domain of am.sony.com designates
	160.33.194.231 as permitted sender) client-ip=160.33.194.231;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail04v.am.sony.com ; .am.sony.com ; 
Received: from mail150-ch1 (localhost.localdomain [127.0.0.1]) by mail150-ch1
	(MessageSwitch) id 1339636111463945_5508;
	Thu, 14 Jun 2012 01:08:31 +0000 (UTC)
Received: from CH1EHSMHS025.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail150-ch1.bigfish.com (Postfix) with ESMTP id
	6FC503C0070;	Thu, 14 Jun 2012 01:08:31 +0000 (UTC)
Received: from usculsndmail04v.am.sony.com (160.33.194.231) by
	CH1EHSMHS025.bigfish.com (10.43.70.25) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Thu, 14 Jun 2012 01:08:31 +0000
Received: from usculsndmail11v.am.sony.com (usculsndmail11v.am.sony.com
	[146.215.230.102])	by usculsndmail04v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5E19aVa020513
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 14 Jun 2012 01:09:36 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail2.sjc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail11v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5E19YNk019692
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 14 Jun 2012 01:09:35 GMT
Received: from [127.0.0.1] ([43.148.6.50])	by mail1x.sgo.in.sel.sony.com
	(Switch-3.4.2/Switch-3.4.2) with ESMTP id q5E19MMa002997;
	Thu, 14 Jun 2012 01:09:23 GMT
Message-ID: <4FD939BD.8090600@am.sony.com>
Date: Wed, 13 Jun 2012 18:09:17 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4FD93175.7070202@linux.intel.com>
In-Reply-To: <4FD93175.7070202@linux.intel.com>
X-OriginatorOrg: am.sony.com
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
X-List-Received-Date: Thu, 14 Jun 2012 01:09:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 6/13/2012 5:33 PM, Darren Hart wrote:
> For those of you using poky-tiny or are interested in building very very
> small systems, I would appreciate your thoughts here.
>
> Currently poky-tiny images will boot and run /bin/sh, which results in
> error messages to the console about being unable to open the tty and job
> control being disabled (this is a common problem, if not commonly
> understood).
>
> The shell must be session leader to open the tty, and the tty must not
> be /dev/console (it should be a vt or a physical tty like ttyS0), the
> tty is required for job control (handling signals, etc.).
>
> The Problem:
> poky-tiny should boot to a shell without error messages and have
> job-control.
>
> The Vision:
> The goals of poky-tiny are to be an initial starting point from which to
> build a distribution that does what you want, and NOTHING more.
>
> The Proposal:
> o Do not include the standard Busybox init
> o Do provide a basic /init script that can be easily modified
> o Do provide a basic shell
>    o Without init, this requires setsid and cttyhack to easily find the
>      right device
> o Do not provide inittab functionality
>
> I can accomplish this by updating busybox to include:
> CONFIG_SETSID=y
> CONFIG_CTTYHACK=y
>
> And providing a basic init script as follows:
>
> #!/bin/sh
> mount none -t proc /proc
> mount none -t sysfs /sys
> mkdir /dev/pts
> mount none -t devpts /dev/pts
> ifup lo
>
> # Become session leader and try to find a real tty (e.g. ttyS0)
> setsid cttyhack sh
>
> This results in a system that boots with the virtual filesystems
> mounted, the local network interface up, and a shell with job control
> running. Nothing else.
>
> Potential Problems:
> Should the script be /init (for initramfs images) or /sbin/init for
> images on block devices. Note that the default method of running
> poky-tiny is with an initramfs as it doesn't support any block devices
> by default.
>
> Adding services like dropbear to your image will not get started on boot
> as their init scripts will not be run. I'm OK with documenting this
> behavior as part of creating your own distribution based on tiny.
>
> If the shell crashes, or you exit, the kernel panics (because init returns).
>
> Thoughts/Comments/Criticism welcome.
>

This sounds like a great approach.  What I've found at Sony is that it's 
nice to
have a template for turning on individual services, that users can 
decide to enable or not.
You don't want to include everything under the sun, but it's nice to 
have a few basic
things spelled out (but disabled) so that users can easily enable them.

How about adding something like:
if [ -f /etc/rc.local ] ; then
  exec /etc/rc.local
fi

You could have this be as is, or the lines could be commented out.

Inside /etc/rc.local you have a bunch of commented-out lines for turning on
services like telnetd, dropbear, mounting debugfs, starting networking 
(ifup eth0),
etc.  If the user wants any of these individual items, they uncomment the
appropriate lines in /etc/rc.local.

IMHO, you DON'T want to create some fancy directory-based system like 
sysVinit
that automatically handles anything that could possibly be included.  But
having a couple of common cases that the user can easily enable is 
pretty handy.

Alternatively, you could have these commented-out lines in the init 
script itself.
This saves you an additional file in the rootfs, as well as the fork to exec
/etc/rc.local.  (I suppose you could also 'source' this, to avoid the fork.)

Just some ideas.
  -- Tim



