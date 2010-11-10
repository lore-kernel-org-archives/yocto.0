Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EAD7A4C80044
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 07:41:00 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAADewtr011173;
	Wed, 10 Nov 2010 05:40:58 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 10 Nov 2010 05:40:58 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 10 Nov 2010 05:40:58 -0800
Message-ID: <4CDAA0E9.7010001@windriver.com>
Date: Wed, 10 Nov 2010 08:40:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRnJlaXRhcw==?= <joaohf@gmail.com>
References: <AANLkTimr0Vm+kdDzCiJ07nOTZLgJDDC+DvNNwpgZ72xz@mail.gmail.com>
In-Reply-To: <AANLkTimr0Vm+kdDzCiJ07nOTZLgJDDC+DvNNwpgZ72xz@mail.gmail.com>
X-OriginalArrivalTime: 10 Nov 2010 13:40:58.0775 (UTC)
	FILETIME=[E83E5270:01CB80DC]
Cc: yocto@yoctoproject.org
Subject: Re: two layers: hardware and distro.
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
X-List-Received-Date: Wed, 10 Nov 2010 13:41:01 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10-11-10 06:41 AM, João Henrique Freitas wrote:
> Hi,
>
> I am novice yocto user.
>
> My target is create a BSP to my hardware+application. Is Yocto a
> suitable project to do it?
>
> I want to create two layers:
>
> bsp-myhardware: linux kernel, firmware, specific hardware configuration
> bsp-myapplication: linux distro with all software need. Ex: net-snmp,
> lksctp (the target is telecom applications)
>
> Currently yocto does not have many recipes that I need. No problem, I
> can get from OE. We use kernel 2.6.22 and I presume that I need a
> recipe to it and put inside bsp-myhardware, right?

Any interest in moving to a newer/different kernel ? The
supported kernel for yocto is at 2.6.34 and I'll have a
-dev tree tracking 2.6.37 shortly.

My interest is getting more BSPs using the same kernel
version so we can leverage the common set of issues,
bug fixes, CVEs, etc. It also helps me streamline the
BSP bootstrapping process, which is a primary focus of
mine at the moment.

Bruce

>
>
> Thanks.
>


