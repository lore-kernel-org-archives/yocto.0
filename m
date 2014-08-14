Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BB9EE004DD; Thu, 14 Aug 2014 08:12:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 551A0E0034B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 08:12:50 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 3BCE220E1DBD;
	Thu, 14 Aug 2014 15:12:50 +0000 (UTC)
Message-ID: <53ECD1F1.205@mindchasers.com>
Date: Thu, 14 Aug 2014 11:12:49 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <53EC9DD8.6030207@mindchasers.com>
	<CADkTA4NATGAUXgh8YwapLuqgH1Oiod7ik5LkJMYn5mEePOM-6Q@mail.gmail.com>
	<53ECC9DF.3040809@mindchasers.com>
	<alpine.LFD.2.11.1408141039420.2067@localhost>
In-Reply-To: <alpine.LFD.2.11.1408141039420.2067@localhost>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: mpc8315e-rdb is probably a poor choice as powerpc example...
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
X-List-Received-Date: Thu, 14 Aug 2014 15:12:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/14/2014 10:41 AM, Robert P. J. Day wrote:
> On Thu, 14 Aug 2014, Bob Cochran wrote:
>
>> On 08/14/2014 10:05 AM, Bruce Ashfield wrote:
>>> On Thu, Aug 14, 2014 at 7:30 AM, Bob Cochran <yocto@mindchasers.com> wrote:
>>>> As most of you know, the mpc8315e-rdb is the powerpc reference platform in
>>>> meta-yocto-bsp.  This is old technology and not a good representative of
>>>> QorIQ.
>>>
>>> We've been working with FSL to find a suitable replacement for some time,
>>> and
>>> the discussions were happening in the sprint, but stalled for the summer
>>> months.
>>>
>>>>
>>>> I suggest something from the P or T family be used.  The P1010RDB is
>>>> probably a good choice, but others may prefer an SMP machine.
>>>
>>> The choice is equally about the machine and about the ability to purchase
>>> the
>>> target at a reasonable price. We don't use hard to find, or expensive
>>> boards.
>>>
>>> So if you do have specific suggestions, and purchase information, send it
>>> along
>>> and it can be rolled into the ongoing discussions.
>>
>> Thank you for the reply Bruce.  I suggested the P1010RDB because we have one
>> of these (older rev), and we have found few problems working periodically with
>> Poky & related master branches over the past couple of years.  We also test
>> the mainline kernel on it - typically with success.
>>   In other words, it's basically been stable.
>>
>> It's $545 @ Digikey:
>> http://www.digikey.com/product-search/en?x=0&y=0&lang=en&site=us&keywords=P1010RDB
>
>    ouch. personally, i think that's too pricey for one of the yocto
> reference boards. it should be affordable by *hobbyists*, which
> suggests a price of at most $200, if not less. $545 is simply too
> expensive.


Agreed!

However, the currently used mpc8315e-rdb is $515 at Digikey: 
http://www.digikey.com/product-detail/en/MPC8315E-RDBA/MPC8315E-RDBA-ND/2186258

Basically same price


>
> rday
>


