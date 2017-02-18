Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 414F2E009B8; Fri, 17 Feb 2017 23:12:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C7EE00995
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 23:12:03 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A6D8C68A01C; Sat, 18 Feb 2017 07:12:02 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5A4D968A019;
	Sat, 18 Feb 2017 07:12:00 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 1C32E67402C9;
	Sat, 18 Feb 2017 08:12:00 +0100 (CET)
To: yocto@yoctoproject.org
References: <d75a5d99-f1c8-f106-8264-50d03a5f5e2a@mlbassoc.com>
	<7b993ea1-ffde-c3a7-b125-63c857808013@mlbassoc.com>
	<88cac78b-712a-5d79-7f83-4d5d3269d093@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <d2d88cc4-c25e-994b-eb2c-9026e1a5fb9e@mlbassoc.com>
Date: Sat, 18 Feb 2017 08:12:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <88cac78b-712a-5d79-7f83-4d5d3269d093@gmail.com>
Subject: Re: [meta-raspberrypi] WiFi on rpi3?
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
X-List-Received-Date: Sat, 18 Feb 2017 07:12:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-17 03:09, Khem Raj wrote:
>
>
> On 1/20/17 3:52 AM, Gary Thomas wrote:
>> On 2017-01-20 12:30, Gary Thomas wrote:
>>> Can someone give me pointers to get the onboard WiFi on the
>>> RaspberryPi3 going?  What kernel settings/hoops I need to do,
>>> what packages I might need, etc?
>>>
>>> Thanks
>>>
>>
>> Actually, I've found that with an older kernel (4.1.21) the WiFi
>> device is discovered, but with the newer kernels (4.4.x and 4.9.x)
>> it's not.
>>
>> Any clues?
>>
>
> Please try out the patch I posted to ml
>
> https://lists.yoctoproject.org/pipermail/yocto/2017-February/034624.html
>
> or from my gh fork.
>
> https://github.com/kraj/meta-raspberrypi/commit/6ce6e57782c23fd21ad47286ac8b809ce989ea78
>
> and let us know.

This works great on my rpi3, thanks!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

