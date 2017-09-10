Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB6A0E00C95; Sun, 10 Sep 2017 04:53:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEEC5E00C77
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 04:53:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 561D2861B3;
	Sun, 10 Sep 2017 11:53:42 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id cAAweIa0R4vf; Sun, 10 Sep 2017 11:53:33 +0000 (UTC)
Received: from [127.0.0.1] (unknown [92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 0721B860E2;
	Sun, 10 Sep 2017 11:53:32 +0000 (UTC)
To: Chris Tapp <opensource@keylevel.com>, usmanhaider89@gmail.com
References: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
	<b59f7241-632a-0801-1dce-ade844162f23@dynamicdevices.co.uk>
	<6353963F-63D3-413E-B685-72A56004CBA9@keylevel.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <ef51f43e-9a37-995c-3577-5df51898af3c@dynamicdevices.co.uk>
Date: Sun, 10 Sep 2017 12:53:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <6353963F-63D3-413E-B685-72A56004CBA9@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Suitable machine for yocto
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
X-List-Received-Date: Sun, 10 Sep 2017 11:53:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB



On 10/09/2017 12:00, Chris Tapp wrote:
>> On 10 Sep 2017, at 09:05, Alex Lennon <ajlennon@dynamicdevices.co.uk> wrote:
>>
>> Hi Usman,
>>
>> On 10/09/2017 08:00, Usman Haider wrote:
>>> Hi,
>>>
>>> Can someone please recommend some good machine for yocto environment and building sdks. I am interested in RAM, hard disk space, processor.
>>>
>>>
>> I use a AMD FX-8350 4GHz Eight-Core Processor on a GA-78LMT-USB3 mainboard with 32GB RAM and a couple of 4TB drives, running Ubuntu 16.04.03 LTS.
> I have a similar spec, except I use an SSD for the build area and only 16GB RAM (I don’t see more than about 12GB used during a build) - a build from scratch (excluding download time) takes just under an hour.
>
>

I am toying with putting an SSD in there. I use the Samsung Evo 1TB 
units for day to day on my laptop and that has worked very well for me. 
Maybe I should move that forward.

16GB is no doubt absolutely fine in general. I suppose in part it may 
depend on how many tasks are executing in parallel on the CPU cores.

I find a very few recipes are _real_ memory hogs. I imagine I could get 
by with less RAM but Chromium and possibly Qt5 stick in the mind as 
having intermittent build issues when the RAM was lower.

Cheers!

Alex


