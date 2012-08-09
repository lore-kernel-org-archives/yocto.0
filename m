Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABD08E004AB
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 05:32:54 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so201053qcs.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 05:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=MDCsnD6/eP1gF4+OXZ0i7porvIHs1AcncYcoRMLiNMI=;
	b=muiulCpnoYTKpUcpJrgcc17M5LqLHWShVs+A0NHUF/OkpSC9NAO6CYpFfPtHeoec7c
	FjBH7XQ4t6Kogt2QYStcz5MRwFgP40E1yvvoil2o5QO1gdSDY1G9fVlt7ErHqy6w03st
	3Ddv9X7vx7ufqYETTPR9hB/vs/N7X66Dp4poKWUQfraXeqxBG+WT2SXN1wiJuvROf8nX
	SPhk4qYg0uV/OgKjpQHh7Rac2EcizQNK3ubPBPjhRD4hsuxrQknJEPCOV79h4XG4ohzF
	4sC2XIPucOP4fuQvY4YOj17/9C63VpDG9jtVJ2s/EsdM11GhE+6OHnPz7/RBauafggW8
	tgWA==
MIME-Version: 1.0
Received: by 10.229.136.14 with SMTP id p14mr10678363qct.93.1344515573789;
	Thu, 09 Aug 2012 05:32:53 -0700 (PDT)
Received: by 10.229.247.198 with HTTP; Thu, 9 Aug 2012 05:32:53 -0700 (PDT)
In-Reply-To: <20120808214527.9e50d930-61d3-41fc-b26c-da05e297b83d.mhubig@imko.de>
References: <20120808193528.GA20546@imko.de> <5022C084.5040300@windriver.com>
	<20120808214527.9e50d930-61d3-41fc-b26c-da05e297b83d.mhubig@imko.de>
Date: Thu, 9 Aug 2012 08:32:53 -0400
Message-ID: <CADkTA4NVN20AeMzP6ED1yADbZhvrXnZYSaDMfWGxHFUgNpV-8Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Strange WARNING while do_kernel_configcheck()
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
X-List-Received-Date: Thu, 09 Aug 2012 12:32:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Aug 9, 2012 at 6:43 AM, Markus Hubig <mhubig@imko.de> wrote:
> On Wed, Aug 08, 2012 at 03:39:48PM -0400, Bruce Ashfield wrote:
>> On 12-08-08 03:35 PM, Markus Hubig wrote:
>> >Hello @all,
>> >
>> >I'm working on a bsp vor the taskit stamp9g20 cpu module.
>> >
>> >I have a bbappend file for the linux-yocto_3.2 kernel which was ones working
>> >but now (after updating the denzil branch from 7.0 to 7.0.1) I get a strange
>> >error while building the kernel.
>> >
>> >I managed to track the problem down to a warning at the do_kernel_configcheck
>> >task ...
>> >
>> >The warning I get is:
>> >
>> >| NOTE: validating kernel configuration
>> >| WARNING: Can't find any BSP hardware or required configuration fragments.
>> >| WARNING: Looked at
>> >|<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/hdw_frags.txt
>> >| and
>> >|<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/required_frags.txt
>> >| in directory:
>> >|<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs
>> >
>> >Which seems to be the wrong path to look, course there is no such path like
>> >
>> ><snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs
>> >
>> >the whole stuff is in:
>> >
>> ><snip>/linux/meta/cfg/standard/default/stamp9g20
>> >
>> >maybe I made a mistake in my linux-yocto_3.2.bbappend file?
>>
>> Nope. But there was an interface change to that tool in particular in
>> master, so if you've ended up with kern-tools that are mismatched to
>> the bbclass .. you'd end up with them looking in the wrong place.
>
> Hmm ok but since I use denzil, and denzil provides the bbclass *and* the
> kernel revision for the meta branch ... why don't they match?

It could be one of the updates merged back to the -stable release. I'll fire up
a denzil build in the next while to see if I get the same results.

Cheers,

Bruce

>
> Cheers, Markus
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

