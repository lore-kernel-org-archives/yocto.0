Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D37B84C80287
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 12:20:35 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA4HKZM5023232
	for <yocto@yoctoproject.org>; Thu, 4 Nov 2010 10:20:35 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 10:20:35 -0700
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 10:20:34 -0700
Message-ID: <4CD2EB61.2090502@windriver.com>
Date: Thu, 04 Nov 2010 12:20:33 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com><4CD1849F.6010303@windriver.com>
	<AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com>
In-Reply-To: <AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com>
X-OriginalArrivalTime: 04 Nov 2010 17:20:35.0161 (UTC)
	FILETIME=[9780C490:01CB7C44]
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
X-List-Received-Date: Thu, 04 Nov 2010 17:20:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/4/10 8:53 AM, Leon Woestenberg wrote:
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
>
> I added e500v2 support to OpenEmbedded more than one year ago and have
> not seen issues yet in userspace GCC.
> Recently been playing with SPE which also ran fine:
> http://www.sidebranch.nl/spe-apu
>
> Regards,

I'm not sure we have all of the pieces in place yet in the toolchain.

My quick looking of my own e500v1 & e500v2 support includes both libc patches 
and compiler patches.

Just an FYI.. the compiler flags for e500v1:

-mcpu=8540 -mfloat-gprs=single -mspe=yes -mabi=spe

and for e500v2:

-mcpu=8548 -mfloat-gprs=double -mspe=yes -mabi=spe

Neither of those would be compatible with the existing "ppc" packaging arch.  We 
will need to generate at least one new packaging arch type, likely 2 (one for 
each).  Maybe called ppc_spe or something similar?

The key thing is that each of these cpu's has not only additional SPE 
instructions, but also additional registers, specific to those instructions, to 
pass values from function to function.  It's not just using the PPC soft-float ABI..

--Mark

