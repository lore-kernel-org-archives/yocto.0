Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BD75E0079D; Fri, 24 Aug 2018 00:58:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 312 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Aug 2018 00:58:40 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2802E00720
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 00:58:40 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 41xYS70Wbpz1qxQP;
	Fri, 24 Aug 2018 09:53:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 41xYS707Qzz1qrWV;
	Fri, 24 Aug 2018 09:53:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id k_kMU4UQnVx8; Fri, 24 Aug 2018 09:53:25 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Fri, 24 Aug 2018 09:53:25 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 5994345403BD;
	Fri, 24 Aug 2018 09:53:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id sUCmth-u20pk; Fri, 24 Aug 2018 09:53:22 +0200 (CEST)
Received: from [192.168.178.89] (stefano-MacBookPro.fritz.box [192.168.178.89])
	by babic.homelinux.org (Postfix) with ESMTPS id 8D4EE45402A8;
	Fri, 24 Aug 2018 09:53:22 +0200 (CEST)
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>, Stefano Babic <sbabic@denx.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Ross, Fedor" <fedor.ross@ifm.com>
References: <fc50e40975134a01920906aad4ab0e75@ifm.com>
	<ef914983-18be-fb83-c66c-0a4f143bcd3f@denx.de>
	<f843bc097fd44130b4e77f0f9f166190@ifm.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <64fc5455-4a5f-91fe-6e92-e0a5417479c2@denx.de>
Date: Fri, 24 Aug 2018 09:53:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <f843bc097fd44130b4e77f0f9f166190@ifm.com>
Cc: Marek Vasut <marex@denx.de>
Subject: Re: chromium is compiling but is not able to add in the image
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
X-List-Received-Date: Fri, 24 Aug 2018 07:58:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Kamal,

On 24/08/2018 08:24, Pandey, Kamal wrote:
> Thankyou very much for the response.
> core-image-minimal-pdm3  is a custom image made from proprietary meta-pdm3 layer.

I know, I am in this project....

> This layer is used to create images and packages for custom embedded device.
> I ve enabled x11 in conf/local.conf file.

No, you have to add it in DISTRO_FEATURES, too

> IMAGE_INSTALL_append = " x11  \
> 			         chromium \  
> 
> and yes that device has a mali GPU support.

You have not understood. The SOC has a mali GPU. But work for kernel
driver (Lima) and openGL is WIP. Ask Fedor/Marek for the current status
and if it makes sense some test. Chromium without GPU does not work.

Best regards,
Stefano Babic

> 
> -----Original Message-----
> From: Stefano Babic <sbabic@denx.de> 
> Sent: 23 August 2018 21:26
> To: Pandey, Kamal <Kamal.Pandey@ifm.com>
> Cc: Ross, Fedor <fedor.ross@ifm.com>; Barth, Steffen <steffen.barth@ifm.com>; Marek Vasut <marex@denx.de>
> Subject: Re: [yocto] chromium is compiling but is not able to add in the image
> 
> Hi Kamal,
> 
> (out of list):
> 
> I just seen your post to Yocto'sML...
> 
> On 21/08/2018 15:28, Pandey, Kamal wrote:
>> I tried adding chromium package via the meta-browser layer. It is 
>> compiling when I run */$ bitbake chromium/*/./ But when I run 
>> */$bitbake core-image-minimal-pdm3/*.
> 
> ..but I can understand that nobody has the small idea what
> core-image-minimal-pdm3 is !
> 
>> It’s not adding chromium to the image and throwing errors as shown 
>> below:
>>
>>  
>>
>> Loading cache: 100%
>> |#####################################################################
>> |#####################################################################
>> |##########################################################|
>> Time: 0:00:00
>>
>> Loaded 3249 entries from dependency cache.
>>
>> Parsing recipes: 100%
>> |#####################################################################
>> |#####################################################################
>> |########################################################|
>> Time: 0:00:02
>>
>> Parsing of 2368 .bb files complete (2352 cached, 16 parsed). 3260 
>> targets, 99 skipped, 10 masked, 0 errors.
>>
>> WARNING: No recipes available for:
>>
>>  
>> /home/iepl/work/yocto_build/meta-xilinx/meta-xilinx-contrib/recipes-ke
>> rnel/linux/linux-xlnx_2018.1.bbappend
>>
>>  
>> /home/iepl/work/yocto_build/meta-pdm3/meta-ifm-pdm3-bsp/recipes-extend
>> ed/images/swupdate-gui-image.bbappend
>>
>>  
>> /home/iepl/work/yocto_build/meta-pdm3/meta-ifm-pdm3-bsp/recipes-suppor
>> t/rescuegui/rescuegui_%.bbappend
>>
>>  
>> /home/iepl/work/yocto_build/meta-pdm3/meta-ifm-pdm3-bsp/recipes-suppor
>> t/swupdate/swupdate_%.bbappend
>>
>>  
>> /home/iepl/work/yocto_build/meta-pdm3/meta-ifm-pdm3/recipes-mono/mono/
>> mono-native_5.4.1.6.bbappend
>>
> 
> Your bblayers.conf is maybe a mess. They are solved in meta-ifm-pdm3 and meta-ifm-pdm3-bsp
> 
>> NOTE: Resolving any missing task queue dependencies
>>
>> ERROR: Nothing RPROVIDES 'chromium' (but 
>> /home/iepl/work/yocto_build/meta-pdm3/meta-ifm-pdm3-bsp/recipes-core/i
>> mages/core-image-minimal-pdm3.bb
>> RDEPENDS on or otherwise requires it)
>>
>> NOTE: Runtime target 'chromium' is unbuildable, removing...
>>
>> Missing or unbuildable dependency chain was: ['chromium']
>>
>> ERROR: Required build target 'core-image-minimal-pdm3' has no 
>> buildable providers.
>>
>> Missing or unbuildable dependency chain was: 
>> ['core-image-minimal-pdm3', 'chromium']
>>
>>  
>>
>> Summary: There was 1 WARNING message shown.
>>
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>>
>> The bblayers.conf file is taken care off.
>>
>> I’ve added the line
>>
>> */IMAGE_INSTALL_append = “ chromium”/* in the local.conf file along 
>> with
>>  */LICENSE_FLAG_WHITELIST = /**/﻿/**//*
>>
>> */" commercial_libav commercial_x264 commercial/**/"/*
>>
>> Apart from that Firefox is able to compile and it’s been added to the 
>> image. Can somebody tell me what is causing this issue.
>>
>>  
>>
> 
> Apart of that, are you trying to get in running with something provided by Marek for Mali (GPU support) ? I just warn that Chromium without GPU is very slow and pratically unusable. Even with GPU support it looks quite slow...
> 
> Are you enable x11 ? As far as I know, chromium is running just on top of x11 - I added Marek in CC that can sugest something else.
> 
> Best regards,
> Stefano Babic
> 
> 
> --
> =====================================================================
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de =====================================================================
> 

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

