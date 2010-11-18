Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74F984C80FA7
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 23:27:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAI5RdQQ008739;
	Wed, 17 Nov 2010 21:27:39 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 17 Nov 2010 21:27:39 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.16]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 17 Nov 2010 21:27:39 -0800
Message-ID: <4CE4B949.5070709@windriver.com>
Date: Thu, 18 Nov 2010 00:27:37 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4CE46608.1010708@linux.intel.com>
	<4CE4817F.3070007@linux.intel.com> <4CE4B603.2030709@windriver.com>
	<4CE4B84E.6050506@linux.intel.com>
In-Reply-To: <4CE4B84E.6050506@linux.intel.com>
X-OriginalArrivalTime: 18 Nov 2010 05:27:39.0804 (UTC)
	FILETIME=[512FC5C0:01CB86E1]
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Bugzilla Reorg Take 2
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
X-List-Received-Date: Thu, 18 Nov 2010 05:27:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-18 12:23 AM, Saul Wold wrote:
> On 11/17/2010 09:13 PM, Bruce Ashfield wrote:
>> On 10-11-17 8:29 PM, Darren Hart wrote:
>>> On 11/17/2010 03:32 PM, Saul Wold wrote:
>>>>
>>>> Folks,
>>>>
>>>> After reviewing the emails from the first attempt and review bugzilla,
>>>> there are a couple of different approaches that can be taken. It's
>>>> important to note that bugzilla supports 3 layers, Classification,
>>>> Product and Components, version are tracked at the Product level.
>>>>
>>>> Since we have 3 Layers, there are 2 possible scenarios:
>>>>
>>>> This is the Yocto Projects Bugzilla, so each "project" can have it's
>>>> own classification, I am not sure that this is the best since some of
>>>> the projects are pretty flat the extra level does not make sense.
>>>>
>>>> I am proposing the following top level classifications, containing the
>>>> following projects (products/components) :
>>>>
>>>> Yocto Projects
>>> ...
>>>> - Kernel
>>>> - build
>>>> - configuration
>>>> - runtime
>>>
>>> Acked-by: Darren Hart<dvhart@linux.intel.com>
>>>
>>>> - BSPs
>>>> - by board??
>>>
>>> Let's start off simple - by board might not scale well. Just "BSP" would
>>> be my vote - Bruce might have additional thoughts.
>>
>> This is the sane thing to do. One category 'bsp'. We can specify
>> the BSP in the subject of the bug. If a bug appears across a
>> class of BSPs or an arch, it gets bumped to kernel runtime and
>> is dealt with there.
>>
>> We've been using this scheme for about 200 supported BSPs, so it
>> should do just fine here as well.
>>
> OK, so should we 'demote' bsp to component or leave it a 'product'
> level with 1 general component, just trying make sure we have flexibility.
>

Keep the flexibility. That way if a particular BSP is maintained
differently, we have the ability to assign bugs to it and keep
them out of a global BSP queue.

At least that's my opinion :)

Bruce

> Sau!
>
>> Cheers,
>>
>> Bruce
>>
>>>
>>


