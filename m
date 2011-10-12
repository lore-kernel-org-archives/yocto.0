Return-Path: <tim.bird@am.sony.com>
Received: from AM1EHSOBE003.bigfish.com (am1ehsobe003.messaging.microsoft.com
	[213.199.154.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6BD5E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 10:20:25 -0700 (PDT)
Received: from mail8-am1-R.bigfish.com (10.3.201.242) by
	AM1EHSOBE003.bigfish.com (10.3.204.23) with Microsoft SMTP Server id
	14.1.225.22; Wed, 12 Oct 2011 17:20:21 +0000
Received: from mail8-am1 (localhost.localdomain [127.0.0.1])	by
	mail8-am1-R.bigfish.com (Postfix) with ESMTP id 06642C90227;
	Wed, 12 Oct 2011 17:20:21 +0000 (UTC)
X-SpamScore: -8
X-BigFish: VPS-8(zzbb2dK9371K1432N98dKbdf2ozz1202hzzz2fh668h839h93fh61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail8-am1: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail8-am1 (localhost.localdomain [127.0.0.1]) by mail8-am1
	(MessageSwitch) id 1318440019828744_22652;
	Wed, 12 Oct 2011 17:20:19 +0000 (UTC)
Received: from AM1EHSMHS018.bigfish.com (unknown [10.3.201.246])	by
	mail8-am1.bigfish.com (Postfix) with ESMTP id BAE141888058;
	Wed, 12 Oct 2011 17:20:19 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by AM1EHSMHS018.bigfish.com
	(10.3.206.21) with Microsoft SMTP Server id 14.1.225.22;
	Wed, 12 Oct 2011 17:20:15 +0000
Received: from mail1x.sgo.in.sel.sony.com (mail2.sgo.in.sel.sony.com
	[43.130.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with ESMTP id p9CHKEld021439;	Wed, 12 Oct 2011 17:20:14 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	p9CHK3C0001415;	Wed, 12 Oct 2011 17:20:03 GMT
Message-ID: <4E95CC3E.9010308@am.sony.com>
Date: Wed, 12 Oct 2011 10:19:58 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95C787.3020000@linux.intel.com>
In-Reply-To: <4E95C787.3020000@linux.intel.com>
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
X-List-Received-Date: Wed, 12 Oct 2011 17:20:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 10/12/2011 09:59 AM, Darren Hart wrote:
> On 10/11/2011 04:49 PM, Tim Bird wrote:
>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>> As part of working on meta-tiny, I've come across a need (want?) to
>>> present users with the ability to select some set of features in a local
>>> configuration file that will impact the build of the image and a set of
>>> recipes.
>>
>> Can you tell me more about meta-tiny?  this is the first I've heard
>> about this (sorry if discussion went by on the mailing list and I
>> missed it), and I'm very interested.
>>
>> I'm currently doing some size-related work for Sony (including
>> some work to support 4K stacks).
>>
> 
> Perhaps while I have the attention of a few interested parties, it would
> be a good time for a poll. I'm interested in your motivation for smaller
> images.
> 
> Are you building SoC's with memory on die and needing to keep the memory
> footprint down to save precious die real-estate?

No.

> Are you looking at creating mass-market products and saving a few
> pennies on the flash storage translates to real money, so you want to
> minimize the physical size?

Yes. - this is the primary one for me/Sony.  We have dual-core/dual-OS cameras
where the ram budget for the Linux side of the device is only 10 meg.
We are working on medical products with flash budgets of 8 meg and ram
budgets of 4 meg.

We are currently doing a fair amount with execute in place, to conserve
RAM versus flash.

> Are you concerned with boot time, and have connected larger image sizes
> with longer boot times?
Yes.

> Is there another motivating factor for your interest in small images?
Smaller images should theoretically run faster, due to less pressure
on CPU caches.  I don't know of any meaningful measurements of this,
but it's an interesting possibility.

Also, it's nice to minimize the memory footprint to reduce power
consumption.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


