Return-Path: <Rainer.Koenig@ts.fujitsu.com>
Received: from dgate20.ts.fujitsu.com (dgate20.ts.fujitsu.com [80.70.172.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC535E00303
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2011 04:52:53 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1536-bit key; insecure key) header.i=Rainer.Koenig@ts.fujitsu.com;
	x-dkim-adsp=none (insecure policy)
DomainKey-Signature: s=s1536a; d=ts.fujitsu.com; c=nofws; q=dns;
	h=X-SBRSScore:X-IronPort-AV:Received:X-IronPort-AV:
	Received:Message-ID:Date:From:User-Agent:MIME-Version:To:
	Subject:References:In-Reply-To:X-Enigmail-Version:
	Content-Type:Content-Transfer-Encoding;
	b=LRbL7tuGVex00/ckwwv38FwbgPLv/pke4sYwTjcUb8Eo2oFO9AI1Pzab
	r4goioD2X8uiIZbGEQQ6WvWfcl0JApaMpqb/4MTtARhCY6DCrfs1NDEf+
	FbkUxdLdMZSyYO9n7AZsStUUo4BUlvdxzAT7MQ8jnQef2uS+Tjop6WhUR
	saHXQxZTPKGg3zrRlN98FwD0IFdppfpNr+jyLe6PWJ/LHkpWu49sTaWT3
	t4SMU1iBAdfwG3WayZv5FWX933xCc;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=ts.fujitsu.com; i=Rainer.Koenig@ts.fujitsu.com;
	q=dns/txt; s=s1536b; t=1321966374; x=1353502374;
	h=message-id:date:from:mime-version:to:subject:references:
	in-reply-to:content-transfer-encoding;
	bh=Qzh6VV0nFpKqFTXqcTifgx9+iWfAIFE9gwwO+2u/iVU=;
	b=gCanN/t8TRadojOe/cUYIK9OYMnQyQVvLgV59avvYTzV9Fbind5qV4yh
	M9slS/RwCW4+htpnQGtQA9IqQalMyvQ0E5K6rJFygxH8a2PePgkaemS5L
	am5WXQVbZJpOITzlidBp8GtRTYE6UJ5Mln3YvGYEBuuwYgnTTllrtjR+5
	Xck6PLz9oUmTuu71D5whXWVFmy/koamnornEpvBmcA1vCCteLlqeaAL0K
	exrsqe6kzcVj76mssgs2j2spt/VP/;
X-SBRSScore: None
X-IronPort-AV: E=Sophos;i="4.69,553,1315173600"; d="scan'208";a="79609856"
Received: from abgdgate40u.abg.fsc.net ([172.25.138.90])
	by dgate20u.abg.fsc.net with ESMTP; 22 Nov 2011 13:52:51 +0100
X-IronPort-AV: E=Sophos;i="4.69,552,1315173600"; d="scan'208";a="123932266"
Received: from abg3595c.abg.fsc.net (HELO [172.25.145.158]) ([172.25.145.158])
	by abgdgate40u.abg.fsc.net with ESMTP; 22 Nov 2011 13:52:51 +0100
Message-ID: <4ECB9B23.5060305@ts.fujitsu.com>
Date: Tue, 22 Nov 2011 13:52:51 +0100
From: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20111110 Icedove/3.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>	<94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>	<4EC6280B.1010308@communistcode.co.uk>
	<4EC6BC19.60501@linux.intel.com> <1321649677.9657.24.camel@elmorro>
In-Reply-To: <1321649677.9657.24.camel@elmorro>
X-Enigmail-Version: 1.0.1
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Tue, 22 Nov 2011 12:52:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Tom,

On 18.11.2011 21:54, Tom Zanussi wrote:

> I'd be happy to work with anyone who wants to in helping getting
> something like that started, whether it be a variation on the above, or
> something from scratch, whatever.

I just added a few FAQ entries to the wiki. I used the questions from
Chris Tapp and what came to my mind recently. And I used categories, so
that there is a hope for a sort of workflow. See

https://wiki.yoctoproject.org/wiki/Category:FAQ

for details.

> In any case, it would be nice to have some concrete ideas on what would
> make for a good walked-through example or set of examples...

Actually I'm still thinking if the wiki approach is helpful or if
someone (maybe even me) should write a book. ;-)

Regards
Rainer


