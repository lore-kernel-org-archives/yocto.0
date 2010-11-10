Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36CA34C80B6B
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 07:58:11 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAADwA1d013768;
	Wed, 10 Nov 2010 05:58:10 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 10 Nov 2010 05:58:09 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 10 Nov 2010 05:58:09 -0800
Message-ID: <4CDAA4F0.1060802@windriver.com>
Date: Wed, 10 Nov 2010 08:58:08 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <414DA7D8-2E3E-4DEE-9C36-24EF976D7A99@kernel.crashing.org>
	<4CDAA03C.8090004@windriver.com>
In-Reply-To: <4CDAA03C.8090004@windriver.com>
X-OriginalArrivalTime: 10 Nov 2010 13:58:09.0873 (UTC)
	FILETIME=[4ED36410:01CB80DF]
Cc: yocto@yoctoproject.org
Subject: Re: TARGET_FPU for mpc8315e-rdb listed as SPE??
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
X-List-Received-Date: Wed, 10 Nov 2010 13:58:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-10 08:38 AM, Bruce Ashfield wrote:
> On 10-11-10 01:46 AM, Kumar Gala wrote:
>> Why does the meta/conf/machine/mpc8315e-rdb.conf list TARGET_FPU as
>> SPE. This isn't correct for an MPC8313 SoC.
>
> It isn't used at the moment, so we can safely
> ignore this.
>
> It was a hold over from when I initially created
> the BSP, and I've since changed it locally, but
> haven't sent the updated BSP yet.

To clarify on this point, the kernel configuration
is NOT using SPE for this, and I was attempting to
use the FPU setting to trigger some different gcc
flags during development the base of that test was
an e500 board, so the SPE setting leaked in, but is
unused.

At the moment, it is actually using soft-float, and
I had planned to submit a change to clarify that.

If there's another option, let me know and I'll
rebase my patches and change it again.

Cheers,

Bruce

>
> Cheers,
>
> Bruce
>
>>
>> - k
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


