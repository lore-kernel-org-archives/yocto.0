Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD9C7E009EA; Thu,  9 Feb 2017 01:59:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A2FE006C6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 01:59:20 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3vJtpG363tz3hlhh;
	Thu,  9 Feb 2017 10:59:18 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3vJtpG1PfszvkW4;
	Thu,  9 Feb 2017 10:59:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id UTlnXuKRBknP; Thu,  9 Feb 2017 10:59:17 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Thu,  9 Feb 2017 10:59:17 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id B72C84540471;
	Thu,  9 Feb 2017 10:56:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 9Tlf2U_COJS0; Thu,  9 Feb 2017 10:56:41 +0100 (CET)
Received: from [192.168.17.18] (unknown [192.168.17.18])
	by babic.homelinux.org (Postfix) with ESMTPS id 2216B45402EC;
	Thu,  9 Feb 2017 10:56:40 +0100 (CET)
To: Andreas Enbacka <andreas.enbacka@gasera.fi>, yocto@yoctoproject.org
References: <003801d282b5$52f253b0$f8d6fb10$@gasera.fi>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <a91fc09a-38a3-b1c5-e6cc-e4acc9d2d19a@denx.de>
Date: Thu, 9 Feb 2017 10:59:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <003801d282b5$52f253b0$f8d6fb10$@gasera.fi>
Subject: Re: meta-swupdate layer with precompiled uboot
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
X-List-Received-Date: Thu, 09 Feb 2017 09:59:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Andreas,

On 09/02/2017 10:17, Andreas Enbacka wrote:
> Hello,
> 
>  
> 
> I am looking into using your custom meta-swupate with our current Yocto
> 1.8.1 (fido) based image.

Please take a look - I know from ML that there is people still using
fido and they pushed patches to this branch, but I merge new things just
into -master, -morty and -krogoth.

> However, as we are using Kontron SMARC sAMX6i
> for our platform, Kontron supplies a pre-compiled uBoot. Is it possible
> to use meta-swupdate
> 
> to some extent without uBoot support,

Yes - if you do not touch the environment, you can disable U-Boot
support running "bitbake -c menuconfig swupdate"

> or is it possible to get it to
> work without compiling uBoot as well?

It should work, if you disable U-Boot the libubootenv library should not
be linked.

> Any information would be greatly
> appreciated.
> 
>  

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

