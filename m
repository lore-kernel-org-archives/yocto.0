Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D2F97E006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 10:17:57 -0800 (PST)
Received: (qmail 9294 invoked by uid 1003); 5 Dec 2012 18:17:57 -0000
Received: from unknown (HELO ?10.16.24.84?) (philip@opensdr.com@157.22.28.10)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	5 Dec 2012 18:17:57 -0000
Message-ID: <50BF8FD4.2070207@balister.org>
Date: Wed, 05 Dec 2012 10:17:56 -0800
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Andreas Schweigstill <andreas@schweigstill.de>
References: <1354713685799908500@schweigstill.de>
In-Reply-To: <1354713685799908500@schweigstill.de>
Cc: yocto@yoctoproject.org
Subject: Re: mail list for Xilinx Zynq platform?
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
X-List-Received-Date: Wed, 05 Dec 2012 18:17:58 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/05/2012 05:21 AM, Andreas Schweigstill wrote:
> Hello!
>
>> I personally have used Philip's meta-zynq layer to build a working u-boot and
>> linux kernel image using Yocto. It works really well.
>
> I have also tried to build a kernel and root filesystem for Zynq but the kernel
> gets stuck when booting, regardless if on the ZC702 board or on Qemu. I tried
> Poky denzil and Poky danny.
>
> Also the alternate meta-zynq layer from git.yoctoproject.org shows the same
> behaviour.
>
> These are the last console messages which I get:
> ## Booting kernel from Legacy Image at 01000000 ...
>     Image Name:   Linux-3.2.11-yocto-standard
>     Created:      2012-12-04  20:07:37 UTC
>     Image Type:   ARM Linux Kernel Image (uncompressed)
>     Data Size:    2997472 Bytes = 2.9 MiB
>     Load Address: 00008000
>     Entry Point:  00008000
>     Verifying Checksum ... OK
> ## Flattened Device Tree blob at 01a80000
>     Booting using the fdt blob at 0x1a80000
>     Loading Device Tree to 0eff8000, end 0efff185 ... OK
>     Loading Kernel Image ... OK
> OK
>     Loading Device Tree to 0efed000, end 0eff7185 ... OK
>
> Starting kernel ...
>
>
> Instead of using Linux kernel version 3.5-xilinx I always get
> Linux-3.2.11-yocto-standard which is obviously missing the
> Zynq patches.
>
> meta-zynq/recipes-kernel-linux-zynq contains the following lines:
> LINUX_VERSION ?= "3.5"
> LINUX_VERSION_EXTENSION ?= "-xilinx"
>
> How can I force Yocto to build kernel 3.5-xilinx?

Urg, I'll have to take a look at that.

Also, you'll need an updated fsbl in the BOOT.BIN file to work with the 
later kernels. We should probably post one somewhere, although I wish 
the fsbl license was a little less restrictive.

Philip


>
> With best regards,
> Andreas Schweigstill
>
> ​--
> Dipl.-Phys. Andreas Schweigstill
> Schweigstill IT | Embedded Systems
> Schauenburgerstraße 116, D-24118 Kiel, Germany
> Phone: (+49) 431 530354-35, Fax: (+49) 431 530354-36
> Mobile: (+49) 171 6921973, Web: http://www.schweigstill.de/
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

