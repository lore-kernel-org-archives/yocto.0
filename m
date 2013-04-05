Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A2D8E014AD
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 03:16:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 31E7EF811FC; Fri,  5 Apr 2013 04:16:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7DA34F811F9;
	Fri,  5 Apr 2013 04:16:25 -0600 (MDT)
Message-ID: <515EA47A.5070400@mlbassoc.com>
Date: Fri, 05 Apr 2013 04:16:26 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
In-Reply-To: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Apr 2013 10:16:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-04-05 03:08, Hans Beckérus wrote:
> Hi. In our configuration we do not have an on-board Ethernet device. It connected to the USB-host adapter.
> It seems that probing of such devices are done very late in the kernel boot-up which means it gets out of sync with the network init script(s)
> and the NIC thus has to be brought up manually after boot.
>
> ...
> usb 1-1: new high-speed USB device number 2 using xusbps-ehci
> hub 1-1:1.0: USB hub found
> hub 1-1:1.0: 4 ports detected
> VFS: Mounted root (ext2 filesystem) on device 1:0.
> devtmpfs: mounted
> Freeing init memory: 152K
> INIT: version 2.88 booting
> usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci
> Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file or directory
> bootlogd.
> Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
> INIT: Entering runlevel: 5
> Starting Dropbear SSH server: NET: Registered protocol family 10
> dropbear.
> Starting syslogd/klogd: done
> Stopping Bootlog daemon: bootlogd.
> asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4, ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
> ...
>
> Is there some way to configure a system through Yocto to handle this scenario?
>

I run exactly this setup on many different platforms with no issues
so it can definitely be done with Poky/Yocto.

What system (target) are you using?
What version of the metadata (Poky/Yocto) are you using?  master?  danny?  etc
How is your network device configured?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

