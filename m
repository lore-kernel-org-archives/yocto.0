Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F941E013A2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 06:35:38 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c4wcm0lw3z3hkG9;
	Wed, 31 Jul 2013 15:35:35 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c4wcl451tzbbjQ;
	Wed, 31 Jul 2013 15:35:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id aCkCVH5yl1zE; Wed, 31 Jul 2013 15:35:32 +0200 (CEST)
X-Auth-Info: /sejraPuGf8iI1oLHhlxtBuf1TqETYLWC4BQQsU0I5Q=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de [212.18.5.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Wed, 31 Jul 2013 15:35:32 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net
	(host-82-135-33-74.customer.m-online.net [82.135.33.74]) by
	webmail.mnet-online.de (Horde Framework) with HTTP; Wed, 31 Jul 2013
	15:35:32 +0200
Message-ID: <20130731153532.58872k5yyjqxrso4@webmail.mnet-online.de>
Date: Wed, 31 Jul 2013 15:35:32 +0200
From: lothar@denx.de
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <20130730180449.64971389c5lrpxdw@webmail.mnet-online.de>
	<1384790.3BX6RMkKI6@helios>
In-Reply-To: <1384790.3BX6RMkKI6@helios>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.5)
Cc: yocto@yoctoproject.org
Subject: Re: /lib/ld-linux.so.3: No such file or directory
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
X-List-Received-Date: Wed, 31 Jul 2013 13:35:40 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Zitat von Paul Eggleton <paul.eggleton@linux.intel.com>:

> Hi Lothar,
>
> On Tuesday 30 July 2013 18:04:49 lothar@denx.de wrote:
>> I'm writing a recipe firmware_HEAD.bb. The actions shall be checkout from
>> git, run "make", copy the result to ${D}/lib/firmware.
>>
>> DESCRIPTION = "external sdma-firmware blob"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM =
>> "file://sdma-gen-image.c;beginline=1;endline=19;md5=8db9f935666ba755af54af9d
>> 8611b857" PR = "r1"
>> SRC_URI = "git://git.pengutronix.de/git/imx/sdma-firmware.git/"
>> ## curr HEAD: "4aede1eb121e8199d33fe6697f4c91405086000a"
>> SRCREV = "4aede1eb121e8199d33fe6697f4c91405086000a"
>> S = "${WORKDIR}/git"
>> do_install(){
>>      install -d ${D}/lib/firmware
>> # TODO
>> }
>>
>>
>>
>> Actually an easy task, I thought. Checkout works fine, but the implicit make
>> fails, having /lib/ld-linux.so.3 already installed under ${sysroot}/lib.
>
> I'm not sure but it definitely sounds like it's looking on the host  
> rather than
> in the proper target sysroot. I'd suggest looking at other recipes that are
> makefile based; you should define your own do_compile and supply the  
> appropriate
> options to make (or more appropriately oe_runmake) within it.
>
>> $ MACHINE="m53evk" bitbake -b
>> /work/lothar/acme/meta-acme/recipes-kernel/sdma-firmware/sdma-firmware_HEAD.
>> bb -f
>> WARNING: Buildfile specified, dependencies will not be handled. If
>> this is not what you want, do not use -b / --buildfile.
>
> You should not use -b; if you do, anything you mention in DEPENDS won't be
> satisfied when it comes time. Use "bitbake recipename" instead of "bitbake -b
> path/to/recipename_version.bb".
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>

Hi,
  Thank you very much, I'll watch out for other recipes, then.  
Especially thank you for the advice to omit the '-b' option.

BR,
L


