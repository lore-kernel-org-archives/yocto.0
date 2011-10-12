Return-Path: <tim.bird@am.sony.com>
Received: from TX2EHSOBE004.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF488E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 12:13:26 -0700 (PDT)
Received: from mail51-tx2-R.bigfish.com (10.9.14.246) by
	TX2EHSOBE004.bigfish.com (10.9.40.24) with Microsoft SMTP Server id
	14.1.225.22; Wed, 12 Oct 2011 19:13:21 +0000
Received: from mail51-tx2 (localhost.localdomain [127.0.0.1])	by
	mail51-tx2-R.bigfish.com (Postfix) with ESMTP id 9F9CF14D81FA;
	Wed, 12 Oct 2011 19:13:21 +0000 (UTC)
X-SpamScore: -15
X-BigFish: VPS-15(zzbb2dK9371K1432N98dKzz1202hzz8275dhz2fh668h839h93fh61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail51-tx2: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail51-tx2 (localhost.localdomain [127.0.0.1]) by mail51-tx2
	(MessageSwitch) id 1318446801296824_20829;
	Wed, 12 Oct 2011 19:13:21 +0000 (UTC)
Received: from TX2EHSMHS037.bigfish.com (unknown [10.9.14.253])	by
	mail51-tx2.bigfish.com (Postfix) with ESMTP id 369C11198051;
	Wed, 12 Oct 2011 19:13:21 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by TX2EHSMHS037.bigfish.com
	(10.9.99.137) with Microsoft SMTP Server id 14.1.225.22;
	Wed, 12 Oct 2011 19:13:20 +0000
Received: from mail1x.sgo.in.sel.sony.com (mail.sgo.in.sel.sony.com
	[43.130.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with ESMTP id p9CJDJe6024199;	Wed, 12 Oct 2011 19:13:19 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	p9CJD8wv032613;	Wed, 12 Oct 2011 19:13:08 GMT
Message-ID: <4E95E6BF.6010802@am.sony.com>
Date: Wed, 12 Oct 2011 12:13:03 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95B87E.6050300@linux.intel.com>
In-Reply-To: <4E95B87E.6050300@linux.intel.com>
X-OriginatorOrg: am.sony.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 19:13:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 10/12/2011 08:55 AM, Darren Hart wrote:
> meta-tiny is my experimental layer where I'm looking at what we can
> build with our existing sources and infrastructure. I've found that we
> can cut the image size to about 10% of core-image-minimal without
> changes to source code, but dropping a lot of functionality. We can get
> to something like 20% while still maintaining ipv4 networking.

This sounds cool.

> This "recipe features" thread stems from this work. Before I can
> integrate something like this into Yocto, it needs a more suitable user
> exposed configuration mechanism.
> 
> I'm working from a public git repository, but it isn't in sync with my
> local development branch as things are changing by the minute still. I
> will be pushing this to a Yocto hosted git repository in time for ELCE,
> but it will still be development/experimental. If you are interested in
> seeing what is there now, you can have a look to get an idea of what I'm
> doing. Please note this tree WILL rebase, it WILL fail to build, it WILL
> destroy your tmp dir, your sstate, and waste your time as you try and
> pick through the various options to get something that builds and boots
> ;-) Also, this repo will disappear in the next few days, but if you just
> want to see it, it's here:
> 
> http://git.infradead.org/users/dvhart/meta-tiny.git
> 
>>
>> I'm currently doing some size-related work for Sony (including
>> some work to support 4K stacks).
> 
> I'd like to have a look - is there anything out there I can read through?
Not at the moment.  I've been meaning to send my patch
for 4K stack support for ARM to linux-ARM, but haven't had
the time.  I'll see if I can push it out this week (but it
might collide with the 3.2 merge window, and I wouldn't
expect it to go straight in without it dwelling in someone's
-next tree for a bit.)

In our cameras, this saves about 300K of kernel memory.

I have no problem sending that to you if you'd like.  Just let
me know.  If mainline doesn't take it straight-away for some reason,
I'll probably hand it off to the linux-tiny project, which is back
in full swing.

> Post ELCE, I'd like to look at more source level changes we can make. In
> particular I'd like to see the >200k bzImage increase for ipv4 come
> down. In addition to that, I'm hoping to take a closer look at dynamic
> memory usage in the Linux kernel for small systems.

I have some patches for monitoring slab allocations that are helpful
for this (also something I should have already mainlined, but didn't
get to... ;-(

 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


