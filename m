Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C4CBE009F6; Thu,  9 Feb 2017 03:13:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.211.207.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.eteinen.fi (smtp1.eteinen.fi [194.211.207.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1540E006C6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 03:13:20 -0800 (PST)
Received: from syi-ogw2-997.syi.inet.fi ([176.72.243.229] helo=LenovoPC)
	by smtp1.eteinen.fi with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
	(Exim 4.82) (envelope-from <andreas.enbacka@gasera.fi>)
	id 1cbmf5-0005aA-Pv; Thu, 09 Feb 2017 13:13:15 +0200
From: "Andreas Enbacka" <andreas.enbacka@gasera.fi>
To: "'Stefano Babic'" <sbabic@denx.de>
References: <003801d282b5$52f253b0$f8d6fb10$@gasera.fi>
	<a91fc09a-38a3-b1c5-e6cc-e4acc9d2d19a@denx.de>
In-Reply-To: <a91fc09a-38a3-b1c5-e6cc-e4acc9d2d19a@denx.de>
Date: Thu, 9 Feb 2017 13:13:13 +0200
Message-ID: <005201d282c5$81a61880$84f24980$@gasera.fi>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIc0M4xedoo4wYDCwtta3HX3jN6wAIUyYjLoLtCjLA=
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 09 Feb 2017 11:13:23 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: fi

Hello,

Thanks for the info. I tried to download the fido branch of the
meta-swupdate layer, and executed bitbake -c menuconfig swupdate. I got the
following error output (using Kontron SMARC sAMX6i machine config):

ERROR: Nothing PROVIDES 'u-boot-fw-utils' (but
/home/andreas/yocto1.8/fsl-community-bsp/sources/meta-swupdate/recipes-suppo
rt/swupdate/swupdate_git.bb DEPENDS on or otherwise requires it)
ERROR: u-boot-fw-utils was skipped: Either UBOOT_MACHINE or UBOOT_CONFIG
must be set in the smarc-samx6i machine configuration.

ERROR: Required build target 'swupdate' has no buildable providers.
Missing or unbuildable dependency chain was: ['swupdate', 'u-boot-fw-utils']

Seems to be some issue with building u-boot-fw-utils?

//Andreas



-----Original Message-----
From: Stefano Babic [mailto:sbabic@denx.de] 
Sent: 9. helmikuutata 2017 11:59
To: Andreas Enbacka <andreas.enbacka@gasera.fi>; yocto@yoctoproject.org
Subject: Re: [yocto] meta-swupdate layer with precompiled uboot

Hi Andreas,

On 09/02/2017 10:17, Andreas Enbacka wrote:
> Hello,
> 
>  
> 
> I am looking into using your custom meta-swupate with our current 
> Yocto
> 1.8.1 (fido) based image.

Please take a look - I know from ML that there is people still using fido
and they pushed patches to this branch, but I merge new things just into
-master, -morty and -krogoth.

> However, as we are using Kontron SMARC sAMX6i for our platform, 
> Kontron supplies a pre-compiled uBoot. Is it possible to use 
> meta-swupdate
> 
> to some extent without uBoot support,

Yes - if you do not touch the environment, you can disable U-Boot support
running "bitbake -c menuconfig swupdate"

> or is it possible to get it to
> work without compiling uBoot as well?

It should work, if you disable U-Boot the libubootenv library should not be
linked.

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


