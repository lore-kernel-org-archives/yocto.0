Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 59FC2E00348
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 12:08:20 -0800 (PST)
Received: (qmail 25342 invoked by uid 1003); 6 Dec 2012 20:08:19 -0000
Received: from unknown (HELO ?10.16.24.84?) (philip@opensdr.com@157.22.28.10)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	6 Dec 2012 20:08:19 -0000
Message-ID: <50C0FB32.6010308@balister.org>
Date: Thu, 06 Dec 2012 12:08:18 -0800
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Andreas Schweigstill <andreas@schweigstill.de>
References: <1354713685799908500@schweigstill.de>
	<50BF8FD4.2070207@balister.org>
	<1354798661905184500@schweigstill.de>
In-Reply-To: <1354798661905184500@schweigstill.de>
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
X-List-Received-Date: Thu, 06 Dec 2012 20:08:20 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/06/2012 04:57 AM, Andreas Schweigstill wrote:
> Hello!
>
> Am Mi, 12/05/2012 19:17, hat Philip Balister <philip@balister.org> geschrieben:
>> On 12/05/2012 05:21 AM, Andreas Schweigstill wrote:
>>> meta-zynq/recipes-kernel-linux-zynq contains the following lines:
>>> LINUX_VERSION ?= "3.5"
>>> LINUX_VERSION_EXTENSION ?= "-xilinx"
>>>
>>> How can I force Yocto to build kernel 3.5-xilinx?
>>
>> Urg, I'll have to take a look at that.
>
> After changing the order of BBLAYERS in build/conf/local.conf to meta, meta-zynq,
> meta-yocto, meta-yocto-bsp and using Hob to select MACHINE=zynq-zc702,
> base image=zc702-proto-image everything works fine. Now I get a proper toolchain
> for Cortex A9 and a kernel named zynq-zc702 3.5.0-14.3-build1-yocto-standard
> which is properly running on my ZC702 board.
>
>> Also, you'll need an updated fsbl in the BOOT.BIN file to work with the
>> later kernels. We should probably post one somewhere, although I wish
>> the fsbl license was a little less restrictive.
>
> I haven't built a BOOT.BIN file with Yocto based U-Boot yet. Instead I'm using
> U-Boot from Petalinux 12.9 which is configured to use the QSPI Flash to store its
> environment.
>
> Currently I boot from QSPI Flash, load kernel und DTB files via TFTP and use a
> root filesystem stored on a SD card. ;-)

Thanks for the feedback. Good luck with your evaluation. Let us know if 
you have anymore questions.

Philip

>
> Regards,
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

