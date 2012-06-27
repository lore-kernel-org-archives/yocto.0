Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F432E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:40:49 -0700 (PDT)
Received: from [192.168.1.113]
	(cpc2-cmbg15-2-0-cust171.5-4.cable.virginmedia.com [86.26.12.172])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 68513600CA;
	Wed, 27 Jun 2012 17:23:10 +0100 (BST)
Message-ID: <4FEB378C.9050307@communistcode.co.uk>
Date: Wed, 27 Jun 2012 17:40:44 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:13.0) Gecko/20120614 Thunderbird/13.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <20317992.tBZ1YY1I5v@helios> <4FEB2521.3020203@communistcode.co.uk>
	<4427881.ZDyEgbkgV4@helios>
In-Reply-To: <4427881.ZDyEgbkgV4@helios>
Cc: yocto@yoctoproject.org
Subject: Re: LAMP layer
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
X-List-Received-Date: Wed, 27 Jun 2012 16:40:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 27/06/2012 17:27, Paul Eggleton wrote:
> On Wednesday 27 June 2012 16:22:09 Jack Mitchell wrote:
>> I think this is a fantastic idea in general and if I remember correctly
>> someone from Linaro was attempting to do something similar to this the
>> other day - so I can't only be me who would appreciate something like this.
>
> Indeed, I saw Marcin's earlier thread - at the time I wasn't far enough along
> to reply unfortunately (was just an item on my todo list), but at least
> there's interest :)
>   
>> The one issue I have (initially) is why should it be limited to the
>> Apache web server? There are a couple of good web servers out there
>> which lend themselves much more to an embedded style development than
>> (IMO) the bloat that is Apache.
>>
>> For example:
>>
>> Lighttpd (already in core)
>> nginx
>> Hiawatha (my personal favourite - I have a recipe I already use in
>> conjunction with PHP)
>
> I agree Apache is not something you would typically consider to be embedded-
> friendly, however if you've already got something web-based that is built on
> top of Apache or relies on functionality that only Apache can provide, and you
> want to integrate that into an embedded product, then nothing else will really
> suffice.
>
> However I do think there's scope to include these other alternatives
> particularly if the layer turns into more of a generic web server layer, but I
> can't commit to maintaining (specifically, updating and testing) the additional
> recipes on my own.

I would be happy to contribute the hiawatha recipe (it's just simple 
cmake job), but I understand your earlier comment on standalone PHP as 
it is indeed a minefield. I tried to update it some weeks ago and failed 
miserably.

Possibly just do your part and let people send in patches against the 
layer as is done with meta-oe?

>
>   
>> I also remember someone from WindRiver posted recently regarding a
>> meta-networking layer, which I also thought was a great idea if not only
>> for (in my use case) tftp/net-snmp support all rolled up and supported.
>> Maybe this could be a layer with that "section"?
>>
>> i.e.
>>
>> meta-networking
>>       meta-webserver (meta-l*mp?)
>>           recipes-*
>>           recipes-*
>>       meta-*
>>           ....
>>           ....
>
> Whenever a new layer is introduced there's always the question of where it
> should be physically located. I worry more about the confusion that multi-
> level layers cause - particularly when they're named the same thing - than I
> do about multiple repositories, but I realise others have different viewpoints.
> If they are in separate repositories there's still nothing stopping them being
> used together.

I do agree that layers within layers is a bit confusing, however the 
earlier proposed meta-networking included having some of the 
applications in this proposed layer too. If this was instead, then it's 
fine, but if it's as well then it could get confusing.

A possible compromise could be a git sub-module for meta-lamp inside 
meta-networking, or at least a file containing the meta-lamp location 
and highlighting its availability?

>
>
> Cheers,
> Paul
>


