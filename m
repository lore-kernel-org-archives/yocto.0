Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7ED724C80044
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 09:29:50 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA4ETmNP016983;
	Thu, 4 Nov 2010 07:29:48 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 07:29:47 -0700
Received: from [147.11.233.120] ([147.11.233.120]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 07:29:47 -0700
Message-ID: <4CD2C35A.1050807@windriver.com>
Date: Thu, 04 Nov 2010 10:29:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Leon Woestenberg <leon.woestenberg@gmail.com>
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com><4CD1849F.6010303@windriver.com>
	<AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com>
In-Reply-To: <AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com>
X-OriginalArrivalTime: 04 Nov 2010 14:29:47.0970 (UTC)
	FILETIME=[BBB38220:01CB7C2C]
Cc: yocto@yoctoproject.org
Subject: Re: ppc e500v2 support?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 14:29:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-04 09:53 AM, Leon Woestenberg wrote:
> Hello Bruce,
>
> On Wed, Nov 3, 2010 at 4:49 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> On 10-11-03 11:34 AM, Frans Meulenbroeks wrote:
>>>
>>> I'm trying to add my powerpc board to yocto (as a test). This board
>>> mpc8536ds has an e500v2 core. It works under OE (MACHINE =
>>
>> When doing the initial freescale board work, I ran into
>> similar (same) problems with userspace (and gcc), and
>> ended up backing off to a more generic optimization level
>> to get things working. So there are a definitely few things
>> to do. I was experimenting with FPU settings, but haven't
>> gone back to look again.
>>
> Was combo did you see problems with?

It was particular to the mpc8315e config.

>
> I added e500v2 support to OpenEmbedded more than one year ago and have
> not seen issues yet in userspace GCC.
> Recently been playing with SPE which also ran fine:
> http://www.sidebranch.nl/spe-apu

Runtime on the target is fine, since this is all well known
and working (we've had SPE/e500/e500v2 BSPs working for
quite some time), the issue was specific to -Os and gcc 4.5
bootstrap building.

These have all largely been resolved now, and a minor kernel
patch has the powerpc kernel boot code building and working,
and cleanups can happen in our post yocto 0.9 efforts.

Cheers,

Bruce

>
> Regards,


