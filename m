Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BB35E00784
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 17:34:30 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[10.79.148.145]) by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1VoNp9-0002RJ-78; Thu, 05 Dec 2013 01:33:51 +0000
Message-ID: <529FD818.4080300@twobit.us>
Date: Wed, 04 Dec 2013 20:34:16 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>
References: <20131021201510.GB27412@deserted.net>
	<1386106541-28801-1-git-send-email-joe@deserted.net>
In-Reply-To: <1386106541-28801-1-git-send-email-joe@deserted.net>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}
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
X-List-Received-Date: Thu, 05 Dec 2013 01:34:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/03/2013 04:35 PM, Joe MacDonald wrote:
> (resending, this time including the list ...)
> 
> [Re: [meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}] On
> 13.10.21 (Mon 16:15) Joe MacDonald wrote:
> 
>> [[meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}] On 13.10.21
>> (Mon 18:06) Philip Tricca wrote:
>>
>>> The 'semodule' utility can operate on compresed modules so the only
>>> cost of this change is a slower module load time when invoking
>>> 'semodule -i' on a running system (increased CPU load due to bzip2).
>>> That said my tests show more than 100M reduction in ext3 image size
>>> of core-image-selinux. This last metric is a bit skewed as the image
>>> includes two policies. Still, a reduction in the size of the refpolicy
>>> package by 1/2 is significant.
>>
>> This is included in the batch of updates I've merged and are currently
>> staging in my tree.  FWIW, on my build I saw a similar reduction in size
>> to what you've reported, ~110MB, with a minor hit at load time.  As
>> expected there's also an increase in memory requirements at load time,
>> so I'm poking around a bit to see what this does to the lower-end
>> configurations I've got kicking around.  It'd be really nice if this was
>> an option rather than an on/off thing.
> 
> This took rather longer than I'd hoped.  :-/
> 
> Anyway, I tried a bunch of different configurations and didn't find a huge hit
> on memory requirements by doing this, though I still think there's an advantage
> to making this an option that can be turned off for folks where storage is cheap
> and memory and processing power is at a premium.  That, and the discussion on
> the SELinux mailing list along the same line where the general feeling was that
> smaller policies are better achieved by actually having less policy rather than
> compressing it, led me to this idea.
> 
> A DISTRO_FEATURE that is on by default and incorporates your patch.  What do you
> think, Phil?

Sounds good Joe. Thanks for getting this one in.

- Philip


