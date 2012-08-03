Return-Path: <tim.bird@am.sony.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe005.messaging.microsoft.com [213.199.154.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9C6DE0144B
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 16:47:50 -0700 (PDT)
Received: from mail16-db3-R.bigfish.com (10.3.81.246) by
	DB3EHSOBE005.bigfish.com (10.3.84.25) with Microsoft SMTP Server id
	14.1.225.23; Fri, 3 Aug 2012 23:47:49 +0000
Received: from mail16-db3 (localhost [127.0.0.1])	by mail16-db3-R.bigfish.com
	(Postfix) with ESMTP id A1C95120409	for <yocto@yoctoproject.org>;
	Fri,  3 Aug 2012 23:47:49 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.230; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail03v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1202hzzz2fh2a8h668h839h93fhd25hf0ah107ah)
Received-SPF: pass (mail16-db3: domain of am.sony.com designates
	160.33.194.230 as permitted sender) client-ip=160.33.194.230;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail03v.am.sony.com ; .am.sony.com ; 
Received: from mail16-db3 (localhost.localdomain [127.0.0.1]) by mail16-db3
	(MessageSwitch) id 1344037667397554_28528;
	Fri,  3 Aug 2012 23:47:47 +0000 (UTC)
Received: from DB3EHSMHS013.bigfish.com (unknown [10.3.81.228])	by
	mail16-db3.bigfish.com (Postfix) with ESMTP id 5EAC0260047	for
	<yocto@yoctoproject.org>; Fri,  3 Aug 2012 23:47:47 +0000 (UTC)
Received: from usculsndmail03v.am.sony.com (160.33.194.230) by
	DB3EHSMHS013.bigfish.com (10.3.87.113) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Fri, 3 Aug 2012 23:47:47 +0000
Received: from usculsndmail13v.am.sony.com (usculsndmail13v.am.sony.com
	[146.215.230.104])	by usculsndmail03v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q73NliNS008589
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 3 Aug 2012 23:47:44 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail3.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail13v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q73NlhrM013819
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 3 Aug 2012 23:47:43 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q73NlWi4014726;	Fri, 3 Aug 2012 23:47:32 GMT
Message-ID: <501C63BE.5070708@am.sony.com>
Date: Fri, 3 Aug 2012 16:50:22 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
In-Reply-To: <8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
X-OriginatorOrg: am.sony.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Fri, 03 Aug 2012 23:47:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 08/03/2012 03:05 PM, Elvis Dowson wrote:
> Hi,
> 
> On Aug 4, 2012, at 1:30 AM, Elvis Dowson wrote:
> 
>> I'll try to switch back to a non-static bash, and try booting the 
>> core-image-minimal filesystem once again.
> 
> Switching back to the core-image-default non-static bash version, didn't work. I 
> get no bash prompt, even through I specified init=/bin/sh for the kernel bootargs
> 
> zImage starting: loaded at 0x00800000 (sp: 0x00dacfb0)
> Allocating 0x540e0c bytes for kernel ...
> gunzipping (0x00000000 <- 0x0080f000:0x00a17ddd)...done 0x4235c0 bytes
> Attached initrd image at 0x00a18000-0x00dab775
> initrd head: 0x1f8b0808
> 
> Linux/PowerPC load: console=ttyS0,9600n8 ip=off root=/dev/ram rw rootwait 
> init=/bin/sh
> Finalizing device tree... flat tree at 0xdb90e0
>   PM: Adding info for No Bus:ttyv9
> [    0.478914] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> [    0.484189] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq = 20) is a 16550
> [    0.679634] console [ttyS0] enabled
> [    0.743646] brd: module loaded
> [    0.790371] loop: module loaded
> [    0.827695] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
> [    0.904387] xsysace 83600000.sysace: No CF in slot
> [    0.963434] Xilinx SystemACE device driver, major=254
> [    1.024322] xilinx_emaclite 81000000.ethernet: Device Tree Probing
> [    1.097851] xilinx_emaclite 81000000.ethernet: error registering MDIO bus
> [    1.178937] xilinx_emaclite 81000000.ethernet: MAC address is now 
> 00:0a:35:b7:78:00
> [    1.272553] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at 0x81000000 
> mapped to 0xD10A0000, irq=17
> [    1.387465] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
> [    1.456732] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped to 
> 0xd1036000, irq=22
> [    1.556112] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
> [    1.625786] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped to 
> 0xd1038000, irq=23
> [    1.726276] mousedev: PS/2 mouse device common for all mice
> [    1.793618] i2c /dev entries driver
> [    1.835429] Device Tree Probing 'i2c'
> [    1.879626] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=18
> [    1.957193] TCP cubic registered
> [    1.995099] NET: Registered protocol family 17
> [    2.790435] atkbd serio0: keyboard reset failed on xilinxps2/serio at 81480000
> [    3.274705] RAMDISK: gzip image found at block 0
> [    3.681850] atkbd serio1: Frame/parity error: 02
> [    3.858630] input: AT Raw Set 2 keyboard as 
> /devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
> [    4.242871] VFS: Mounted root (ext2 filesystem) on device 1:0.
> [    4.313049] Freeing unused kernel memory: 152k freed
> 
> What should I do now to debug this issue further?
> 
> I have disabled image-prelink by not including it in my local.conf as follows:
> 
> # Remove image-prelink for PowerPC 32-bit and 64-bit targets.
> USER_CLASSES ?= "buildstats image-mklibs"
> 
> Any thoughts on what I can try to do next, to narrow down the issue, with bash 
> working statically, but not when linked with shared libraries?

I haven't debugged a static vs. dynamic boot-time issue for some years, but here
are a few ideas off the top of my head.

First, use readelf or objdump to validate where the binary is expecting to load the
dynamic linker from (that is, what directory path).  Check that the linker and
all libraries are in the proper places (in the paths as specified in the ELF
headers for the program - bash in this case).

Second, try instrumenting (ie adding printks to) the loader path, and see if the kernel
knows what is failing.  The way dynamic linking works is that the kernel loads the
program image (ELF file), and treats the dynamic linker (ldlinux.so) as it's "interpreter".
If you're not seeing an attempt to load the interpreter, then something is going wrong.
You could instrument the kernel "open" path to see all the files that are being opened
during the boot.  ldlinux.so should be one of them.  The linker should then be trying
to load the other libraries needed by the program.  This should also result in open
calls (or possibly mmap calls).

Good luck.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


