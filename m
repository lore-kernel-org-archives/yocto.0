Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17D38E006C3
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 20:29:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2B3SvPY028742
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 10 Mar 2013 20:28:58 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.12) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Sun, 10 Mar 2013 20:28:57 -0700
Message-ID: <513D4F78.9010307@windriver.com>
Date: Sun, 10 Mar 2013 23:28:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<513A195A.5040505@linux.intel.com> <513A75CB.3050308@windriver.com>
	<CACzyEJ9MHVD8GyVEwXkdndmQy7DQ_Tt-M0n6-0dWG7LOHgVR5w@mail.gmail.com>
In-Reply-To: <CACzyEJ9MHVD8GyVEwXkdndmQy7DQ_Tt-M0n6-0dWG7LOHgVR5w@mail.gmail.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Mon, 11 Mar 2013 03:29:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-09 5:32 AM, Insop Song wrote:
> On Fri, Mar 8, 2013 at 3:35 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> On 13-03-08 12:01 PM, Darren Hart wrote:
>>>
>>>
>>>
>>> On 03/04/2013 08:04 PM, Insop Song wrote:
>>>>
>>>> Hi,
>>>>
>>>> I am preparing a new meta layer for testing and promoting a
>>>> sched_deadline scheduler, called "meta-dl". I am planning to add
>>>> scheduler testing tools and different kernel versions as well.
>>>> - http://insop.github.com/meta-dl/
>>>
>>>
>>> Note that qemux86 doesn't support the EMGD graphics driver. You mention
>>> this and its license in the README, but it isn't necessary. If you are
>>> pulling that in, there is a problem with your recipes.
>>
>>
>> wow. mailing list delays are making this conversation *extremely*
>> painful and disjointed.
>>
>>
> Darren,
> Those that you've mentioned were from yocto kernel lab examples.
> I went over and cleaned them up. https://github.com/insop/meta-dl
>
> However, at this point, I am more looking at meta-realtime that uses
> yocto-linux-3.8 instead as Bruce's suggestion.
> https://github.com/insop/meta-realtime


Expect that the yocto project hosted meta-realtime will appear in a
week or so. I'm doing the legwork at the moment, but with some travel
in the upcoming week, the initial push will be delayed by a few days.

Cheers,

Bruce

>
>
>>>
>>> So you are using the sched_deadline patches, but not PREEMPT_RT, is that
>>> right? I had always assumed sched_deadline ran on top of PREEMPT_RT (but
>>> I haven't every tried building it myself).
>>
>>
>> sched_deadline applies to mainline, right on top of CFS as a scheduler
>> class. So in fact, I wouldn't suggest it with preempt-rt at all at the
>> moment.
>>
>>
>
> Right, previously, Juri maintained sched_deadline on top of
> preempt-rt, but not any more.
>
>>>
>>> What you have here is a good experimental layer. Looking forward, please
>>> consider:
>>>
>>> o Incorporating sched_deadline as a kernel feature into the
>>> linux-yocto_3.8 kernel. We can easily add recipes to build a
>>> linux-yocto-deadline kernel and you will get all the benefits of the
>>> yocto tooling, testing, bugfixing, and free forward porting.
>>
>>
>> Already done. I've had it in linux-yocto-3.8 since I first introduced
>> it. We just need the supporting userspace to easily change the
>> scheduler class for a process.
>>
>>
>
> Yup, two apps that can test sched_deadline is at meta-realtime now.
> I will prepare some script to make it easier as well.
>
>>>
>>> o Incorporating your tests into (poky|oe-core)/meta/recipes-rt
>>
>>
>> Or if they aren't fully 'core', our new meta-realtime that I'd like
>> to have created shortly.
>>
>
> I will be playing with meta-realtime at github until you create one.
> Please let me know if you have any other requested program on this layer.
>
> Regards,
>
> Insop


