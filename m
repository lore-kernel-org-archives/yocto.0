Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05736E00AAA; Fri, 20 Jan 2017 06:19:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.66 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74C6AE009CA
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 06:19:14 -0800 (PST)
Received: by mail-oi0-f66.google.com with SMTP id u143so5633514oif.3
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 06:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=56WJ09QS2AbLun2/3HEp4G34WflQ1lJk0lFkxWuB3ns=;
	b=R7OCRjm5PzewaE2+Ze3BoR0trRXLETJDrdkLowcSLOQLeKSXj9u/7CupE5mgoSabW2
	XP0kStKJ9+seDNONALdDadcYPe9IQN8fvQLxiYzmB6H3VG0yWD+BnkG7UKHwmec0TsFY
	sRuuoqsNd9Wbw+wElGv24eg7wzNf4TAE7FKoCaL0oMkCAevHydZjQL+i9bVABX1awPkt
	IGa1hqPLZRnJKkHaUq4qZbTWxdLLhTMdN0sn8vNK2yGWSs3phpAyfjZZIVbwBZZZYBl0
	Ji5kK/+rqxcXlvwPTtPq5DGjGqq1lOU2ekwtVhKqK9vF85kKwnZKl95urs09dp7lFDci
	cWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=56WJ09QS2AbLun2/3HEp4G34WflQ1lJk0lFkxWuB3ns=;
	b=MxJ7+2s6RoXleBRvlkO9Ugbzzxu23M6Eg6k6cArAq1CsQmcBnyBYyoAEeOR3rcoNWo
	QLevOtSASQs9jcCPJK77bPPolBq6a8/be2lqWyIncU8HhBX2RKRTFvfZ5oGRXaBHLesi
	6JtDqhAW5Kx6HZG+bECvvBagFH1aiuXX4N4e02++8Jo+ONC576W3Bf4vEIK2pTWbHg/h
	WxHbmFhT1sOBmYUYZMYo5QtV87mrtCb+Z157o2s5gD6SjSx0KfKoco6vVIYjOSVQOfpR
	PJSHWAaCl7jPyghDcT4gMa+MhPr60HGgOeGSTizjFz0T0LVqkEaDxEULFa9l4GRgInvW
	CK3Q==
X-Gm-Message-State: AIkVDXLM1pewHF/5LHj4C1sBQWdFiDaB6zpxfkqWaX+omVtwgBVC3OWfsHueQFUV4w/j7yOdIHxf/II19spP0g==
X-Received: by 10.202.91.85 with SMTP id p82mr270285oib.49.1484921954093; Fri,
	20 Jan 2017 06:19:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.46.9 with HTTP; Fri, 20 Jan 2017 06:19:13 -0800 (PST)
In-Reply-To: <5e9b5d05-63a0-81c2-f609-8227c5ef6d26@windriver.com>
References: <CAFSKS=Mr_Q4xhCKT3YEpkyFBAom9OLw0tD+aAbiuti3fb2nxuA@mail.gmail.com>
	<5e9b5d05-63a0-81c2-f609-8227c5ef6d26@windriver.com>
From: George McCollister <george.mccollister@gmail.com>
Date: Fri, 20 Jan 2017 08:19:13 -0600
Message-ID: <CAFSKS=NWd-oEv__khX1cM74uHiivwnn8f9ATQAgODaXCoc+d5w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Correct way to use a custom bsp .scc file in morty
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
X-List-Received-Date: Fri, 20 Jan 2017 14:19:17 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 19, 2017 at 5:24 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 2017-01-19 6:20 PM, George McCollister wrote:
>>
>> What's the correct way to use a custom bsp .scc file located in my
>> custom bsp layer? For purposes of this email let's say it's name is
>> myplatform-preempt-rt.scc. If I specifically add it to the
>> yocto-linux-rt_4.4 SRC_URI it appears to get processed twice by scc
>> according to the meta-series output file. It then tries to apply
>> patches to standard/preempt-rt/base that don't apply. When building on
>> a intel-core2-32 platform, intel-core2-32-preempt-rt.scc only gets
>> processed once and no incorrect patches are applied.
>
>
> Something could have broken, I never rule out bugs!
>
> Morty had some different semantics than the newer branches (which
> are simplified compared to the auto-resume logic in old releases).
>
> That being said, the capability to have a BSP description in the
> SRC_URI is there, and did work during that release cycle. To have
> it work, you do need the right format in the BSP .scc file, in
> particular something with the KMACHINE and KTYPE descriptions will
> be seen as an entry point, and not trigger the re-application of
> the inherited patches.
>
> Is there any way that I can see the contents of that .scc file ?
> Otherwise, I can spin up a morty build and mock something up
> myself.

Bruce,

I stripped down my bsp later and pushed it github. You can find the
BSP .scc (and the files it includes) here:
https://github.com/gmccollister/meta-orion-minimal-bsp/tree/master/recipes-kernel/linux/linux-yocto/orion-io

The linux-yocto-rt_4.4.bbappend that adds orion-io-preempt-rt.scc to
the SRC_URI is here:
https://github.com/gmccollister/meta-orion-minimal-bsp/blob/master/recipes-kernel/linux/linux-yocto-rt_4.4.bbappend

-George

>
> Bruce
>
>
>>
>> If I don't include it in the yocto-linux-rt_4.4 SRC_URI it's never
>> applied at all. I'm wondering if this a new problem with the last big
>> push to morty since I didn't notice this before.
>>
>> I also verified that I can make myplatform-preempt-rt.scc work by
>> doing the following (only shows as processed once in meta-series and
>> no incorrect patches applied):
>> bitbake -c cleanall linux-yocto-rt
>> bitbake -c unpack linux-yocto-rt
>> Manually copy myplatform-preempt-rt.scc and related .scc, .cfg files
>> to the following path:
>>
>> work/myplatform-oe-linux-gnueabi/linux-yocto-rt/4.4.36+gitAUTOINC+b846fc6436_61d7bf47fe-r0/kernel-meta/bsp/myplatform/
>> bitbake -c compile linux-yocto-rt
>>
>> Regards,
>> George McCollister
>>
>

