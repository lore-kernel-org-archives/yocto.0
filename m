Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 733B2E0156E
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 05:46:21 -0700 (PDT)
Received: from frontend3.mail.m-online.net (frontend3.mail.intern.m-online.net
	[192.168.6.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c8bF74hhsz3hhxm;
	Tue,  6 Aug 2013 14:46:19 +0200 (CEST)
Received: from localhost (dynscan3.mnet-online.de [192.168.6.84])
	by mail.m-online.net (Postfix) with ESMTP id 3c8bF721PLzbbbw;
	Tue,  6 Aug 2013 14:46:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.6.180])
	by localhost (dynscan3.mail.m-online.net [192.168.6.84]) (amavisd-new,
	port 10024)
	with ESMTP id hN0tV8KZMKKi; Tue,  6 Aug 2013 14:46:18 +0200 (CEST)
X-Auth-Info: srH+sIPQlOTzMMJe65I9NT/XfmsNd6a8ne7o23cP5mk=
Received: from webmail.mnet-online.de (unknown [62.245.181.162])
	by mail.mnet-online.de (Postfix) with ESMTPA;
	Tue,  6 Aug 2013 14:46:18 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Tue, 06 Aug 2013 12:45:48 +0000
MIME-Version: 1.0
Date: Tue, 06 Aug 2013 14:45:48 +0200
From: lothar@denx.de
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2759587.caFPE2Zfue@helios>
References: <20130805114222.15220qh2lyd417dw@webmail.mnet-online.de>
	<7243158.LY4yQ1ssbD@helios>
	<20130805144104.17162h9fc56bibfk@webmail.mnet-online.de>
	<2759587.caFPE2Zfue@helios>
Message-ID: <423b625a2c7da2c4bedd262c2c6848a6@denx.de>
X-Sender: lothar@denx.de
User-Agent: Roundcube Webmail/0.9.2
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
X-List-Received-Date: Tue, 06 Aug 2013 12:46:26 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 2013-08-05 16:38, schrieb Paul Eggleton:
> On Monday 05 August 2013 14:41:04 lothar@denx.de wrote:
>> How may I work with the STAGING_KERNEL_DIR, since I first run the
>> firmware.bb and then the kernel.bb. I think I did not understand well,
>> how I may achieve this. Do I need to install the firmware blob into
>> something like $STAGING_KERNEL_DIR/firmware? How may I proceed here,
>> could you please explain a bit more?
> 
> Sorry, I misunderstood your original explanation - in that case you 
> cannot use
> STAGING_KERNEL_DIR because it will only exist after the kernel has been 
> built.
> 
> It seems a bit odd that you'd need to build the firmware first and
> then use that
> as an input to the kernel build - is it baking the firmware into the 
> module
> instead of loading the firmware at runtime like most other drivers?
> 
> Cheers,
> Paul

Hi,

I think I found a solution to my issue myself, at least it works out. I 
don't
know if it is nice.

Rethinking about the problem, and playing around with the information of 
the
answer Paul gave me I did the following modifications.


## in firmware.bb now I do the following
(...)
do_install(){
     install -d ${base_libdir}/firmware/imx/sdma || die "something wrong 
with firmware path"
     install -m 755 sdma-imx53.bin 
${base_libdir}/firmware/imx/sdma/sdma-imx53.bin
}


## in kernel.bb
(...)
DEPENDS = "firmware-native"
do_configure_prepend(){
     ## set option to use the firmware
     echo 'CONFIG_EXTRA_FIRMWARE="imx/sdma/sdma-imx53.bin"' >> 
${WORKDIR}/defconfig

     ## fetch the firmware blob
     cp -arv ${STAGING_DIR_NATIVE}/lib/firmware/imx ${S}/firmware/ || die 
"no sdma-firmware found"
}

then the kernel compilation works just perfectly

BR,
L


