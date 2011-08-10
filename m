Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81F22E011DA
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 21:28:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7A4SU50023034
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Aug 2011 21:28:30 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.214) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 9 Aug 2011 21:28:30 -0700
Message-ID: <4E4208EC.7050605@windriver.com>
Date: Wed, 10 Aug 2011 00:28:28 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <4E420695.4030804@linux.intel.com>
	<DFB04F62-E333-4697-9967-8DBE77F6420B@kernel.crashing.org>
In-Reply-To: <DFB04F62-E333-4697-9967-8DBE77F6420B@kernel.crashing.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: linux-yocto_3.0: pull powerpc compile fix for -0s in BOOTFLAGS
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
X-List-Received-Date: Wed, 10 Aug 2011 04:28:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-10 12:24 AM, Kumar Gala wrote:
>
> On Aug 9, 2011, at 11:18 PM, Darren Hart wrote:
>
>> Bruce,
>>
>> The following patch is needed for qemuppc and fsl-mpc8315e-rdb (same
>> reasons as before). Can you pull this in from the 2.6.37 yocto tree?
>>
>> commit 5ff609967ffe87c49d534d7861a7e0b150517726
>> Author: Bruce Ashfield<bruce.ashfield@windriver.com>
>> Date:   Thu Oct 14 16:38:00 2010 -0400
>>
>>     powerpc/boot: remove -Os from BOOTFLAGS
>>
>> Thanks,
>
> Before we do this I have a query about default toolchain?  I just posted a patch that should make this NOT needed if we utilize gcc-4.6
>
> So wondering what the feeling was about a fix to kernel tree needed for one version of toolchain and not another?

As long as it fixes one build (the 4.5 one), and doesn't beak other
toolchain versions. I'm typically ok with any patch of that nature.

At the time, this was the fastest thing to do to get the kernel
building with gcc 4.5, but we can absolutely update it with
something newer.

Cheers,

Bruce

>
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


