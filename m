Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1FAEE006B6
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 18:54:13 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[10.79.148.145]) by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1WDPvy-0002vs-Kv; Wed, 12 Feb 2014 02:52:23 +0000
Message-ID: <52FAE24C.9060902@twobit.us>
Date: Tue, 11 Feb 2014 21:54:04 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20131104 Icedove/17.0.10
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>, 
	Randy MacLeod <randy.macleod@windriver.com>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
	<52FA83EF.7000805@windriver.com>
	<20140212011520.GA23405@deserted.net>
In-Reply-To: <20140212011520.GA23405@deserted.net>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wildcards in place of version numbers.
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
X-List-Received-Date: Wed, 12 Feb 2014 02:54:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/11/2014 08:15 PM, Joe MacDonald wrote:
> [Re: [yocto] [meta-selinux][PATCH 0/4] Begin mingrating bbappends
> to use wildcards in place of version numbers.] On 14.02.11 (Tue
> 15:11) Randy MacLeod wrote:
> 
>> On 14-02-06 10:09 PM, Philip Tricca wrote:
>>> The current trend in OE recipes seems to use a wildcard in
>>> place of version numbers for bbappends. AFAIK this is a
>>> relatively new feature but a welcome one. This is a sort of RFC
>>> in that I think it's probably best for meta-selinux to use this
>>> mechanism to keep from having to rename bbappends everytime
>>> something in oe-core changes. I guess the right way to
>>> implement this is to change the bbappends in meta-selinux when
>>> the version numbers change upstream.
>>> 
>> 
>> Hi Philip,
>> 
>> This might work out but I'm somewhat attached to the manual
>> process.
> 
> It's a change I'd been advocating for quite some time now.
> (Actually, it was something I was somewhat surprised wasn't
> possible when I first came to bitbake in general, so at least to me
> this change seems pretty sensible.)
> 
> The risks you outline are real, but historically this hasn't shown 
> itself to be a significant problem so far.  The types of things
> this'll hit on are characterized well in Phil's RFC set.  Stuff
> like sudo and libcgroup which require bbappends but the contents
> haven't had any meaningful change since the stone age.  :-)
> 
> I think this is actually a win for meta-selinux in terms of
> reducing the number of commits like f0adb425.
> 
> I've already staged the proposed change in my tree and it seems
> happy, so I'm inclined to merge it, FWIW.

I appreciate both sides of this being represented. I agree with Joe
that it's an obvious fit for simple bbappends that require little more
than --(enable|with)-selinux. The more involved bbappends may be
better suited to manual version number changes.

If any of the recipes from this set fall into the later category I
won't object to dropping them and favoring the process manual. But as
Joe points out, I think this approach is a given for the likes of
sudo, libcgroup etc.

Thanks,
Philip

> 
> -J.
> 
>> Manual matching shows that someone is: - paying attention, -
>> fixed the bbappend version number, - gotten someone else to
>> review, - hopefully built the software for at least one arch, -
>> hopefully tested run-time for at least one arch.
>> 
>> With a wildcard matching rule, there will be times when the 
>> underlying package has changed and then the recipe changes and 
>> perhaps code patches still apply but are to some extent broken. 
>> Have people accepted this as a possible outcome that they believe
>> will be rare? Have you tried your approach with a few different
>> oe-core baselines such as dora, random, master?
>> 
>> I'm not agaist this change but I'm trying to be sure that people 
>> agree that it's a good approach and that we've tested the idea 
>> with some historical changes.
>> 
>> Thanks,
>> 
>> ../Randy
>> 
>> 
>>> Philip Tricca (4): busybox: Use wildcard for version number in
>>> busybox bbappend. libcgroup: Use wildcard for version number in
>>> libcgroup bbappend. sudo: Use wildcard for version number in
>>> sudo bbappend. libxcb: Use wildcard for version number in
>>> libxcb bbappend.
>>> 
>>> recipes-core/busybox/busybox_%.bbappend        |   87
>>> ++++++++++++++++++++++++ 
>>> recipes-core/busybox/busybox_1.21.1.bbappend   |   87
>>> ------------------------ 
>>> recipes-core/libcgroup/libcgroup_%.bbappend    |   12 ++++ 
>>> recipes-core/libcgroup/libcgroup_0.38.bbappend |   12 ---- 
>>> recipes-extended/sudo/sudo_%.bbappend          |    3 + 
>>> recipes-extended/sudo/sudo_1.8.8.bbappend      |    3 - 
>>> recipes-graphics/xcb/libxcb_%.bbappend         |    8 +++ 
>>> recipes-graphics/xcb/libxcb_1.9.3.bbappend     |    8 --- 8
>>> files changed, 110 insertions(+), 110 deletions(-) create mode
>>> 100644 recipes-core/busybox/busybox_%.bbappend delete mode
>>> 100644 recipes-core/busybox/busybox_1.21.1.bbappend create mode
>>> 100644 recipes-core/libcgroup/libcgroup_%.bbappend delete mode
>>> 100644 recipes-core/libcgroup/libcgroup_0.38.bbappend create
>>> mode 100644 recipes-extended/sudo/sudo_%.bbappend delete mode
>>> 100644 recipes-extended/sudo/sudo_1.8.8.bbappend create mode
>>> 100644 recipes-graphics/xcb/libxcb_%.bbappend delete mode
>>> 100644 recipes-graphics/xcb/libxcb_1.9.3.bbappend
>>> 
>> 
>> 


