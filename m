Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.43337.1629224159971628712
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 11:16:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Bd1nbgfH;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5F97C606A5;
	Tue, 17 Aug 2021 18:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629224157;
	bh=Nt/Syt1N01vVucWJuHSPq+qHV4a/XOVRjo3V7E/s3t0=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=Bd1nbgfHTwJKBKbkSTJ1C6DT4MQKmb2BiCTat2fLOkUYgHsyonJOoHzIx508mIGe/
	 3OJsAB/u3fTcYDhWnc9XfBhJiFXg531PKIbloQu1A4CwvvUcfLngLn161esmKUdLo+
	 FAcRW/Ab+40polkdt3pcyYDnzEZBiF2rh7piiVPoIm/vbO2gxpg5GhNiP7inK8Ok3K
	 zM4Anut74MkBeRw+Agev4+HhNrAdxru2XwavmWihpdbLM4tXw2vSJYaAFO/kfteqY9
	 d6wMKn1b2v4NZGrNeal88KkM9KO3fyO/p/2UT6DDHgLLRF3byfkPrCbWBX0ElqW3iC
	 BDeOjXOeLpkAA==
Subject: Re: [meta-mingw] [PATCH v3 1/5] protobuf: static link tools when generating sdk
To: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
References: <20210817150957.18246-1-okaya@kernel.org>
 <7c2cf6b1-cbe1-35f6-2fae-39d5beed930c@gmail.com>
 <6e55b59f-c9bb-5357-8b57-f0f1cc1f11fb@kernel.org>
 <98f08e04-6920-27c7-87db-12d6d390cbde@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <06fe9e3f-b99f-4d98-6e06-f38fdeac18c7@kernel.org>
Date: Tue, 17 Aug 2021 21:15:56 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <98f08e04-6920-27c7-87db-12d6d390cbde@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/17/2021 9:10 PM, Joshua Watt wrote:
>> We have use cases of both dynamic and static linkage for the
>> target build that we have not seen any issues with.
> 
> Are you building with "mingw32" as the target (not as the SDK), and it
> works there? I wonder why it only fails for the SDK build and not the
> target build? If that is truly the case, then yes I suppose it should be
> the "sdkmingw32" override. The strange thing about that (and why I
> thought it was incorrect) is that we have a few recipes that disable
> shared libraries and/or enable static with just the "mingw32" override,
> which is why I assumed it was a general limitation of MinGW, not just
> the SDK. I looked through the recipes, and it does seem more apparent
> that it is inconsistent, with a few recipe using "mingw32", a few using
> "class-nativesdk:mingw32", and a few using "sdkmingw32".
> 

I see two classes of problems based on my engagement with the mingw32.
Some recipes just don't build without using the static method for
the SDK and the target both. (abseil-cpp is one of them)

The nativesdk problem for grpc and protobuf is a silent failure. Even
though we are able to build the binary, we get a binary that just
doesn't work on windows. (crashes upon execution)

I still would like to be able to static/dynamic link grpc/protobuf for
my target using the SDK.

> 
> Anyway, please send a V4 if it needs to be changed, and I apologize for
> changing it unnecessarily :)

Will do.
