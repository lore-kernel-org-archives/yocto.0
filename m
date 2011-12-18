Return-Path: <SRS0=YEu808=66=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout17.eigbox.net (bosmailout17.eigbox.net [66.96.188.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F580E00306
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2011 11:56:53 -0800 (PST)
Received: from bosmailscan20.eigbox.net ([10.20.15.20])
	by bosmailout17.eigbox.net with esmtp (Exim) id 1RcMqq-0003yR-7a
	for yocto@yoctoproject.org; Sun, 18 Dec 2011 14:56:52 -0500
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan20.eigbox.net with esmtp (Exim) id 1RcMqq-0005M7-0I
	for yocto@yoctoproject.org; Sun, 18 Dec 2011 14:56:52 -0500
Received: from bosauthsmtp12.eigbox.net ([10.20.18.12])
	by bosimpout02.eigbox.net with NO UCE
	id Ajws1i0030FdZ9W01jwsN2; Sun, 18 Dec 2011 14:56:52 -0500
X-EN-OrigOutIP: 10.20.18.12
X-EN-IMPSID: Ajws1i0030FdZ9W01jwsN2
Received: from pool-108-11-46-58.atclnj.east.verizon.net ([108.11.46.58]
	helo=[192.168.1.3]) by bosauthsmtp12.eigbox.net with esmtpa (Exim)
	id 1RcMqp-0004r3-TZ
	for yocto@yoctoproject.org; Sun, 18 Dec 2011 14:56:52 -0500
Message-ID: <4EEE4581.7070700@mindchasers.com>
Date: Sun, 18 Dec 2011 14:56:49 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.23) Gecko/20110922 Thunderbird/3.1.15
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4ECAF89E.1030505@mindchasers.com>
	<4ECC2718.50008@linux.intel.com>	<4ECD4CF8.4020005@linux.intel.com>
	<CAMKF1spQGcQM9NwTrHyntYMmZByS0ztkqUGUC6=3sZOztvqWBw@mail.gmail.com>
In-Reply-To: <CAMKF1spQGcQM9NwTrHyntYMmZByS0ztkqUGUC6=3sZOztvqWBw@mail.gmail.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.11.46.58
X-EN-OrigHost: pool-108-11-46-58.atclnj.east.verizon.net
Subject: Re: Atom netbook recommendation?
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
X-List-Received-Date: Sun, 18 Dec 2011 19:56:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/23/2011 02:51 PM, Khem Raj wrote:
> On Wed, Nov 23, 2011 at 11:43 AM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> We also have things working on the Toshiba NB305. The atom-pc machine
>>
>
> FWIW I have asus eepc here and it works great with yocto/oe-core/meta-intel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Thanks for the feedback everyone.  I now have a dual core Atom N570 
netbook (Acer Aspire One model).

It didn't boot the hddimage off of a usb stick (SysLinux halted - I'll 
figure out why later), but I have been having fun booting modified yocto 
standard Linux images using grub.  I put a 2.5" 60 G OCZ SSD in it along 
with loading Ubuntu.  It can build poky minimal from scratch in a few 
hours and rebuilds the kernel fairly quick (should get downright good 
once I upgrade the RAM from 1G).   At this point, I'm having fun playing 
with the kernel and the initial ram disk with a custom init.

And the nice thing with the SSD installed is that it boots Ubuntu in a 
few seconds for when I want to make mods to my poky image.  It makes for 
a very cool little development system!

Bob



