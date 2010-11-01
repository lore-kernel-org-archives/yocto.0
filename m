Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FCB14C80132
	for <yocto@yoctoproject.org>; Sun, 31 Oct 2010 22:11:26 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA13BOmE013721;
	Sun, 31 Oct 2010 20:11:24 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 31 Oct 2010 20:11:23 -0700
Received: from bruce-ashfields-macbook.local ([128.224.143.15]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 31 Oct 2010 20:11:23 -0700
Message-ID: <4CCE2FD8.7010006@windriver.com>
Date: Sun, 31 Oct 2010 23:11:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
	<1288455628.13568.13.camel@elmorro>
In-Reply-To: <1288455628.13568.13.camel@elmorro>
X-OriginalArrivalTime: 01 Nov 2010 03:11:24.0120 (UTC)
	FILETIME=[7713A580:01CB7972]
Cc: yocto@yoctoproject.org, tiagoprn <tiagoprn@gmail.com>
Subject: Re: yocto tools on a nokia n800
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
X-List-Received-Date: Mon, 01 Nov 2010 03:11:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-10-30 12:20 PM, Tom Zanussi wrote:
> On Fri, 2010-10-29 at 04:50 -0700, tiagoprn wrote:
>>   Hello everyone!
>>
>>   I have a question. I have just read about the yocto/poky projects and
>> here I am with a hope. :)
>>
>>   I have a nokia n800 (an internet tablet abandoned by Nokia just about
>> 2 years ago).
>>
>>   With poky/yocto project tools, is it possible to install a linux
>> toolchain with X and the touchscreen/wireless components working, for
>> an example, in a SD Card and boot my device into it?
>>
>>   I'm anxious for that.
>>
>
> Hi,
>
> It looks like yocto already has support for the n800 - there's this
> entry in local.conf:
>
> # Other supported machines
> .
> .
>
>
>
>
>
>
> #MACHINE ?= "nokia800"
>
>
> and see this section in README.hardware:
>
> 'Nokia 770/N800/N810 Internet Tablets (nokia770 and nokia800)'
>
> which says:
>
> "The nokia800 images and kernel will run on both the N800 and N810"
>
> Sounds like what you're looking for...

The rest of the config has been moved to meta-extras, and
we'd need to do a bit of kernel work, but it has worked in the past, and 
could work again in the future.

In other words 'I agree'.

Cheers,

Bruce

>
> Tom
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


