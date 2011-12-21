Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82DFAE0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:04:37 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBLG4Vtl029686
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 21 Dec 2011 08:04:31 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 21 Dec 2011 08:04:31 -0800
Message-ID: <4EF2038B.9090108@windriver.com>
Date: Wed, 21 Dec 2011 11:04:27 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<1df27b9bdc349f658a19645a4af6f73548203aca.1324456294.git.dvhart@linux.intel.com>
	<4EF1F39F.7040003@windriver.com> <4EF200CC.4000306@linux.intel.com>
	<4EF201C4.6030707@windriver.com> <4EF20329.10408@linux.intel.com>
In-Reply-To: <4EF20329.10408@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/9] linux-yocto-tiny: New kernel recipe for poky-tiny distro (INCOMPLETE)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Dec 2011 16:04:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-21 11:02 AM, Darren Hart wrote:
>
>
> On 12/21/2011 07:56 AM, Bruce Ashfield wrote:
>> On 11-12-21 10:52 AM, Darren Hart wrote:
>>>
>>>
>>> On 12/21/2011 06:56 AM, Bruce Ashfield wrote:
>>>> On 11-12-21 04:02 AM, Darren Hart wrote:
>>>>> linux-yocto-tiny drops the linux-tools and sets the KMACHINE
>>>>> branch to standard/tiny.
>>>>>
>>>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>>>> ---
>
> ...
>
>>>>> +SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta \
>>>>> +           file://core.cfg \
>>>>> +           file://serial.cfg \
>>>>> +           file://ext2.cfg \
>>>>> +           file://rtc-pc.cfg \
>>>>> +           file://ramfs.cfg \
>>>>> +           file://devtmpfs.cfg \
>>>>> +           file://net.cfg \
>>>>> +           file://debug.cfg \
>>>>> +           file://lzma.cfg \
>>>>> +           "
>>>>
>>>> So I assume that the order of these doesn't really matter, and that
>>>> they are non-overlapping ? The answer must be yes, since you've been
>>>> testing this, and you don't have a .scc file to control their order :)
>>>>
>>>
>>> That's correct.
>>>
>>>> Other than that, it looks pretty good to me.
>>>
>>> Great. Did you have a close look at core.cfg? It along with things like
>>> devtmpfs and ramfs are likely to form the basis of the linux-yocto tiny
>>> ktype general policy.
>>
>> I had a 'medium' depth look :) I didn't see anything outrageous
>> or shocking. I'll loop back and have a better look later as well.
>
> I'm mostly interested in things that are MISSING.

Aha. That's different. I'll go back and look!

Bruce

>


