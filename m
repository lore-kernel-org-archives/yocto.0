Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.43674.1629225541938044573
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 11:39:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=invQ8u4S;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D90D60FD9;
	Tue, 17 Aug 2021 18:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629225540;
	bh=PFqKM75mkn+fae5udvCSh6H1nqIkZel+pHF3tQLKhnI=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=invQ8u4S8SHClCei4X8mrus1HFsEOjmuxWSY8hmL3iScFeNFlDnr142JJXGNkKV5m
	 lPmCdiNHu0rkgxhh0iSQJsDeWhHBD5z1RSWo0fWWUFQ9R+jbh7pjCt8pBg1BgvvTfU
	 Eqqrq9YH6QetF+RFDVoYVGSagOurgY8cCX1vyv+GT/PfZSLbIVJZYCphboVlWKh+XI
	 w7yE2h0jPETP2UwaZEHZLJh8KL46eNY1tv+LQ3PjHEovftCWmS8m9oZiSgzqWFESjW
	 XxJxvr22Olgzx9w5txjAG8i9UGOABXdbiiNDTPTWXTme2DOX+laN8ARAyCQ3CTpCb4
	 fQzCWXmMYolRA==
Subject: Re: [meta-mingw] [PATCH v3 1/5] protobuf: static link tools when generating sdk
To: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
References: <20210817150957.18246-1-okaya@kernel.org>
 <7c2cf6b1-cbe1-35f6-2fae-39d5beed930c@gmail.com>
 <6e55b59f-c9bb-5357-8b57-f0f1cc1f11fb@kernel.org>
 <98f08e04-6920-27c7-87db-12d6d390cbde@gmail.com>
 <06fe9e3f-b99f-4d98-6e06-f38fdeac18c7@kernel.org>
 <d387b65e-3563-3647-65b0-1266f39cd330@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <feb50abe-7a33-2952-4327-d57650d0f7dd@kernel.org>
Date: Tue, 17 Aug 2021 21:38:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <d387b65e-3563-3647-65b0-1266f39cd330@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/17/2021 9:19 PM, Joshua Watt wrote:
>> I still would like to be able to static/dynamic link grpc/protobuf for
>> my target using the SDK.
> 
> RIght, the "mingw32" override shouldn't affect what you do with the
> *target* unless your target is MinGW; I'm not sure if anyone is actually
> doing that, most SDKs target Linux for ARM, Linux for AArch64, Linux for
> x86, etc.
> 
> What is your target?
> 
> It's important to remember that the recipe can be built differently for
> the SDK vs the target :)
> 

ah, mine is both arm and arm64. No need to touch the recipe then.
