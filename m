Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D6FE0072A
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 11:13:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBEJDYP3010767
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Dec 2011 11:13:34 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 14 Dec 2011 11:13:34 -0800
Message-ID: <4EE8F55C.4060003@windriver.com>
Date: Wed, 14 Dec 2011 14:13:32 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4EE2911E.3090708@linux.intel.com> <4EE58DA5.9070301@windriver.com>
	<4EE68B9A.8080602@linux.intel.com> <4EE8D5D9.5070201@windriver.com>
	<4EE8E5D8.7060800@linux.intel.com> <4EE8EE57.1060608@windriver.com>
	<4EE8F3A1.3040109@linux.intel.com>
In-Reply-To: <4EE8F3A1.3040109@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto: ktypes/tiny and some questions along the way
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
X-List-Received-Date: Wed, 14 Dec 2011 19:13:36 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-14 02:06 PM, Darren Hart wrote:
> On 12/14/2011 10:43 AM, Bruce Ashfield wrote:
>> On 11-12-14 01:07 PM, Darren Hart wrote:
>
> Heavily trimmed down to the remaining points of discussion...

Everyone thanks you. I thought of doing that as well on my
last reply.

>
>>> So what does that mean here? Well, I suggest we put all the sources in
>>> standard (minus evil BSP patches obviously) and then create a ktype per
>>> DISTRO definition:
>>
>> And minus -rt at the moment.
>
> Yes, sorry, I intended that, but didn't make that clear. Agreed.
>
>>>
>>> yocto/base
>>> yocto/standard/base
>>> yocto/standard/poky
>>> yocto/standard/poky-rt
>>> yocto/standard/poky-tiny
>>
>> I'd want the distro not to be named in the branches, but yes,
>> that looks ok to me.
>
> Hrm, that's too bad. I really like the explicit coupling of the OE
> distro definition to the linux-yocto branch. It helps reinforce the
> concept of distro defined policy. I think I know where you are coming
> from though.

I'm just thinking of re-use of the tree in other situations. i.e.
hypothetical OSV uses the tree and says "they are based on yocto",
and create their own distro. Having poky show up in branch names
would confuse that message .. and no one needs anyone else more
confused then they have to be.

>
>> Yep, I'm not sold on a distro name, but if you change this to:
>>
>>         yocto/base
>>         yocto/standard/cfg (bad name, but I wanted something)
>>         yocto/standard/rt
>>         yocto/standard/tiny
>
> How about:
>          yocto/base
>          yocto/standard/default
>          yocto/standard/rt
>          yocto/standard/tiny
>
> "default" makes sense to me since, well, it is what we would use as the
> default if no specification in made. Also, it's a shorter way of saying
> "general purpose", which describes this policy/config fairly well.

Agreed. I'm ok with this. Naming things sucks.

>
>> Then the tree is more of a common base ... they are just names after
>> all! We already have 'yocto' in there, so that's enough specifics for
>> my taste.
>>
>> or we flip it around ...
>>
>>      base
>>      standard/yocto
>>      standard/yocto-rt
>>      standard/yocto-tiny
>>
>> Which looks more like what you proposed, but without the double
>> specific names.
>
> It's less typing! I like less typing. But if we're going to do that, why
> not:
>
>       base
>       standard/poky
>       standard/poky-rt
>       standard/poky-tiny
>
> If you would prefer to keep the branches build-system/distro agnostic,
> then I think the ideal would be:
>
>
>       base
>       standard/default
>       standard/rt
>       standard/tiny
>
> And, it's even LESS typing! Fingers, wrists, and keyboards everywhere
> will be thanking us. ;-)

Will tell them to use TAB completion!! :)

I could go all the way down to this, I initially chose 'ycoto' because
it seemed like the right thing to do. But the tree already has yocto
in the name, and it's associated with the yocto project .. so really,
we don't need it in the branch names :) There's no plan merge multiple
different project baseline configs so the yocto designation is redundant.

.. I think we are almost there now. I could absolutely construct the
3.2 dev kernel to have these branches, and we'd leave existing trees
untouched.

But I'll let this debounce for a bit before heading down the garden
path :)

Cheers,

Bruce


>


