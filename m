Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F3AAE0048C
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2013 02:33:20 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id fn15so3456403wgb.20
	for <yocto@yoctoproject.org>; Sat, 09 Mar 2013 02:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=AbshkH7dI3T82bh3zKfdUmLjk8m1/LvrP+dNKrvWtuA=;
	b=wt5gZ4AbK27v46Wf/lEBb45TG3jGYuYfg21WFZPwQWcbG3vGQXtACRX7aemutQM/Mq
	iqrhmDBBrzee/1cNbJKbAjBUIUhESmDcoaFojonTSXP0z+x9U3KoDq0CNiucggPLKTs5
	MzJBuodfb0ZQVoFXpiWR4efeHpRMwDe+N9MMFmHmwCtXcs4NuKcqmCXpNHMd+nuBD6xv
	wSglMZxUnSpvymcC2lYzTGkgFb6fjnniTM0x1R9OygwmcBKyQ4dQhE4xXmiWY/YsLoW9
	nRCAR3//U4gO2gj33WyBq0b5r4p7LbJjLo2kmN54FRL3ZRrYvY9SNdV4kXg9Oj91kyKq
	Cx/A==
X-Received: by 10.180.75.177 with SMTP id d17mr3085889wiw.16.1362825199579;
	Sat, 09 Mar 2013 02:33:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sat, 9 Mar 2013 02:32:58 -0800 (PST)
In-Reply-To: <513A75CB.3050308@windriver.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<513A195A.5040505@linux.intel.com> <513A75CB.3050308@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Sat, 9 Mar 2013 02:32:58 -0800
Message-ID: <CACzyEJ9MHVD8GyVEwXkdndmQy7DQ_Tt-M0n6-0dWG7LOHgVR5w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Sat, 09 Mar 2013 10:33:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 8, 2013 at 3:35 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-03-08 12:01 PM, Darren Hart wrote:
>>
>>
>>
>> On 03/04/2013 08:04 PM, Insop Song wrote:
>>>
>>> Hi,
>>>
>>> I am preparing a new meta layer for testing and promoting a
>>> sched_deadline scheduler, called "meta-dl". I am planning to add
>>> scheduler testing tools and different kernel versions as well.
>>> - http://insop.github.com/meta-dl/
>>
>>
>> Note that qemux86 doesn't support the EMGD graphics driver. You mention
>> this and its license in the README, but it isn't necessary. If you are
>> pulling that in, there is a problem with your recipes.
>
>
> wow. mailing list delays are making this conversation *extremely*
> painful and disjointed.
>
>
Darren,
Those that you've mentioned were from yocto kernel lab examples.
I went over and cleaned them up. https://github.com/insop/meta-dl

However, at this point, I am more looking at meta-realtime that uses
yocto-linux-3.8 instead as Bruce's suggestion.
https://github.com/insop/meta-realtime


>>
>> So you are using the sched_deadline patches, but not PREEMPT_RT, is that
>> right? I had always assumed sched_deadline ran on top of PREEMPT_RT (but
>> I haven't every tried building it myself).
>
>
> sched_deadline applies to mainline, right on top of CFS as a scheduler
> class. So in fact, I wouldn't suggest it with preempt-rt at all at the
> moment.
>
>

Right, previously, Juri maintained sched_deadline on top of
preempt-rt, but not any more.

>>
>> What you have here is a good experimental layer. Looking forward, please
>> consider:
>>
>> o Incorporating sched_deadline as a kernel feature into the
>> linux-yocto_3.8 kernel. We can easily add recipes to build a
>> linux-yocto-deadline kernel and you will get all the benefits of the
>> yocto tooling, testing, bugfixing, and free forward porting.
>
>
> Already done. I've had it in linux-yocto-3.8 since I first introduced
> it. We just need the supporting userspace to easily change the
> scheduler class for a process.
>
>

Yup, two apps that can test sched_deadline is at meta-realtime now.
I will prepare some script to make it easier as well.

>>
>> o Incorporating your tests into (poky|oe-core)/meta/recipes-rt
>
>
> Or if they aren't fully 'core', our new meta-realtime that I'd like
> to have created shortly.
>

I will be playing with meta-realtime at github until you create one.
Please let me know if you have any other requested program on this layer.

Regards,

Insop

