Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48BD6E00D15; Wed, 25 May 2016 08:00:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB52CE00D11
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:00:52 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id b124so19374402pfb.0
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=s2e27g7jLXxguVoApyGo8eDJGIfFp6wVC6uK/jtMnCo=;
	b=uxcPOSHYSB40qZkD76BGoU6nUh3t2UUOFpV913n1UbDKtjU571Qkv9dw1iL++J6TOj
	xOyAsNg3/uwHUEI3QcFwBLnIMY9DreOpqphAYr+tz7JTplXgM/nrdHIu/JqZO+faB+gc
	PqXKPqUQHm8bwuM2QkctwZHAbaM4LX6bStN26RLU56HTWrZuACjVNONM4rxyCPuU/t6f
	ZG9MShY6Jh+nPGLwbV6XTOwpiTalro09INEXyqjMkRmYx+ecP+wu5QkY5JAt7o9LQhJJ
	FGHyuQH7y4VOe2XV5v3zI8WEoc1/zH6gBLQDkVeVca+DNnGROIf8ygFeD5NRNlWESrXr
	F3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=s2e27g7jLXxguVoApyGo8eDJGIfFp6wVC6uK/jtMnCo=;
	b=T8KXLCdvlRFRD37J8ox0jKPmpb8iuXGPjtzw5s+iwSA2zzYN3LbdaN0/bjHUB6WY5o
	obeQVftk0d1csirrwR3C48IH8tE/LbVJh35t/GaKm1vtPrs3Oq3k3Tav9DNLXuO5pv0D
	vNyhRZc4L3p+QEVVkpSqtsqoJ8Wt3Z4X72Jubm0OEGTLwCXLFtbXlwSuChWKqFplAGj6
	YA8zLqE/fzzWzkw0VKO6Y2qOq8EQ7jSOZTvCoxF7TpaWeYs7qh2FZh665tCiK+zDX7OE
	N1WRp3eDS5HQdklEqkG5gNhbCV2mb/JBjHtBsuo9MaSi/phUDENJ6iU514fMLqMEv0Bd
	w25w==
X-Gm-Message-State: ALyK8tKDGxBU885gZBxb14vQkC4SuTdPFhwoExKEedtLIVQEyV1NsaQwUPOGqWINUrZ+qORG
X-Received: by 10.98.1.6 with SMTP id 6mr6515775pfb.155.1464188451639;
	Wed, 25 May 2016 08:00:51 -0700 (PDT)
Received: from [192.168.18.4] (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.googlemail.com with ESMTPSA id
	yp9sm13499229pab.42.2016.05.25.08.00.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2016 08:00:50 -0700 (PDT)
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
From: akuster <akuster@mvista.com>
Message-ID: <5745BE14.7030402@mvista.com>
Date: Wed, 25 May 2016 08:00:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 25 May 2016 15:00:54 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Robert,


On 05/25/2016 03:18 AM, Robert P. J. Day wrote:
> 
>   specifically in the context of powerpc systems, are there any
> suggestions for an image that could be used to boot an older powerpc
> system, running completely out of ram, and using that as an install
> utility which would then be responsible for detecting/formatting a
> hard drive, creating/formatting filesystems, downloading/installing
> the OS, post-install configuration and so on?

This sounds like an installer MV has and that I have been given approval
to release (just haven’t had the time to submit it).  Its X86 centric ie
uses grub and support efi

It boots up from an iso image and runs a ncurses based interface that
allows you to select HD, create partitions and filesystem types. It will
install what ever image you built. It creates grub conf and installs it.
The installer bit is written in python.

> 
>   i realize that's a spectacularly imprecise request -- in a general
> sense, it involves just starting with a regular image, then adding
> utilities that run around doing all of the above, but if there's
> anything that already takes one most of the way there, that'd be
> great.
> 

Does this sound like something you are thing about?

regards,
Armin
>   thoughts?
> 
> rday
> 

