Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 745BFE00CAA; Wed, 27 Apr 2016 15:10:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B4F2E00CA5
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 15:10:09 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id g133so90810127ywb.2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 15:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lz1rAL4sIDVw8RUnD4gCv3yW7B8uX5g/KlVywsCJVX0=;
	b=LtYWcUsfee40TifJhdYOeyozptTQJ2GOi8nxyuN3bslIynXjrnB2jlEMyNe7/smng8
	0auXWTF+kKtdsEXNciT9kGLQo7P+k5R3Gri/MPkDw/ozhhjtHA5lsixshCB5e0BeSeVe
	KZOhFp1+Qv55mqwXojw6rRbEvbCQQwSeDGk4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lz1rAL4sIDVw8RUnD4gCv3yW7B8uX5g/KlVywsCJVX0=;
	b=PvOdaZ+dMtEVj8/pt4KiIJIYyv63OTZg2hdxwdzKWKO6eJBirNMzZ80e20etRv/MxP
	a3fhRuUtpKOtQNoQ3wRXSXwnJerKJBUWsP7RNft8wEX52vv5YKorqKUvfv//Wi5oAW6s
	KtmUXJulKn3QBokvUu2rpHFvgvsoIzD7HeTBEId2uVIDswao/7G7pntBse4gH6AIyO9t
	xGqmV6LUtU6cDlHVg43R9J3xnmuWibcATY5YG/FeziIfdlVkv0Sq0QXqJFtHEBiikGMF
	M4o6CiGqh68Bt9/vBzl8vGT9W549NJz3boc6X8fW4KfhsY6gDtU/1ghFKwJMZv7ySl2M
	uVnA==
X-Gm-Message-State: AOPr4FVrb6jf2YhDZLRHyWn2MkIBkoXW0yvF7AstIZ0Sd4dWNAnx6DMo0oaEqj1sWw0vNg==
X-Received: by 10.13.221.142 with SMTP id g136mr7157947ywe.59.1461795008629;
	Wed, 27 Apr 2016 15:10:08 -0700 (PDT)
Received: from bill-the-cat ([2001:470:8:32a:a8f1:8916:9925:ea71])
	by smtp.gmail.com with ESMTPSA id
	c196sm3073007ywb.24.2016.04.27.15.10.07
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 27 Apr 2016 15:10:07 -0700 (PDT)
Date: Wed, 27 Apr 2016 18:10:05 -0400
From: Tom Rini <trini@konsulko.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160427221005.GA19598@bill-the-cat>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Fri, 29 Apr 2016 08:07:06 -0700
Cc: Yocto Project <yocto@yoctoproject.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Wed, 27 Apr 2016 22:10:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 27, 2016 at 10:53:52AM -0700, Khem Raj wrote:
> thanks I think most of them come to these categories. So any help in
> fixing them is welcome.
> 
> 1. kernel older than 4.4, backport needed fixed into these branches or
> move to newer kernels.
> 2. uboot dont have gcc6 compiler header files, backport the needed fixes

9b2c282b348dfe966bbba967dc7a45ce817cce50 from mainline.

> 2. meta-qt4 needs to use gnu++98
> 3. gcc6 providing its own stdlib.h in libstdc++
> 4. gcc6 swtiching to gnu++14 for C++ as default.
> 5. GPLv2-only versions of recipes are simply old will need fixing
> 
> I will take a stab at fixing the nativesdk recipes which is mostly due
> to stdlib.h issue.

Please do, I'd like to see some SDKs so I can get more U-Boot testing
done with gcc-6 :)

-- 
Tom

