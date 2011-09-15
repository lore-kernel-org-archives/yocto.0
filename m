Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB66E004CF
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2011 21:08:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8F48VuQ000246
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Sep 2011 21:08:31 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.125) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 14 Sep 2011 21:08:31 -0700
Message-ID: <4E717A3E.20500@windriver.com>
Date: Thu, 15 Sep 2011 00:08:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.22) Gecko/20110902 Thunderbird/3.1.14
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
References: <3A933C74C1C9A847A5738584DEE9CCE90E8769DF@ALA-MBB.corp.ad.wrs.com>
In-Reply-To: <3A933C74C1C9A847A5738584DEE9CCE90E8769DF@ALA-MBB.corp.ad.wrs.com>
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] btrfs: Add a new kernel feature to enable the	btrfs support
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
X-List-Received-Date: Thu, 15 Sep 2011 04:08:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-13 4:17 PM, Ashfield, Bruce wrote:
> It's there. Have a look in the cfg Sabourin

Ech. This just looped around now after a few days delay. Sorry
about the garbled message .. "sabourin" looked like "subdir"
on my phone when I sent this.

Bruce

>
> Bruce
>
> ----- Original Message -----
> From: Kamble, Nitin A [mailto:nitin.a.kamble@intel.com]
> Sent: Tuesday, September 13, 2011 01:16 PM
> To: Ashfield, Bruce
> Cc: yocto@yoctoproject.org<yocto@yoctoproject.org>
> Subject: RE: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to enable the	btrfs support
>
> Hi Bruce,
>    I am seeing that the patch is still not part of the Linux-yocto-3.0 repository. Is there any reason it is being hold?
>
> Thanks,
> Nitin
>
>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Tuesday, September 06, 2011 1:30 PM
>> To: Kamble, Nitin A
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to
>> enable the btrfs support
>>
>> On 11-09-06 03:56 PM, nitin.a.kamble@intel.com wrote:
>>> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>>
>> Looks good. If we are merging this as config only, I've been
>> putting them in meta/cfg/kernel-cache/cfg/
>>
>> So I relocated this configuration to that directory. I'll have
>> it pushed out in the next day or so (I'm getting on a plane
>> shortly).
>>
>> Bruce
>>
>>>
>>> Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com>
>>> ---
>>>    meta/cfg/kernel-cache/features/btrfs/btrfs.cfg |    1 +
>>>    meta/cfg/kernel-cache/features/btrfs/btrfs.scc |    1 +
>>>    2 files changed, 2 insertions(+), 0 deletions(-)
>>>    create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
>>>    create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>>>
>>> diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
>> b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
>>> new file mode 100644
>>> index 0000000..605c183
>>> --- /dev/null
>>> +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
>>> @@ -0,0 +1 @@
>>> +CONFIG_BTRFS_FS=y
>>> diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>> b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>>> new file mode 100644
>>> index 0000000..cf18a2e
>>> --- /dev/null
>>> +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>>> @@ -0,0 +1 @@
>>> +kconf non-hardware btrfs.cfg
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


