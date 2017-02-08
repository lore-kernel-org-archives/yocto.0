Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E77F0E009A5; Wed,  8 Feb 2017 03:38:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7AB2E007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 03:38:17 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9D98C68A019; Wed,  8 Feb 2017 11:38:16 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 0E7C368A019;
	Wed,  8 Feb 2017 11:38:14 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 9F37B67400D4;
	Wed,  8 Feb 2017 12:38:13 +0100 (CET)
To: yocto@yoctoproject.org
References: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
	<CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <2cf00af5-fee4-91f3-0d66-2e821b99fb27@mlbassoc.com>
Date: Wed, 8 Feb 2017 12:38:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
Subject: Re: is there a list somewhere of OE/YP-supported system perf/monitoring tools?
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
X-List-Received-Date: Wed, 08 Feb 2017 11:38:19 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-08 07:48, Maciej Borzęcki wrote:
> On Tue, Feb 7, 2017 at 3:31 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>
>>   colleague asked me for a list of OE/YP recipes for monitoring system
>> performance/resource utilization/profiling, i'm unaware of any single
>> list that tracks that sort of thing so i'll just ask what people are
>> aware of. just off the top of my head:
>>
>>  * sysstat
>>  * atop
>>  * collectd
>>  * netdata
>>  * rrdtool
>>  * dstat
>
> * pcp http://pcp.io/
>

There is also bootchart (and friends) to gather information about
system startup and initialization.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

