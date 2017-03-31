Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0D40E00A71; Thu, 30 Mar 2017 22:33:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4E6AE009DA
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 22:33:16 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 58F7468A01A; Fri, 31 Mar 2017 06:33:16 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E2A9468A01A;
	Fri, 31 Mar 2017 06:33:15 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 3FC3B67403F7;
	Fri, 31 Mar 2017 07:33:15 +0200 (CEST)
To: yocto@yoctoproject.org
References: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
	<d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <65b7858a-1e8b-c5fd-ae6f-3f5c4f711da0@mlbassoc.com>
Date: Fri, 31 Mar 2017 07:33:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
Subject: Re: GCC on ARM
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
X-List-Received-Date: Fri, 31 Mar 2017 05:33:20 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-31 07:07, Khem Raj wrote:
>
>
> On 3/30/17 9:07 PM, Gary Thomas wrote:
>> [slightly off-topic]
>>
>> I work with a number of embedded ARM devices, all with different
>> processors, hence somewhat different tuning and build directories:
>>   Raspberry-Pi (1,2,3 - mostly 3):
>>     TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>> callconvention-hard cortexa7"
>>     build dirs:
>>       tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi
>>   BeagleBoneBlack:
>>     TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard"
>>     build dirs:
>>       tmp/work/armv7ahf-neon-poky-linux-gnueabi
>>   i.MX6:
>>     TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
>> cortexa9"
>>     build dirs:
>>       tmp/work/cortexa9hf-neon-poky-linux-gnueabi
>>       tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi
>>       tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi
>>
>> What I'm wondering is, except for the obvious programs that use SoC
>> specific
>> functions like the IPU/GPU on the i.MX6, how different are these
>> really?  So
>> much so that they have to all have unique binaries?  Surely I could build
>> busybox or python and run the same binary on all three?
>>
>
> You can chose a least common denominator and use that as DEFAULTTUNE for
> all your machines. May be like armv7at2-neon

That's good to know, thanks.

What would I be giving up?  Anything of substance/importance?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

