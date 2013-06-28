Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 385CDE014F4;
	Fri, 28 Jun 2013 06:02:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5SD2piw003118
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Jun 2013 06:02:51 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 28 Jun 2013 06:02:51 -0700
Message-ID: <51CD8973.7020704@windriver.com>
Date: Fri, 28 Jun 2013 09:02:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted>
In-Reply-To: <1372424223.9930.257.camel@ted>
Cc: "Hart, Darren" <darren.hart@intel.com>, yocto <yocto@yoctoproject.org>
Subject: Re: poky-extras
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
X-List-Received-Date: Fri, 28 Jun 2013 13:02:56 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-28 08:57 AM, Richard Purdie wrote:
> On Fri, 2013-06-28 at 08:52 -0400, Bruce Ashfield wrote:
>> On 13-06-28 04:51 AM, Richard Purdie wrote:
>>> Hi Bruce/Darren,
>>>
>>> My attention was drawn to the existence of poky-extras. This was really
>>> a short term gap filling repository and I think the time has come to
>>> remove it. There are basically two chunks of code in there.
>>>
>>> The meta-linaro pieces in there haven't been touched in two years and
>>> are therefore dead. I think we should delete them to alleviate any
>>> confusion.
>>>
>>> The kernel pieces have been touched more recently. Some moved into the
>>> core, mostly its just example boiler plate type code now. I think this
>>> needs moving to a better named repository if its still wanted/useful, or
>>> we delete it. I personally don't have a strong preference.
>>>
>>> Can someone take care of sorting this out?
>>
>> I can take care of finding it a new home. I use the repo daily, and keep
>> bumping it with examples with each new kernel update or release. I was
>> working on some urlremapper code for the layer, to replace the old
>> boiler plate "uncomment this" examples that are current in the recipes ..
>> that work has been backgrounded, but I can pick it up again as part
>> of relocating the changes.
>>
>> I'm out of the office for the next week and a half, but can have a look
>> after that. Does that timeframe work ?
>
> Yes, its not urgent and I don't want to remove something people use. I
> do think that this would better as a meta-yocto-kernel or something
> similar. How about we simply rename it to that and delete meta-linaro
> from it?

Agreed. That's an effective way to clarify what's left in the layer.
I'll take care of cleaning up the contents later.

If it's just the rename, I assume Michael can take care of it and
there's nothing immediate for me to do.

Cheers,

Bruce

>
> Cheers,
>
> Richard
>
>


