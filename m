Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15184E0086F; Fri, 30 Jan 2015 07:50:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E06D9E002F9
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 07:50:35 -0800 (PST)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id 35A3920D15D6;
	Fri, 30 Jan 2015 15:50:34 +0000 (UTC)
Message-ID: <54CBA848.6080102@mindchasers.com>
Date: Fri, 30 Jan 2015 10:50:32 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: amruuta ghatge <amusghatge@gmail.com>, yocto@yoctoproject.org
References: <CA+dzM_QFCqJLce1eOfNXGhE1M8AedrsWa00CZue7n1Zxw010Mg@mail.gmail.com>
In-Reply-To: <CA+dzM_QFCqJLce1eOfNXGhE1M8AedrsWa00CZue7n1Zxw010Mg@mail.gmail.com>
Subject: Re: SPR issue while booting qemu for POWER PC ppce500v2
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
X-List-Received-Date: Fri, 30 Jan 2015 15:50:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2015 06:20 AM, amruuta ghatge wrote:
>
> Hello,
>
> I am trying to perform LTP testing for POWER ppce500v2.
>
> I used the following rfs and kernel image for testing the LTP test
> prefix [cross build for ppce500ve using ppce500v2 custom toolchain] in
> QEMU system mode.
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3
>
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin
>
> When configured for '-M ppce500 -cpu e500v2' it gave me the following error,
>
> $ <path-sysroots>qemu-system-ppc -kernel
> vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin -net
> nic,model=pcnet -net tap,vlan=0,ifname=tap0,script=no,downscript=no -cpu
> e500v2 -M ppce500 -hda
> <path-qemuppc>core-image-base-qemuppc-20150112233527.rootfs.ext3
> -no-reboot -show-cursor -no-reboot -nographic -m 512 --append
> "root=/dev/hda rw console=ttyS0 console=tty
> ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=512M console=ttyS0"
>
> Trying to write invalid spr 536 (0x218) 000034c0


Maybe this will help - I just looked at both the E500 (includes V2) and 
E5500 reference manuals.  I couldn't find the definition of an SPR 536. 
  Could SPR 536 be specific to a particular SOC, or maybe it's just a 
typo in the code somewhere?

>
> Any pointers or inputs/suggestions will be highly appreciated.
>
> Regards,
>
> Amruta!!!
>
>
>


