Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98603E0070C
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 14:57:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q43Lvih5027076
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 May 2012 14:57:44 -0700 (PDT)
Received: from [128.224.23.120] (128.224.23.120) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 3 May 2012 14:57:44 -0700
Message-ID: <4FA2FF55.3010202@windriver.com>
Date: Thu, 3 May 2012 17:57:41 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <4064BB91-B82E-4D59-B0B6-A21FC9733C0C@gmail.com>
	<E6B74C60-DDCA-4C71-BE97-3DFF81257C34@gmail.com>
In-Reply-To: <E6B74C60-DDCA-4C71-BE97-3DFF81257C34@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to specify a machine defconfig for a linux recipe
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
X-List-Received-Date: Thu, 03 May 2012 21:57:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-03 05:42 PM, Elvis Dowson wrote:
> Hi,
>
> On May 3, 2012, at 9:55 PM, Elvis Dowson wrote:
>
>> How can I specify a machine defconfig for a linux recipe?
>>
>> For example, if I set
>>
>> # kernel provider
>> PREFERRED_PROVIDER_virtual/kernel = "linux-omap3"
>>
>> and try to build my machine, I get the following errors:
>>
>> ERROR: Function failed: Fetcher failure for URL: 'file://defconfig'. Unable to fetch URL from any source.
>> NOTE: package linux-omap3-3.2-r0: task do_fetch: Failed
>> ERROR: Task 125 (/tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, do_fetch) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 304 tasks of which 302 didn't need to be rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>   /tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, do_fetch
>
> I solved this one.
>
> Turns out, since I defined a new machine called overo-fire-chestnut43, I had to also create a folder called overo-fire-chestnut43 to hold the defconfig file as follows:
>
> meta-gumstix/recipes-kernel/linux/linux-omap3/overo-fire-chestnut43/defconfig
>
> I recall, the trend was to move away from user supplied defconfigs, and have it get generated automatically by the build process, and then specify some hints. Is there any example of how I can modify the existing meta-gumstix or any other meta-layer, to get the defconfig to get generated automatically?

Are you thinking about the linux-yocto config fragment support ?
Or maybe something else ? If you were thinking about the fragments,
it would only replace your defconfigs directly when you use a linux-yocto
kernel tree (and it's included meta branch with configuration frags).
In that scenario, you only put your board specific fragments on the end,
and let the rest be constructed.

When I return home next week, I will have some patches for 1.3 that make
the fragments apply more easily to any git repository, but in either
case (1.2 or 1.3), you'd still need to build up a series of fragments
outside the tree, or migrate to linux-yocto* for maxium re-use.

Cheers,

Bruce

>
> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


