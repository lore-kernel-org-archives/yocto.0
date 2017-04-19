Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 480E2E00AD0; Wed, 19 Apr 2017 11:02:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8B86E00AC8
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 11:02:36 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v3JI2Sqr018074
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Apr 2017 11:02:29 -0700 (PDT)
Received: from server.local (128.224.20.183) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 19 Apr 2017 11:02:27 -0700
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <B92317128F384E2BAC28643061FC76E1@PAULD>
	<a41596d9-1ef6-90f2-3c92-79755935f443@windriver.com>
	<AA060EB406534625A8A91548091402B9@PAULD>
	<5f9b7995-771a-d9e2-3ceb-329569ee6e92@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <0eefa8a6-2bdb-f582-cbe5-40c67719513e@windriver.com>
Date: Wed, 19 Apr 2017 14:02:27 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <5f9b7995-771a-d9e2-3ceb-329569ee6e92@windriver.com>
Subject: Re: Patch failures
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
X-List-Received-Date: Wed, 19 Apr 2017 18:02:39 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-04-19 12:24 PM, Bruce Ashfield wrote:
> On 2017-04-17 2:18 AM, Paul D. DeRocco wrote:
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>
>>> I can't say from what you've provided why the BSP description isn't
>>> valid, but if the kernel recipe and layers are something I
>>> can look at,
>>> I can debug more.
>>>
>>> There were some changes between those releases that tweaked the kernel
>>> meta-data processing .. and that could be the issue, but
>>> again, I can't
>>> say without seeing all the details.
>>
>> I've attached a zip containing the stuff I've added. It also includes the
>> log file showing the patch errors. It also shows a log of a few thousand
>> identical errors from grub-efi, having to do with a 32 vs 64 mismatch. In
>> the past, my system has always booted via Syslinux, not Grub, so I don't
>> know what changed between Fido and Morty, or if Syslinux doesn't support
>> 64-bit booting. So there's another unrelated question.
>>
>
> I finally got a chance to look at the layers, and I can see that the
> processing code would in fact pick/generate a generic board description
> and that could lead you into the failures you are seeing.
>
> I assume you are building for MACHINE="chroma-bsp" and the linux-yocto-rt
> kernel recipe ?
>
> If you can confirm the details, and anything else, I can mock up a
> recipe space BSP description that should work.

I take that back. After debugging, I see that you did have a recipe
space BSP definition, and it is in fact being picked up.

What you are seeing is an optimization and simplification in the way
that patches are processed (that I introduced in morty). That
simplication is:

   - if a patch is listed on the SRC_URI or in a .scc on the SRC_URI
     it is always applied.

Sounds simple, since it is. And that replaced the logic that was capable
of looking into a patch queue, comparing it to the branch being built
and would determine if anything needed to be pushed by walking the
commits. That process was slow, and error prone, since similarly named
commits could trigger an early start to patching and hence a patch
failure that wasn't easy to catch.

Since your BSP definition is on the SRC_URI, and is including the
preempt-rt kernel type, the rule I stated above applies and it tries
to (re)push all the patches.

The fix is simple, change the line to this:

   include ktypes/preempt-rt/preempt-rt.scc nopatch

And you'll inherit the preempt-rt branch + configurations, but not
the patches.

Honestly, I can't say if that was documented, so I'll go dig around
and see if it was.

Cheers,

Bruce

>
> Bruce
>
>> The history is this: I originally developed this as a 32-bit OS under
>> Danny, then updated it with no problems to Fido. I wanted to try the x32
>> ABI, since the extra registers could be very useful (lots of SSE SIMD in
>> the application). Perhaps I should have first tried updating to Morty
>> without x32. I had to change some version numbers (the kernel, systemd,
>> Samba), and of course add the x32 tune. For Samba, I added a few layers
>> from OE.
>>
>


