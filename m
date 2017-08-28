Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 568C7E00CC2; Mon, 28 Aug 2017 13:32:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE580E00CC2
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 13:32:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 019D9861B9;
	Mon, 28 Aug 2017 20:32:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id LBktuprOXGq0; Mon, 28 Aug 2017 20:31:55 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 5F593860E5;
	Mon, 28 Aug 2017 20:30:29 +0000 (UTC)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <258ff3cf-5cac-501a-132b-b91c487c4d5b@dynamicdevices.co.uk>
	<2151273.fElYf2KXPe@peggleto-mobl.ger.corp.intel.com>
	<dfab7077-0402-1c1f-32dd-3be96d2cce97@dynamicdevices.co.uk>
	<3382579.O7URAfhVFX@peggleto-mobl.ger.corp.intel.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <42165ae9-0852-3314-b72f-3084c3c2be95@dynamicdevices.co.uk>
Date: Mon, 28 Aug 2017 20:30:23 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <3382579.O7URAfhVFX@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Problems running image in qemu (x86)
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
X-List-Received-Date: Mon, 28 Aug 2017 20:32:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB



On 28/08/2017 20:25, Paul Eggleton wrote:
> On Tuesday, 29 August 2017 12:57:35 AM NZST Alex J Lennon wrote:
>> On 28/08/2017 10:32, Paul Eggleton wrote:
>>> On Sunday, 27 August 2017 1:09:49 AM NZST Alex J Lennon wrote:
>>>> I have just built against master though and am seeing screen corruption.
>>>>
>>>> e.g. https://postimg.org/image/xjcdybdul
>>> Yuck :( Would you please file a bug for this? I'm aware we've upgraded qemu
>>> recently (I assume this was with the 2.10-rc2 version currently in master?),
>>> maybe that has something to do with it.
>>>
>> Will do Paul.
> Thanks!
>
>> (I don't suppose you're back over for ELC-E 2017 or FOSDEM
>> 2018 by any chance?)
> I'd love to be, but it's rather unlikely at this point unfortunately.
>
>

Shame. I'll leave a beer / coffee in the tap then...

Cheers, Alex


