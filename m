Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1ED5E007CA; Sun,  3 Aug 2014 10:32:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from serv01.siteground282.com (ns1.siteground282.com [184.154.233.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B45CE0078E
	for <yocto@yoctoproject.org>; Sun,  3 Aug 2014 10:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=/dMai1xKkSDhWEFV832mbVsN/tQS3N2hlStaCA/P8zw=; 
	b=DyuFMb+4dYQX4rIZVA1BuI20/TrpvhG92x/xxifrLqU5f2MWiQiQV15qdyMYF7L3NqccNaKpFgSZdG0XPPrChQ6Nk3B/SqyNXT5ipex+AF4LWDnUN0WQ76o5HUsFo4l1XHj4wc0APGYPGhJoEqniLQndK0ncgT3tFtEdQ0yl7x8=;
Received: from [127.0.0.1] (port=32792 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1XDyr0-0005EC-UC; Sun, 03 Aug 2014 11:41:50 -0500
MIME-Version: 1.0
Date: Sun, 03 Aug 2014 11:41:50 -0500
From: gmane@reliableembeddedsystems.com
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <4137831.cdWht7PMij@peggleto-mobl5.ger.corp.intel.com>
References: <53BD0C5B.3090506@reliableembeddedsystems.com>
	<4137831.cdWht7PMij@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <437a1f01163768e1c5e53c1c1f397bc5@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/0.9.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - serv01.siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Mailman-Approved-At: Mon, 04 Aug 2014 08:11:18 -0700
Cc: yocto@yoctoproject.org
Subject: Re: automated hardware testing
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
X-List-Received-Date: Sun, 03 Aug 2014 17:32:24 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2014-07-14 05:46, Paul Eggleton wrote:
> 
> Absolutely. As a starting point I'd recommend the following section of 
> the
> manual:
> 
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#performing-automated-runtime-testing

Thanks!

> 
> Some of the capabilities in this area were added after 1.6, i.e. they 
> are
> only in master.

I use a pretty recent yocto-autobuilder, but I guess I will need to 
update poky as well. Right?

> 
> Cheers,
> Paul

Regards,

Robert

