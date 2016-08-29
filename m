Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45054E00F10; Mon, 29 Aug 2016 02:05:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAECBE00EF4
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 02:05:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u7T95Yk2027399
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 29 Aug 2016 02:05:34 -0700
Received: from [128.224.162.240] (128.224.162.240) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 29 Aug 2016 02:05:33 -0700
To: TinTin Naing <TinTin.Naing@sa.wpgholdings.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <E17C4B92FA172C41AE0FFEDBB04DAD7407A206EA8AB8@SASGCLUSMAIL.wpgholdings.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <fac94d3f-10a3-9825-67b3-c50263b2ad33@windriver.com>
Date: Mon, 29 Aug 2016 17:05:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <E17C4B92FA172C41AE0FFEDBB04DAD7407A206EA8AB8@SASGCLUSMAIL.wpgholdings.com>
Subject: Re: Build Host packags for Yocto project.
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
X-List-Received-Date: Mon, 29 Aug 2016 09:05:41 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit


Hi TinTin,

On 08/29/2016 12:03 PM, TinTin Naing wrote:
> Hi!
>
> I am very new to Yocto project.
>
> I am trying to get installed all necessary Build Host packages following the
> guide lines in “Yocto Project Quick Start Guide”.
>
> But gcc-multilib and libsdl1.2-dev are not installed as below.
>
> Can anyone advise how to get those two packages installed? I am using Ubuntu
> linux on VM BOX.
>
>
>
> 20160829_115315.jpg

For this error, different YP version supports different host, you can:

$ find poky/ -name 'poky.conf'

And then check SANITY_TESTED_DISTROS, if you use one of them, it should be
pretty easy to setup the build.

>
>
>
>
>
> Can anyone advise on the following questions:
>
> (1)    In order to build image for Freescale i.MX6 processor, how much minimum
> size of RAM is required?

We don't have exactly data on this, this depends on parallel builds, at
minimum, I think that 2GB would be OK, but it would be very slow.

>
> (2)    Should I use dedicated Linux Host machine? Or , using VM Box is OK?

VM Box is OK, but you need set more processors and memory, the more the faster.

>
> (3)    Which machine is better? 64-bit or 32-bit?

64bit.

// Robert

>
>
>
>
>
> TIN TIN NAING
>
> TSBD (SINGAPORE)
>
> WPG(SA) PTE LTD.
>
>
>
>
>

