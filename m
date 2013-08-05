Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DECBE002F9
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 15:42:14 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c8DW80VQSz3hhbP;
	Tue,  6 Aug 2013 00:42:11 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c8DW734Zxzbbg6;
	Tue,  6 Aug 2013 00:42:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id EPGipjx6ESGp; Tue,  6 Aug 2013 00:42:10 +0200 (CEST)
X-Auth-Info: qMF87C7dXHi/URGYmySnJMqb3JLtZakFxQ9cjVCWjfw=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de [212.18.5.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Tue,  6 Aug 2013 00:42:10 +0200 (CEST)
Received: from p4FD1509C.dip0.t-ipconnect.de (p4FD1509C.dip0.t-ipconnect.de
	[79.209.80.156]) by webmail.mnet-online.de (Horde Framework) with HTTP; 
	Tue, 06 Aug 2013 00:42:10 +0200
Message-ID: <20130806004210.157716xdrzuzzjuo@webmail.mnet-online.de>
Date: Tue, 06 Aug 2013 00:42:10 +0200
From: lothar@denx.de
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <20130805114222.15220qh2lyd417dw@webmail.mnet-online.de>
	<7243158.LY4yQ1ssbD@helios>
	<20130805144104.17162h9fc56bibfk@webmail.mnet-online.de>
	<2759587.caFPE2Zfue@helios>
In-Reply-To: <2759587.caFPE2Zfue@helios>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.5)
Cc: yocto@yoctoproject.org
Subject: Re: how to build external firmware for kernel
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
X-List-Received-Date: Mon, 05 Aug 2013 22:42:16 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Zitat von Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Monday 05 August 2013 14:41:04 lothar@denx.de wrote:
>> How may I work with the STAGING_KERNEL_DIR, since I first run the
>> firmware.bb and then the kernel.bb. I think I did not understand well,
>> how I may achieve this. Do I need to install the firmware blob into
>> something like $STAGING_KERNEL_DIR/firmware? How may I proceed here,
>> could you please explain a bit more?
>
> Sorry, I misunderstood your original explanation - in that case you  
> cannot use
> STAGING_KERNEL_DIR because it will only exist after the kernel has  
> been built.
>
> It seems a bit odd that you'd need to build the firmware first and  
> then use that
> as an input to the kernel build - is it baking the firmware into the module
> instead of loading the firmware at runtime like most other drivers?
>
> Cheers,
> Paul
>
> --

Hi Paul,

I appologize, probably I did not explain it very well.

So, in brief, I need to perform these steps in the following order:
1) check out firmware source via git
2) call "make" (builds a firmware generator tool (native), AND then  
calls it automatically right away to generate the firmware blob still  
in the same "make" call)
3) place the firmware blob somewhere, where the kernel('s recipe) can  
access it
4) check out kernel source
5) configure kernel source, and set the firmware blob
6) compile the kernel

So it's not a kernel module that has to be compiled after having the  
kernel source. It needs to be compiled before the kernel, the kernel  
needs its binary as EXTRA_FIRMWARE.

Can you help me, how to perform this? Perhaps /usr/firmware works, but  
as I already mentioned I had just problems with it, that's why I  
thought it's easier to pass the binary somehow directly.. Perhaps  
another approach would be not to have a separate recipes, but to do  
step 1-3 within the kernel .bb file, but this has to be done by the  
native toolchain, while the kernel should not use the native toolchain  
of course.. Any ideas?

BR,
L


