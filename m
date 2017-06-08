Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 525D9E00C5F; Thu,  8 Jun 2017 04:13:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFC52E00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 04:13:07 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C77D868A019; Thu,  8 Jun 2017 12:13:06 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4133968A019;
	Thu,  8 Jun 2017 12:13:06 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B3CC6674001A;
	Thu,  8 Jun 2017 13:13:05 +0200 (CEST)
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <395f03fe-7c6c-820b-5562-f98388cae49a@mlbassoc.com>
	<f510d100-faa6-d0a2-c4c8-19bf613fbc8c@linux.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <120cc200-c309-1609-eeaf-d5074cc5d70d@mlbassoc.com>
Date: Thu, 8 Jun 2017 13:13:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <f510d100-faa6-d0a2-c4c8-19bf613fbc8c@linux.intel.com>
Subject: Re: What's up with python3
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
X-List-Received-Date: Thu, 08 Jun 2017 11:13:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-08 13:09, Alexander Kanavin wrote:
> On 06/08/2017 10:28 AM, Gary Thomas wrote:
>> I'm building using Poky/Yocto master
>> 576821ea0a7558b626ccc87e9ae0e9ee40864956
>> and I've noticed that python3 (target) is being built for my image, but it
>> doesn't end up in the actual image.  None of my own recipes mention python3
>> at all, yet virtually every recipe that's used in the build depend on it.
>>
>> I've listed all the recipes used in my build (from bitbake -g =>
>> recipe-depends.dot)
>> and sucked out the ones that claim to depend on python3.  I don't see
>> why, for
>> example, python(2) depends on python3?
>>
>> Can someone explain this?  I've added the appropriate files to this email.
>>
>> I'm mostly curious, but also a bit concerned that my builds are doing more
>> than they need (and hence just taking longer than they might need to)
> 
> Typically for two reasons:
> 
> a) a recipe needs to execute python during build, and host python is not suitable for some reason - so native python is 
> built and used;

Not that: I filtered out all uses of python3-native - these are only *target* dependencies

> 
> b) a supplementary package needs python, while the main package does not - most often this is the -ptest package, which 
> will not end up in the image, unless you ask.

None of my recipes build -ptest stuff:
   $ find tmp/deploy/ipk/ -name "*ptest*"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

