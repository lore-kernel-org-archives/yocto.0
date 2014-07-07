Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 782B5E00744; Mon,  7 Jul 2014 07:02:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54325E006B7
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 07:02:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BB321F811DE; Mon,  7 Jul 2014 08:02:16 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B38A0F8119A;
	Mon,  7 Jul 2014 08:02:14 -0600 (MDT)
Message-ID: <53BAA88E.8090703@mlbassoc.com>
Date: Mon, 07 Jul 2014 08:02:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.LFD.2.11.1407070907540.9045@localhost>	<53BAA0C2.4000105@windriver.com>
	<alpine.LFD.2.11.1407070931480.9550@localhost>
In-Reply-To: <alpine.LFD.2.11.1407070931480.9550@localhost>
Subject: Re: how many variations to build for a beaglebone black (BBB)?
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
X-List-Received-Date: Mon, 07 Jul 2014 14:02:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-07-07 07:33, Robert P. J. Day wrote:
> On Mon, 7 Jul 2014, Bruce Ashfield wrote:
>
>> On 14-07-07 09:13 AM, Robert P. J. Day wrote:
>>>
>>>     i want to build a bootable system for a BBB, and i can see at least
>>> three possibilities:
>>>
>>>     1) the meta-yocto-bsp layer defines the beaglebone as one of its
>>>        reference boards
>>>
>>>     2) the "meta-ti" layer is advertised as "official" TI board support
>>>
>>>     3) there is a "meta-beagleboard" layer, but that one looks a bit
>>>        stagnant
>>>
>>> any preferences out there for people working with the BBB?
>>
>> The generic "it depends" answer applies here.
>>
>> Due to the efforts of TI,the core BBB support made it into the
>> mainline kernel for 3.14, so that forms a common baseline of feature
>> support.
>>
>> Outside of that, it depends on the functionality you need in the
>> image and your familiarity with integration of multiple layers and
>> features.
>>
>> meta-ti gets you the latest and greatest features and support, while
>> the reference BSP was also done by TI to provide a good baseline
>> level of support (graphics, usb, ethernet, etc) and is supported via
>> Wind River in the linux-yocto repository.
>
>    excellent. since i want to configure and build for a classroom
> environment and probably don't need bleeding edge, i'll stick with the
> yocto-bsp stuff, which has served me well thus far.

The big thing missing from this version(*) is no cape support,
so if you need an LCD display or CAN driver or ...,  you're not
going to find it.  The meta-ti version does support those AFAIK

(*) unless this changed in the last three weeks while I was on holiday :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

