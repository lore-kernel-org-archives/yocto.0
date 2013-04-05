Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F3A7E014DE
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 06:59:39 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 43E13F811FE; Fri,  5 Apr 2013 07:59:39 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0E258F811FC;
	Fri,  5 Apr 2013 07:59:38 -0600 (MDT)
Message-ID: <515ED8CA.60601@mlbassoc.com>
Date: Fri, 05 Apr 2013 07:59:38 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<515EA47A.5070400@mlbassoc.com>
	<CAFyqS9q3zWuKN+YK_HqGfb-JPHBN1+LpR+ZcYVbg95a8PZY4Dg@mail.gmail.com>
	<515EC823.1050703@mlbassoc.com>
	<CAFyqS9p+jUqGKmiJpaL2RGGc7RPpbbUMwo8zgySA-fDr8HyZOw@mail.gmail.com>
	<515ED061.8060403@mlbassoc.com> <515ED14E.7010102@mlbassoc.com>
	<CAFyqS9rR-vb3K8DGrcp=cFwRt2mTQRTQ=cYoJZ3g6AFzhMUqEw@mail.gmail.com>
In-Reply-To: <CAFyqS9rR-vb3K8DGrcp=cFwRt2mTQRTQ=cYoJZ3g6AFzhMUqEw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: USB Ethernet problems
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
X-List-Received-Date: Fri, 05 Apr 2013 13:59:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-04-05 07:50, Hans Beckérus wrote:
>
>
> On Fri, Apr 5, 2013 at 3:27 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2013-04-05 07:23, Gary Thomas wrote:
>
>         On 2013-04-05 06:57, Hans Beckérus wrote:
>
>
>
>             On Fri, Apr 5, 2013 at 2:48 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> wrote:
>
>                  On 2013-04-05 06:38, Hans Beckérus wrote:
>
>
>
>                      On Fri, Apr 5, 2013 at 12:16 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>             <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
>
>                           On 2013-04-05 03:08, Hans Beckérus wrote:
>
>                               Hi. In our configuration we do not have an on-board Ethernet device. It connected to the USB-host adapter.
>                               It seems that probing of such devices are done very late in the kernel boot-up which means it gets out of sync with the network init script(s)
>                               and the NIC thus has to be brought up manually after boot.
>
>                               ...
>                               usb 1-1: new high-speed USB device number 2 using xusbps-ehci
>                               hub 1-1:1.0: USB hub found
>                               hub 1-1:1.0: 4 ports detected
>                               VFS: Mounted root (ext2 filesystem) on device 1:0.
>                               devtmpfs: mounted
>                               Freeing init memory: 152K
>                               INIT: version 2.88 booting
>                               usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci
>                               Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file or directory
>                               bootlogd.
>                               Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
>                               INIT: Entering runlevel: 5
>                               Starting Dropbear SSH server: NET: Registered protocol family 10
>                               dropbear.
>                               Starting syslogd/klogd: done
>                               Stopping Bootlog daemon: bootlogd.
>                               asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4, ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
>                               ...
>
>                               Is there some way to configure a system through Yocto to handle this scenario?
>
>
>                           I run exactly this setup on many different platforms with no issues
>                           so it can definitely be done with Poky/Yocto.
>
>                           What system (target) are you using?
>                           What version of the metadata (Poky/Yocto) are you using?  master?  danny?  etc
>                           How is your network device configured?
>
>                      I am on branch master.
>                      My network device is *not* configured. That is the whole point/?problem?. The kernel knowns nothing about the NIC at boot.
>                      It is not detected until it first detects the USB 2.0 host adapter. Then after a few moments the NIC is probed and eth0 becomes available through the ASIX
>             driver. But its
>                      too late,
>                      the /etc/init.d/networking is already done trying ifup :(
>                      Is there some configuration on network level I can do to fix this? Right now I have an ugly patch in /etc/init.d/networking that spins until eth0 comes up. It
>             solves the
>             sync
>                      issue, but also requires some sort of timeout to not get stuck forever if the device is never inserted :(
>
>
>                  Is your ethernet driver compiled in or a kernel module?
>
>                  I'm using a compiled in driver (the same one BTW) and it works fine.
>
>
>             It is compiled into the kernel. If you look at boot log I sent in the initial mail you can see that the actual ASIX device (D-Link DUB-E100) is detected much later than
>             the host
>             adapter :( How is it in your case?
>             Maybe it is the actual device that is not responding quickly enough? Are you pre-configuring anything in your bootargs prepared from U-Boot for eth?
>
>
>         No, I don't do anything special at all.  My boot log is attached.
>         You can see that the interface (on the USB) is found quite early.
>         That said, the system works fine even if I plug it in later on.
>
>         You still did not show us your '/etc/network/interfaces' file.
>         Mine contains these lines which make it handle the network device
>         coming and going:
>             # Wired interface (on optional board)
>             auto eth0
>             iface eth0 inet dhcp
>
>
> That is what I have. I use whatever default poky gave me ;)
> But looking at your log makes me wonder if your system simply are running a lot more other stuff causing networking to be delayed enough for the ASIX device to be probed before
> /etc/init.d/networking is executed?
> Also, this
> [    1.999420]  gadget: Ethernet Gadget, version: Memorial Day 2008
> [    2.005798]  gadget: g_ether ready
> I have not added USB gadget interface support for Ethernet in my kernel. Do I really need it? I don't think that the ASIX is using that interface, is it not using the old classic
> USB device modell?

No, this is only for OTG support which is not needed for you to use
the ASIX device.

As for the timing, maybe I've just been very lucky :-)  I can see that
if the device isn't present when the system runs 'ifup eth0' (or the
equivalent) you'll have a problem.  That's what connman is for - I don't
use it, but it might help you out.

>
>
>     Sorry for the extra noise in the log - I didn't realize that it
>     was still on while I was checking the /etc/network/interfaces file...
>
> No problem ;)
>
> Hans
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

