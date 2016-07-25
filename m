Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CB0FE0073D; Mon, 25 Jul 2016 05:49:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36EC4E006C7;
	Mon, 25 Jul 2016 05:49:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u6PCmtvQ013744
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 25 Jul 2016 05:48:58 -0700 (PDT)
Received: from server.local (147.11.116.196) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 25 Jul 2016 05:48:54 -0700
To: Chris Tapp <opensource@keylevel.com>
References: <829C58DE-3920-4E09-836C-2B75E0836725@keylevel.com>
	<c798ca0d-2c13-1ca5-978a-6d4a75efd8aa@windriver.com>
	<1B816A0A-7169-4CD9-9003-B9564208EB0F@keylevel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <bc8a545b-fce8-0ba1-c5e0-431418918f46@windriver.com>
Date: Mon, 25 Jul 2016 08:48:54 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1B816A0A-7169-4CD9-9003-B9564208EB0F@keylevel.com>
Cc: meta-intel@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel bug 109051
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
X-List-Received-Date: Mon, 25 Jul 2016 12:49:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-07-25 2:47 AM, Chris Tapp wrote:
> Hi Bruce,
>
>> On 25 Jul 2016, at 03:40, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>>
>> On 2016-07-24 6:09 PM, Chris Tapp wrote:
>>> I’m using the meta-intel “valley-island” BSP under “krogoth” and think I may have run into https://bugzilla.kernel.org/show_bug.cgi?id=109051.
>>>
>>> I’m using a J1900 (listed as affected) and the system locks up totally (running a graphics-based application) after an indeterminate period.
>>>
>>> Using the scripts referenced on the related bug page for comment 437 (https://bugzilla.kernel.org/show_bug.cgi?id=109051#c437) appears to resolve the issue.
>>>
>>> Is anyone aware of this and/or know if it will be fixed within the Yocto kernel tree?
>> Not unless someone sends a patch.
>>
>> If you have a platform showing the error, and have tested a fix .. why
>> not just send the patch ?
> Thanks Bruce,
>
> Unfortunately, I’ve not found one yet. The scripts I mention just disable c-states as the problem seems to be an interaction between the i915 driver and power management. I can probably live with this for my application, but it still lives a window during boot and the script running where a lockup could happen - unlikely, as the bug thread implies the problem is more likely to show when the system has idle CPU resources.

Aha. Sorry about that. I misread your description to mean you had a fix.

So my answer should have been: "I'm not aware of the issue, or a fix that
is in flight".

>  From the thread it looks as if it may be possible to produce a patch as there are reportes that the problem may be fixed / does not show in later kernel versions (4.6?), but it also looks as if there may be more than one patch required (in different areas).
>
> I’ll have a dig, see what I can find and try to produce a patch set - I’m not a kernel expert, so it may take some time ;-)

Did you log a issue in bugzilla against meta-intel ? That's a good way to
get more eyes on a problem (depending on the current load of issues).

Bruce

>
>> Bruce
>>
>>> --
>>>
>>> Chris Tapp
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>


