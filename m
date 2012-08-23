Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A283DE002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:33:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7NHXKA5001171
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:33:20 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 23 Aug 2012 10:33:19 -0700
Message-ID: <50366959.6090008@windriver.com>
Date: Thu, 23 Aug 2012 13:33:13 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
	<503630A3.90606@windriver.com>
	<20120823163126.ddbd0076-38df-4053-a9ae-7fa318879d54.mhubig@imko.de>
	<503659B6.6090207@windriver.com>
	<20120823192343.a92af96b-a5ee-491b-80de-fb8ba16871e6.mhubig@imko.de>
In-Reply-To: <20120823192343.a92af96b-a5ee-491b-80de-fb8ba16871e6.mhubig@imko.de>
Subject: Re: 1.3_M3 do_kernel_config failes, config_frag.txt is crippled.
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
X-List-Received-Date: Thu, 23 Aug 2012 17:33:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-23 01:28 PM, Markus Hubig wrote:
> On Thu, Aug 23, 2012 at 12:26:30PM -0400, Bruce Ashfield wrote:
>> On 12-08-23 12:18 PM, Markus Hubig wrote:
>>> On Thu, Aug 23, 2012 at 09:31:15AM -0400, Bruce Ashfield wrote:
>>>> On 12-08-23 09:24 AM, Markus Hubig wrote:
>
> <snipp>
>
>>> Surprisingly if I remove the *.cfg files from the SRC_URI
>>>
>>> | SRC_URI_append_portuxg20 = "\
>>> |         file://portuxg20-standard.scc   \
>>> |         file://portuxg20-preempt-rt.scc \
>>> |         file://portuxg20.scc            \
>>> |         "
>>> |
>>> | SRC_URI_append_stamp9g20 = "
>>> |         file://stamp9g20-standard.scc   \
>>> |         file://stamp9g20-preempt-rt.scc \
>>> |         file://stamp9g20.scc            \
>>>
>>> it also works ...
>>
>> Yes, and I can explain this part. When a .scc file is detected, the
>> entire directory contents are propagated to the kernel build, since
>> .scc files can refer to patches, configs, etc, and some elements are
>> optional, they are all made available.
>>
>> So if you reference .cfgs and patches in your .scc files, you don't
>> need them in the SRC_URI, just the .scc file.
>
> Is it possible that if I remove the *.cfg files, bitbake no longer tracks
> changes inside this files and will not rebuild the related packages from
> scratch with:

If the checksums are over the elements in the SRC_URI, then that would
be true, but I'm not a checksum or fetcher expert.

repeating a .cfg really should be safe, just a bit verbose, I'll retest
that here to see if something broke.

My workflow never hits any problems with not rebuilding, but I can also
check that. If necessary, listing the files, or another technique to get
the checksum'd would be advisable. I'll look into that as well.

Cheers,

Bruce

>
> | bitbake -fc clean linux-yocto
> | bitbake linux-yocto
>
> Cheers, Markus
>


