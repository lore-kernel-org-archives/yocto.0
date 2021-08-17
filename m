Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.41831.1629217774453103948
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 09:29:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=frc7dD8s;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6F60460FDA;
	Tue, 17 Aug 2021 16:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629217773;
	bh=91gtPPym0DYFUndC3BmIFExNaGRRu30Q1S4hhoYEEBc=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=frc7dD8sKZ8ZAOH21WXSZ3XO8wGdwi/HhEIobL9IVCBLnxCEKmNh+lwKsQuqN15bc
	 TRJOiv2ci5MTffUzD/rH+hOHWXK0caV//GUhW7R6LN1YHHJ8zWxG71iyrQ9Cqgm1/u
	 nC5b7GXNgnZfir3u/ip8q/OaxopR/KNSPeBp1nK4oGpy5N5YGvj44wklYqq0ZmgtEE
	 uA7v6IdAmb3gKPMIO2KObI4cVCSUbIUzzd6CZW9ZxcHH8RWgmTyyHeru2s8NeL6nMG
	 kfn8fzOWK3oUUqlkTDYntJR/EkSYJch2ylwzEemkr+cJGVCUWPOf3y4WUFkQNaNmbE
	 WQmPTf3DSG0Jw==
Subject: Re: [meta-mingw] [PATCH v3 1/5] protobuf: static link tools when generating sdk
To: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
References: <20210817150957.18246-1-okaya@kernel.org>
 <7c2cf6b1-cbe1-35f6-2fae-39d5beed930c@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <6e55b59f-c9bb-5357-8b57-f0f1cc1f11fb@kernel.org>
Date: Tue, 17 Aug 2021 19:29:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7c2cf6b1-cbe1-35f6-2fae-39d5beed930c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/17/2021 7:01 PM, Joshua Watt wrote:
> I had to clean these up a little bit and pushed them to master-next.
> Please verify that they still work for you and if not used them as a
> starting point and send a V4 patchset.

Sounds good.

What do you think about this?

My reading of the problem says that the problem only happens on win32
platforms due to how DLLs initialize the heap.

We have use cases of both dynamic and static linkage for the
target build that we have not seen any issues with.

I'd like to keep target builds same supporting both static and dynamic
build but limit the tools to static link by using sdkmingw32 instead of
mingw32.

Should I send a V4?
