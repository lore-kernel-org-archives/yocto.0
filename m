Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D78A2E009A0; Thu, 26 Jan 2017 22:28:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.187 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F2FEE00992
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 22:28:09 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue001
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MCUXh-1cg2YX18bJ-00995J;
	Fri, 27 Jan 2017 07:28:04 +0100
From: <colin.helliwell@ln-systems.com>
To: "'Khem Raj'" <raj.khem@gmail.com>,
	<yocto@yoctoproject.org>
References: <123e01d277df$9629cd60$c27d6820$@ln-systems.com>
	<c4394a67-c5ef-6dee-039f-6801b0bbe9bb@gmail.com>
In-Reply-To: <c4394a67-c5ef-6dee-039f-6801b0bbe9bb@gmail.com>
Date: Fri, 27 Jan 2017 06:28:03 -0000
Organization: LN Systems Limited
Message-ID: <000201d27866$83fb7da0$8bf278e0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJzLXaG43/wsQkn47E4tf5Tdsf9VwDIHJ4uoAQw6mA=
X-Provags-ID: V03:K0:gyJSjQiPfIoEWbijKVB+q2VQiqjhz5yY9jE8IWCl5cHkcM45bT9
	OHqP25V75xSOOBxqP4tBcuKAFuNUl6NG0tl7Rlrl9BxGhLzgxOB392xIHi8oMLsgPBeoHTl
	6clhL7ayF8Pk8L4cao/Zqg74TXbldKoN2ddT+JfeUD0UNHXeEVfob7rnGK3WlfALZ19paBN
	awjLoNRXiZJf5gvloJfRg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:zz9uy4lZ4Xo=:OAhu1DRD6xlkpZApV0iQsv
	WJL9ufNSxrnbCuGa0ZMuGuWIeVaHt/ubzQ+wtFCt/zoHLkKzAH1YjzLHRT1XeqgWIDnaBPhPO
	dqpRVIlwCcPXEmbULSADpOyZryP74eI23F/onsgnxiy0xEbUcd0ls86m/ZnehPYDzOOeL1bss
	2YDrOljX3TOUBtsVOBePgu8VPTzkPtAskS+YY8xshrcdnJ4P1bykubIZALB2+WVl9mb6gbQ/H
	XXeCrdw3LbqRTX4pax5TWVdBUl4QwE2gTELtm14HwBOZjax5SJaLrWO7i/NsYCQjZJyJKLULG
	DPwU85ZuigQfJJ+iUGXApg461a5kSbXRtCH8zK9hcjE3ipZuqYFC+dV8Uki93u5q67w7ixdGi
	+GUhTIjEwyEvVDQgYvHzwLSBDz8ItA122prSC7mR/KLJtckRymH2nCkS/kXnZzJW/gXoYxhX3
	LWR41OGJFjIX4zJeNvpX5nD87mwkGoVDnJDF/tjlgTAoYDrNAcUVVx/ixjBZyngD0eBujQ4cU
	M3UFcCYHjdEsezf7YbwaRhw8EWlf7XFi1I2K1yBk8Na+LjHjHyjsvWlkMN9bybh7iG6DZX/yq
	uqClm6JKtrwmiMzoXiVMq5TYQqgpNHLEOhhpJcZF1rX4zyUK6+x8aV4T/1lDEtPy2gKOyzQ6T
	s7WEau6j3t2JmiGTg0S2670kH5qG/ziLpUOL64GVRKXQvNDL6T4/AZz1CL8Hl0QoYqQhDh4y2
	YbJ0JnYKoTVNz+Mv
Subject: Re: QEMU with host USB serial
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Jan 2017 06:28:14 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Hi,
That gives:

Continuing with the following parameters:
KERNEL:
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-
64/bzImage-qemux86-64.bin]
ROOTFS:
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-
64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4]
FSTYPE: [ext4]
Setting up tap interface under sudo
[sudo] password for colin:
Acquiring lockfile for tap0...
Interrupt character is '^]'
-net nic,model=virtio -net tap,vlan=0,ifname=tap0,script=no,downscript=no
-cpu core2duo -drive
file=/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemu
x86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=virtio,forma
t=raw -show-cursor -usb -usbdevice wacom-tablet -vga vmware   -nographic
-serial stdio  -m 256
Running qemu-system-x86_64...
/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/sysroots/x86_64-linux/u
sr/bin/qemu-system-x86_64 -kernel
/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-6
4/bzImage-qemux86-64.bin -net nic,model=virtio -net
tap,vlan=0,ifname=tap0,script=no,downscript=no -cpu core2duo -drive
file=/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemu
x86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=virtio,forma
t=raw -show-cursor -usb -usbdevice wacom-tablet -vga vmware -no-reboot
-nographic -serial stdio -m 256 -serial null --append "vga=0
uvesafb.mode_option=640x480-32 root=/dev/vda rw mem=256M
ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 rootfstype=ext4
console=ttyS0 console=ttyS0"
QEMU 2.4.0 monitor - type 'help' for more information
(qemu) qemu-system-x86_64: -serial stdio: cannot use stdio by multiple
character devices
Set 'tap0' nonpersistent
Releasing lockfile of preconfigured tap device 'tap0'


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Khem Raj
Sent: 27 January 2017 02:10
To: yocto@yoctoproject.org
Subject: Re: [yocto] QEMU with host USB serial

On 1/26/17 6:22 AM, colin.helliwell@ln-systems.com wrote:
> I'm investigating using qemu to give us some test capability, for 
> which we need to use the host's serial devices.
> 
> I have a qemu build which boots up fine; I'm trying to give it access 
> to the host USB. To keep it simple(r), I've seen mention of FTDI's 
> device
> (0403:6001) in the qemu source so that's what I've plugged in. I've 
> done a 'chmod me:me' on the relevant /dev/bus/usb/xxx/yyy node.
> 
>  
> 
> I can't though figure out what options I should be passing to runqemu 
> to hook this in. I daresay I may need bootparams too, but am first 
> just trying to get past 'qemuparams'.
> 
> As a starting point, I'm trying things like
> 
>     runqemu qemux86-64 nographic qemuparams="-usbdevice serial"

can you try with

runqemu qemux86-64 nographic serial

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


