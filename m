Return-Path: <Yang.Shi@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD3BAE003BF
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 09:48:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r7RGmFQX027357
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 27 Aug 2013 09:48:15 -0700 (PDT)
Received: from [147.11.152.84] (147.11.152.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 27 Aug 2013 09:48:14 -0700
Message-ID: <521CD84E.70606@windriver.com>
Date: Tue, 27 Aug 2013 09:48:14 -0700
From: Yang Shi <yang.shi@windriver.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <1377552450-29358-1-git-send-email-yang.shi@windriver.com>
	<521C5608.3020202@enea.com> <2196360.bXPOIJBs5j@helios>
	<CADkTA4OOqQvh7mBqQQo-GTikTsOmuZ-fZKV7t5aA-++-uGWWfw@mail.gmail.com>
In-Reply-To: <CADkTA4OOqQvh7mBqQQo-GTikTsOmuZ-fZKV7t5aA-++-uGWWfw@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-virtulization] [PATCH] irqbalance: Uprev to 1.0.6
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
X-List-Received-Date: Tue, 27 Aug 2013 16:48:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 8/27/2013 5:42 AM, Bruce Ashfield wrote:
> On Tue, Aug 27, 2013 at 4:33 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Tuesday 27 August 2013 09:32:24 David Nyström wrote:
>>> On Mon 26 Aug 2013 11:27:30 PM CEST, Yang Shi wrote:
>>>> Add recipe for 1.0.6 version. And, add status and reload commands into
>>>> init script.
>>>>
>>>> Signed-off-by: Yang Shi <yang.shi@windriver.com>
>>>> ---
>>>>
>>>>    ...irqbalance-Add-status-and-reload-commands.patch |   55
>>>>    ++++++++++++++++++++ recipes-extended/irqbalance/irqbalance_1.0.6.bb
>>>>    |   15 +++++
>>>>    2 files changed, 70 insertions(+), 0 deletions(-)
>>>>    create mode 100644
>>>>    recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload
>>>>    -commands.patch create mode 100644
>>>>    recipes-extended/irqbalance/irqbalance_1.0.6.bb>
>>>> diff --git
>>>> a/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload
>>>> -commands.patch
>>>> b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload
>>>> -commands.patch new file mode 100644
>>>> index 0000000..d853d0b
>>>> --- /dev/null
>>>> +++
>>>> b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload
>>>> -commands.patch @@ -0,0 +1,55 @@
>>>> +From dc7366896dd5a5bae82be4b11530bc9fdb7cbcdd Mon Sep 17 00:00:00 2001
>>>> +From: Yang Shi <yang.shi@windriver.com>
>>>> +Date: Mon, 26 Aug 2013 10:58:02 -0700
>>>> +Subject: [PATCH] irqbalance: Add status and reload commands
>>>> +
>>>> +Add status and reload commands for irqbalanced init script
>>>> +
>>>> +Signed-off-by: Yang Shi <yang.shi@windriver.com>
>>>> +---
>>>> + irqbalance.init |   12 +++++++++---
>>>> + 1 files changed, 9 insertions(+), 3 deletions(-)
>>>> +
>>>> +diff --git a/irqbalance.init b/irqbalance.init
>>>> +index d12d62c..f58bf55 100644
>>>> +--- a/irqbalance.init
>>>> ++++ b/irqbalance.init
>>>> +@@ -1,6 +1,6 @@
>>>> + #!/bin/sh
>>>> + #
>>>> +-# Copyright (c) 2012 Wind River Systems, Inc.
>>>> ++# Copyright (c) 2013 Wind River Systems, Inc
>>> What is this ?, as far as I understand it, the script + recipe is
>>> proprietary licensed to windriver.
>>>
>>> I see the windriver copyright notice was introduced with commit:
>>> 43b438f06897a390e16709b3f9e11355f325e2e9
>>> I seem to remember that we agreed that all contents of
>>> meta-virtualization should be MIT.
>> I'm not a lawyer, but as far as I am aware MIT licensing does not preclude
>> having a copyright owner; in fact the standard form of the MIT license text
>> begins with a copyright statement.
> Right. Copyright != proprietary. You see copyright on pretty much any type of
> licensed file, and I've seen plenty of MIT and GPL copyrighted files.
>
> But otherwise, David is correct .. this should have gone to the
> meta-virtualization
> list, not the yocto list.

Thanks guys. I will resend the patch to meta-virtulization list.

Yang

>
> Cheers,
>
> Bruce
>
>
>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


