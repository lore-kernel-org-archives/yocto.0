Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFE57E00CE2; Fri, 13 Oct 2017 01:53:04 -0700 (PDT)
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
X-Greylist: delayed 332 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Oct 2017 01:53:03 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAA47E00CD1
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 01:53:03 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3yD1Yt2HTPz1qsgq;
	Fri, 13 Oct 2017 10:47:30 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3yD1Yt1SBqz1qql8;
	Fri, 13 Oct 2017 10:47:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id 7VUyoRkk4g-8; Fri, 13 Oct 2017 10:47:29 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Fri, 13 Oct 2017 10:47:29 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 96D964540515;
	Fri, 13 Oct 2017 10:47:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Zpj0hifNT0gz; Fri, 13 Oct 2017 10:47:26 +0200 (CEST)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id E27EA4540497;
	Fri, 13 Oct 2017 10:47:25 +0200 (CEST)
To: Ayoub Zaki <ayoub.zaki@embexus.com>,
	Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9de83734-99a4-580b-4306-746108cbdb9b@embexus.com>
	<18e01836-129a-0259-ff7a-1a7d21d1f380@rsi-elektrotechnik.de>
	<35e6c4b3-e48a-f2b6-b595-f1c6868e9b2a@embexus.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <5ce34bcf-e7d0-da58-49e5-5b0d9e69b3d9@denx.de>
Date: Fri, 13 Oct 2017 10:47:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <35e6c4b3-e48a-f2b6-b595-f1c6868e9b2a@embexus.com>
Subject: Re: Yocto Image with custom directory layout
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
X-List-Received-Date: Fri, 13 Oct 2017 08:53:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

On 12/10/2017 20:47, Ayoub Zaki wrote:
> Hi,
> 
> 
> On 12.10.2017 20:34, Josef Holzmayr wrote:
>> Hi
>>
>> On 12.10.2017 19:07, Ayoub Zaki wrote:
>>> Hi,
>>> I would like to generate an image that contains a custom directories
>>> layout for expl:
>>>
>>>
>>> foo/
>>> ├── bar1
>>> │   └── bar2
>>> │       ├── config
>>> │       └── data
>>> └── work
>>>      └── var
>>>          └── lib
>>>              ├── config
>>>              └── data
>>>
>>> It should contains only those directories an nothing else, is there
>>> anyway to achieve that ? without using ROOTFS_POSTPROCESS_COMMAND.
>>
>> Should be possible if your image installs only your specific recipes
>> that populate those directories. Means: no packagegroup-core-boot, no
>> base-passwd, no.... -> then nothing should bring along other directories.
> I tried that but it does pull other packages even if I set in my image:
> 
> IMAGE_FEATURES = ""
> IMAGE_LINGUAS = ""
> PACKAGE_INSTALL = "my-layout-recipe"
> 

It looks like you inherit "core-image" instead of just "image". I can
confirm that this work, I have this simple recipe:


# Copyright (C) 2017 Stefano Babic <sbabic@denx.de>
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "Image with user processes"
LICENSE = "CLOSED"
SECTION = "Application"

inherit image

IMAGE_INSTALL = " \
	projects-firmware \
        "

And project firmware has just the layout I want.

Regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

