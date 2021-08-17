Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.37695.1629198205834599773
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 04:03:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dB1xWKbX;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8265E60560;
	Tue, 17 Aug 2021 11:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629198204;
	bh=QWojvHGo2jXP8Fzz/X96ZewhtHbNxZyUytU0slolcns=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=dB1xWKbXBC2p+1a0PlS11yK66CEbpBCZF9ammnAKcdxyb9KDaK5cch+g2VlRYcGY/
	 2Wa6wyhFnYIzbcTNG6hUxZ5XA6ofdo/WiEyD6pomHtBQMpIuMeRnyRplx2i+VsNhDP
	 AC3nY0DbIv9n4ll5rkjZGWHUUxyYIm/PCJzFvfqdSft2uyCWwUUhcKWWXc78twP9TI
	 27mXCY+D2uDMX+x6RzmfihGe375/HyKqUGy+apE4gdRQxiG62iqVKTgUX8l/Q23hKt
	 MM4s9sG36x5pjzEg/ZyiYfGa5bXc6pV0Oi9RDq++R9e0ys/rBiQVJTFHUCSRaQ2yF7
	 t666XfOpy9Szg==
Subject: Re: [yocto] [meta-mingw] [PATCH 1/3] protobuf: static link tools when generating sdk
To: Khem Raj <raj.khem@gmail.com>
Cc: jpewhacker@gmail.com, yocto@lists.yoctoproject.org
References: <20210817013605.5760-1-okaya@kernel.org>
 <CAMKF1sqpLA2NeM1N-Ro0+aqm_yhvaD7XyxMnN_HZ1NBDm8nLgQ@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <c0dcf16f-5f21-77cc-b6a9-4f0b542d2630@kernel.org>
Date: Tue, 17 Aug 2021 14:03:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqpLA2NeM1N-Ro0+aqm_yhvaD7XyxMnN_HZ1NBDm8nLgQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 8/17/2021 6:26 AM, Khem Raj wrote:
>     +EXTRA_OECONF:append:class-nativesdk = " --disable-shared"
> 
> 
> This is not an inert change can it use some mingw specific override as well 

Change is targeting meta-mingw repository. I looked at other files
in the repo to see what the pattern is.
