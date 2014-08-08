Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86FBCE00543; Fri,  8 Aug 2014 08:58:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C9ADE0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 08:58:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A14D127E052;
	Fri,  8 Aug 2014 15:57:58 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id n3KH0-7Yd5f4; Fri,  8 Aug 2014 15:57:57 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 90E1C27E031;
	Fri,  8 Aug 2014 15:57:57 +0000 (UTC)
Message-ID: <53E4F384.4050300@dynamicdevices.co.uk>
Date: Fri, 08 Aug 2014 16:57:56 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
	<53E3512E.5090008@dynamicdevices.co.uk>
	<2374073.Q4LByM6bcI@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2374073.Q4LByM6bcI@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: RFC: Improving the developer workflow
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
X-List-Received-Date: Fri, 08 Aug 2014 15:58:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Paul,
> Personally with how fragile package management can end up being, I'm convinced 
> that full-image updates are the way to go for a lot of cases, but ideally with 
> some intelligence so that you only ship the changes (at a filesystem level 
> rather than a package or file level). This ensures that an upgraded image on 
> one device ends up exactly identical to any other device including a newly 
> deployed one. Of course it does assume that you have a read-only rootfs and 
> keep your configuration data / logs / other writeable data on a separate 
> partition or storage medium. However, beyond improvements to support for 
> having a read-only rootfs we haven't really achieved anything in terms of out-
> of-the-box support for this, mainly due to lack of resources.
>
> However, whilst I haven't had a chance to look at it closely, there has been 
> some work on this within the community:
>
> http://sbabic.github.io/swupdate/swupdate.html
> https://github.com/sbabic/swupdate
> https://github.com/sbabic/meta-swupdate/
>  
>

I had a quick look at this. It's interesting. If I am reading this
correctly it's based on the old

-> Bootloader runs Partition A
-> Update Partition B, set Bootloader to run Partition B
->   On failure stay on partition A and retry update.
-> Bootloader runs Partition B
-> Update Partition A, set Bootloader to run Partition A
->  etc.

We've done this type of thing before and it works well. Of course the
drawback is the amount
of flash you need to achieve it but it is a good robust system.

I'd be interested to see how this could work with filesystem deltas say.
I don't _think_ that is
documented here?

...

Thinking a little further what would also really interest me would be to
consider using the
transactionality of the underlying file-system or block-management layer
for the update process.

Given nowadays journalling and log-structure file-systems are already
designed to fail-back when
file/meta-data modifications are interrupted surely we should be able to
start a macro-transaction
point at the start of the  partition update,  and if that update doesn't
complete with a macro-commit
then the f/s layer should be able to automatically roll itself back?
Perhaps the same could be done at
a block management layer?

Cheers,

Alex


