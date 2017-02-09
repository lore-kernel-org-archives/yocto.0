Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64C6CE00A3B; Thu,  9 Feb 2017 04:16:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08ABE009F6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 04:16:20 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3vJxrJ46qqz3hnVn;
	Thu,  9 Feb 2017 13:16:16 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3vJxrJ3hvNzvkLL;
	Thu,  9 Feb 2017 13:16:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 0OvcDzIwAZBc; Thu,  9 Feb 2017 13:16:13 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Thu,  9 Feb 2017 13:16:13 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 935364540471;
	Thu,  9 Feb 2017 13:13:39 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Rpq_luX-gA38; Thu,  9 Feb 2017 13:13:35 +0100 (CET)
Received: from [192.168.17.18] (unknown [192.168.17.18])
	by babic.homelinux.org (Postfix) with ESMTPS id 45C4545402EC;
	Thu,  9 Feb 2017 13:13:35 +0100 (CET)
To: Andreas Enbacka <andreas.enbacka@gasera.fi>,
	'Stefano Babic' <sbabic@denx.de>
References: <003801d282b5$52f253b0$f8d6fb10$@gasera.fi>
	<a91fc09a-38a3-b1c5-e6cc-e4acc9d2d19a@denx.de>
	<005201d282c5$81a61880$84f24980$@gasera.fi>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <3822e357-57ad-7ef6-6b1b-1dfc9eb13842@denx.de>
Date: Thu, 9 Feb 2017 13:16:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <005201d282c5$81a61880$84f24980$@gasera.fi>
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
X-List-Received-Date: Thu, 09 Feb 2017 12:16:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Andreas,

On 09/02/2017 12:13, Andreas Enbacka wrote:
> Hello,
> 
> Thanks for the info. I tried to download the fido branch of the
> meta-swupdate layer, and executed bitbake -c menuconfig swupdate. I got the
> following error output (using Kontron SMARC sAMX6i machine config):
> 
> ERROR: Nothing PROVIDES 'u-boot-fw-utils' (but
> /home/andreas/yocto1.8/fsl-community-bsp/sources/meta-swupdate/recipes-suppo
> rt/swupdate/swupdate_git.bb DEPENDS on or otherwise requires it)
> ERROR: u-boot-fw-utils was skipped: Either UBOOT_MACHINE or UBOOT_CONFIG
> must be set in the smarc-samx6i machine configuration.
> 
> ERROR: Required build target 'swupdate' has no buildable providers.
> Missing or unbuildable dependency chain was: ['swupdate', 'u-boot-fw-utils']
> 
> Seems to be some issue with building u-boot-fw-utils?
> 

Old branches like fido have fixes dependencies in DEPENDS. I have
implemented in b794e0ef8adccaa70b05463d52d3fd49f0917bb6 a way to add
DEPENDS checking defconfig, and dropping what is not required.

You can drop u-boot-fw-utils from DEPENDS in your custom meta-swupdate
or try applying (I have not tested on fido) the mentioned commit, and if
it works, we can merge it also in this old "fido".

Best regards,
Stefano Babic


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

